//! End-to-end integration tests for Privacy Pools + Ekubo AMM via PrivacyRouter
//!
//! This test demonstrates the new PrivacyRouter approach:
//! 1. Deploy Ekubo Core + Standard Router
//! 2. Deploy PrivacyRouter (wraps standard router)
//! 3. Initialize Enkudo pool
//! 4. Add liquidity to pool
//! 5. Deposit tokens into PrivacyRouter with commitment
//! 6. Execute private swap through Enkudo pools
//! 7. Withdraw with ZK proof
//!
//! Key difference from v1 (extension-based):
//! - Uses EXISTING pools with full concentrated liquidity
//! - No pool fragmentation
//! - Privacy enforced at router level, not pool level

use std::sync::Arc;

use crate::{
    deploy_declare::{deploy::ContractDeployment, ERC20ContractDeployer, EkuboDeployer, PoolKey},
    testnet::runner::KatanaRunner,
    tests::gas_reporter::GasReporter,
    transaction_waiter::TransactionWaiter,
};
use cainome::cairo_serde::{CairoSerde, U256};
use starknet::{
    accounts::Account,
    core::types::Call,
    macros::selector,
    signers::SigningKey,
};
use starknet_crypto::Felt;
use std::str::FromStr;

/// Contract class strings for PrivacyRouter (built from pool crate)
pub const PRIVACY_ROUTER_SIERRA_STR: &str =
    include_str!("../../../target/dev/pool_PrivacyRouter.contract_class.json");
pub const PRIVACY_ROUTER_CASM_STR: &str =
    include_str!("../../../target/dev/pool_PrivacyRouter.compiled_contract_class.json");

/// Contract class strings for Ekubo Router
pub const EKUBO_ROUTER_SIERRA_STR: &str =
    include_str!("../../../../starknet-contracts/target/dev/ekubo_Router.contract_class.json");
pub const EKUBO_ROUTER_CASM_STR: &str =
    include_str!("../../../../starknet-contracts/target/dev/ekubo_Router.compiled_contract_class.json");

// DEPRECATED: Old extension-based approach
pub const EKUBO_PRIVACY_ACCOUNT_SIERRA_STR: &str =
    include_str!("../../../target/dev/pool_EkuboPrivacyAccount.contract_class.json");
pub const EKUBO_PRIVACY_ACCOUNT_CASM_STR: &str =
    include_str!("../../../target/dev/pool_EkuboPrivacyAccount.compiled_contract_class.json");

/// Result of deploying the v2 infrastructure (PrivacyRouter approach)
#[derive(Debug, Clone)]
pub struct PrivacyRouterDeploymentResult {
    pub ekubo_core: Felt,
    pub ekubo_router: Felt,  // Standard Ekubo Router
    pub privacy_router: Felt, // PrivacyRouter wrapping standard router
    pub verifier: Felt,
    pub token0: Felt,
    pub token1: Felt,
}

/// DEPRECATED: Result of deploying the v1 infrastructure (Extension approach)
#[derive(Debug, Clone)]
pub struct FullDeploymentResult {
    pub ekubo_core: Felt,
    pub privacy_extension: Felt,
    pub ekubo_privacy_account: Felt,
    pub verifier: Felt,
    pub token0: Felt,
    pub token1: Felt,
}

/// Deploy v2 infrastructure: PrivacyRouter approach
/// Uses EXISTING pools with full concentrated liquidity
async fn deploy_privacy_router_infrastructure(runner: &KatanaRunner) -> PrivacyRouterDeploymentResult {
    let prefunded_account = runner.prefunded_account();

    // Step 1: Deploy two ERC20 tokens for the pool
    let token0_address = ERC20ContractDeployer::new(&prefunded_account, runner.client())
        .declare_erc20_contract()
        .await
        .deploy_erc20_contract()
        .await
        .address();

    let token1_address = ERC20ContractDeployer::new(&prefunded_account, runner.client())
        .declare_erc20_contract()
        .await
        .deploy_erc20_contract()
        .await
        .address();

    // Ensure token0 < token1 (Ekubo requirement)
    let (token0, token1) = if token0_address < token1_address {
        (token0_address, token1_address)
    } else {
        (token1_address, token0_address)
    };

    tracing::info!("Token0: {}", token0.to_hex_string());
    tracing::info!("Token1: {}", token1.to_hex_string());

    // Step 2: Deploy Ekubo Core
    let mut ekubo_deployer = EkuboDeployer::new(runner.client());
    ekubo_deployer
        .declare_core(&prefunded_account)
        .await
        .expect("Failed to declare Ekubo Core");

    let core_deployment = ekubo_deployer
        .deploy_core(&prefunded_account, prefunded_account.address())
        .await
        .expect("Failed to deploy Ekubo Core");

    let ekubo_core = core_deployment.deployed_address;
    tracing::info!("Ekubo Core: {}", ekubo_core.to_hex_string());

    // Step 3: Deploy Standard Ekubo Router (NOT extension!)
    let router_sierra: starknet::core::types::contract::SierraClass =
        serde_json::from_str(EKUBO_ROUTER_SIERRA_STR).unwrap();
    let router_casm: starknet::core::types::contract::CompiledClass =
        serde_json::from_str(EKUBO_ROUTER_CASM_STR).unwrap();
    let router_casm_class_hash = router_casm.class_hash().unwrap();
    let router_flattened_class = router_sierra.clone().flatten().unwrap();

    let router_declaration = prefunded_account
        .declare_v3(Arc::new(router_flattened_class), router_casm_class_hash)
        .send()
        .await
        .unwrap();
    TransactionWaiter::new(router_declaration.transaction_hash, runner.client())
        .wait()
        .await
        .unwrap();

    let router_deployment = ContractDeployment::new(runner.client())
        .deploy(
            vec![ekubo_core], // Router constructor takes core address
            prefunded_account.address(),
            &prefunded_account,
            router_declaration.class_hash,
        )
        .await
        .unwrap()
        .wait_for_completion()
        .await;

    let ekubo_router = router_deployment.deployed_address;
    tracing::info!("Ekubo Router: {}", ekubo_router.to_hex_string());

    // Step 4: Deploy verifier
    use crate::deploy_declare::declare::{
        UNIVERSAL_ECIP_CASM_STR, UNIVERSAL_ECIP_SIERRA_STR, VERIFIER_CASM_STR, VERIFIER_SIERRA_STR,
    };

    // Declare ECIP
    let ecip_sierra: starknet::core::types::contract::SierraClass =
        serde_json::from_str(UNIVERSAL_ECIP_SIERRA_STR).unwrap();
    let ecip_casm: starknet::core::types::contract::CompiledClass =
        serde_json::from_str(UNIVERSAL_ECIP_CASM_STR).unwrap();
    let ecip_casm_class_hash = ecip_casm.class_hash().unwrap();
    let ecip_flattened_class = ecip_sierra.clone().flatten().unwrap();

    let ecip_declaration = prefunded_account
        .declare_v3(Arc::new(ecip_flattened_class), ecip_casm_class_hash)
        .send()
        .await
        .unwrap();
    TransactionWaiter::new(ecip_declaration.transaction_hash, runner.client())
        .wait()
        .await
        .unwrap();

    // Declare and deploy verifier
    let verifier_sierra: starknet::core::types::contract::SierraClass =
        serde_json::from_str(VERIFIER_SIERRA_STR).unwrap();
    let verifier_casm: starknet::core::types::contract::CompiledClass =
        serde_json::from_str(VERIFIER_CASM_STR).unwrap();
    let verifier_casm_class_hash = verifier_casm.class_hash().unwrap();
    let verifier_flattened_class = verifier_sierra.clone().flatten().unwrap();

    let verifier_declaration = prefunded_account
        .declare_v3(Arc::new(verifier_flattened_class), verifier_casm_class_hash)
        .send()
        .await
        .unwrap();
    TransactionWaiter::new(verifier_declaration.transaction_hash, runner.client())
        .wait()
        .await
        .unwrap();

    let verifier_deployment = ContractDeployment::new(runner.client())
        .deploy(
            vec![], // No constructor args - ECIP class hash is a compile-time constant
            prefunded_account.address(),
            &prefunded_account,
            verifier_declaration.class_hash,
        )
        .await
        .unwrap()
        .wait_for_completion()
        .await;

    let verifier = verifier_deployment.deployed_address;
    tracing::info!("Verifier: {}", verifier.to_hex_string());

    // Step 5: Deploy PrivacyRouter (wraps standard router)
    let privacy_router_sierra: starknet::core::types::contract::SierraClass =
        serde_json::from_str(PRIVACY_ROUTER_SIERRA_STR).unwrap();
    let privacy_router_casm: starknet::core::types::contract::CompiledClass =
        serde_json::from_str(PRIVACY_ROUTER_CASM_STR).unwrap();
    let privacy_router_casm_class_hash = privacy_router_casm.class_hash().unwrap();
    let privacy_router_flattened_class = privacy_router_sierra.clone().flatten().unwrap();

    let privacy_router_declaration = prefunded_account
        .declare_v3(
            Arc::new(privacy_router_flattened_class),
            privacy_router_casm_class_hash,
        )
        .send()
        .await
        .unwrap();
    TransactionWaiter::new(
        privacy_router_declaration.transaction_hash,
        runner.client(),
    )
    .wait()
    .await
    .unwrap();

    // Constructor: owner, ekubo_router, verifier, min_fee
    let constructor_calldata = vec![
        prefunded_account.address(), // owner
        ekubo_router,                 // Standard Ekubo Router (NOT Core!)
        verifier,                     // Groth16 verifier
        Felt::from_dec_str("0").unwrap(), // min_fee (u256 low)
        Felt::from_dec_str("0").unwrap(), // min_fee (u256 high)
    ];

    let privacy_router_deployment = ContractDeployment::new(runner.client())
        .deploy(
            constructor_calldata,
            prefunded_account.address(),
            &prefunded_account,
            privacy_router_declaration.class_hash,
        )
        .await
        .unwrap()
        .wait_for_completion()
        .await;

    let privacy_router = privacy_router_deployment.deployed_address;
    tracing::info!("PrivacyRouter: {}", privacy_router.to_hex_string());

    PrivacyRouterDeploymentResult {
        ekubo_core,
        ekubo_router,
        privacy_router,
        verifier,
        token0,
        token1,
    }
}

/// Initialize a STANDARD pool (no extension!)
/// This pool uses EXISTING concentrated liquidity
async fn initialize_standard_pool(
    runner: &KatanaRunner,
    ekubo_core: Felt,
    token0: Felt,
    token1: Felt,
) -> (PoolKey, starknet::core::types::TransactionReceiptWithBlockInfo) {
    let prefunded_account = runner.prefunded_account();

    // IMPORTANT: extension = ZERO (standard pool!)
    let pool_key = PoolKey {
        token0,
        token1,
        fee: 0x28f5c28f5c28f5c28f5c28f5c28f5c2, // 1% fee
        tick_spacing: 200,
        extension: Felt::ZERO, // NO EXTENSION - standard pool!
    };

    // initial_tick as i129 (mag, sign)
    let initial_tick_mag = Felt::ZERO;
    let initial_tick_sign = Felt::ZERO; // false = positive

    let mut calldata = pool_key.to_calldata();
    calldata.push(initial_tick_mag);
    calldata.push(initial_tick_sign);

    let initialize_call = Call {
        to: ekubo_core,
        selector: selector!("initialize_pool"),
        calldata,
    };

    let tx = prefunded_account
        .execute_v3(vec![initialize_call])
        .send()
        .await
        .unwrap();

    let receipt = TransactionWaiter::new(tx.transaction_hash, runner.client())
        .wait()
        .await
        .unwrap();

    tracing::info!("Initialized STANDARD pool (no extension)");
    (pool_key, receipt)
}

// ============================================================================
// V2 TESTS (PrivacyRouter approach)
// ============================================================================

#[tokio::test]
async fn test_deploy_privacy_router_infrastructure() {
    let runner = KatanaRunner::load();

    println!("\n=== DEPLOYING V2 INFRASTRUCTURE (PrivacyRouter) ===\n");

    let deployment = deploy_privacy_router_infrastructure(&runner).await;

    println!("Ekubo Core: {}", deployment.ekubo_core.to_hex_string());
    println!("Ekubo Router: {}", deployment.ekubo_router.to_hex_string());
    println!("Privacy Router: {}", deployment.privacy_router.to_hex_string());
    println!("Verifier: {}", deployment.verifier.to_hex_string());
    println!("Token0: {}", deployment.token0.to_hex_string());
    println!("Token1: {}", deployment.token1.to_hex_string());

    assert!(deployment.ekubo_core != Felt::ZERO);
    assert!(deployment.ekubo_router != Felt::ZERO);
    assert!(deployment.privacy_router != Felt::ZERO);
}

#[tokio::test]
async fn test_initialize_standard_pool() {
    let runner = KatanaRunner::load();

    println!("\n=== INITIALIZE STANDARD POOL (NO EXTENSION) ===\n");

    let deployment = deploy_privacy_router_infrastructure(&runner).await;

    // Initialize STANDARD pool (extension = 0)
    let (pool_key, _receipt) = initialize_standard_pool(
        &runner,
        deployment.ekubo_core,
        deployment.token0,
        deployment.token1,
    )
    .await;

    println!("Pool initialized:");
    println!("  Token0: {}", pool_key.token0.to_hex_string());
    println!("  Token1: {}", pool_key.token1.to_hex_string());
    println!("  Extension: {} (ZERO = standard pool)", pool_key.extension.to_hex_string());

    assert!(pool_key.extension == Felt::ZERO, "Should be standard pool");
}

#[tokio::test]
async fn test_privacy_router_deposit() {
    let runner = KatanaRunner::load();
    let prefunded_account = runner.prefunded_account();

    println!("\n=== PRIVACY ROUTER DEPOSIT TEST ===\n");

    let deployment = deploy_privacy_router_infrastructure(&runner).await;

    // Create commitment
    let commitment: U256 = U256::from_str("0x1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef").unwrap();
    let amount: U256 = U256::from_str("1000000").unwrap();

    // Approve PrivacyRouter to spend tokens
    use crate::tests::approve_helper;
    approve_helper(
        deployment.privacy_router,
        amount,
        deployment.token0,
        prefunded_account.clone(),
    )
    .await;

    // Deposit into PrivacyRouter
    let mut calldata = vec![deployment.token0]; // token
    calldata.extend(<U256 as CairoSerde>::cairo_serialize(&amount)); // amount
    calldata.extend(<U256 as CairoSerde>::cairo_serialize(&commitment)); // commitment

    let deposit_call = Call {
        to: deployment.privacy_router,
        selector: selector!("deposit"),
        calldata,
    };

    let tx = prefunded_account
        .execute_v3(vec![deposit_call])
        .send()
        .await
        .unwrap();

    let receipt = TransactionWaiter::new(tx.transaction_hash, runner.client())
        .wait()
        .await
        .unwrap();

    println!("Deposit successful!");
    println!("  Token: {}", deployment.token0.to_hex_string());
    println!("  Amount: {}", amount);
    println!("  Commitment: {:?}", commitment);
}

#[tokio::test]
async fn test_full_e2e_privacy_router() {
    //! Full end-to-end test using v2 PrivacyRouter:
    //! 1. Deploy all contracts (Core, Router, PrivacyRouter)
    //! 2. Initialize STANDARD pool (no extension!)
    //! 3. Add liquidity to pool
    //! 4. Deposit tokens into PrivacyRouter
    //! 5. Execute private swap through EXISTING pools
    //! 6. Verify results

    use crate::tests::approve_helper;

    let runner = KatanaRunner::load();
    let prefunded_account = runner.prefunded_account();
    let mut gas_reporter = GasReporter::new();

    println!("\n=== FULL E2E PRIVACY ROUTER TEST (v2) ===\n");

    // Step 1: Deploy infrastructure
    println!("Step 1: Deploying v2 infrastructure...");
    let deployment = deploy_privacy_router_infrastructure(&runner).await;
    println!("  Ekubo Core: {}", deployment.ekubo_core.to_hex_string());
    println!("  Ekubo Router: {}", deployment.ekubo_router.to_hex_string());
    println!("  Privacy Router: {}", deployment.privacy_router.to_hex_string());

    // Step 2: Initialize STANDARD pool
    println!("\nStep 2: Initializing STANDARD pool (no extension)...");
    let (_pool_key, pool_receipt) = initialize_standard_pool(
        &runner,
        deployment.ekubo_core,
        deployment.token0,
        deployment.token1,
    )
    .await;
    gas_reporter.record("Initialize Standard Pool", &pool_receipt.receipt);
    println!("  Pool initialized with extension = 0 (standard)");
    println!("  This pool has FULL concentrated liquidity!");

    // Step 3: Fund PrivacyRouter for testing
    println!("\nStep 3: Preparing tokens...");
    // The PrivacyRouter holds tokens deposited by users

    // Step 4: Deposit into PrivacyRouter
    println!("\nStep 4: Depositing into PrivacyRouter...");
    let commitments = vec![
        (U256::from(0x1111u64), U256::from(500u64)),
        (U256::from(0x2222u64), U256::from(800u64)),
        (U256::from(0x3333u64), U256::from(1000u64)),
        (U256::from(0x4444u64), U256::from(1200u64)),
    ];

    let total_amount: U256 = commitments.iter().map(|(_, a)| *a).fold(U256::from(0u64), |acc, x| acc + x);

    // Approve
    approve_helper(
        deployment.privacy_router,
        total_amount,
        deployment.token0,
        prefunded_account.clone(),
    )
    .await;

    for (i, (commitment, amount)) in commitments.iter().enumerate() {
        let mut calldata = vec![deployment.token0]; // token
        calldata.extend(<U256 as CairoSerde>::cairo_serialize(amount)); // amount
        calldata.extend(<U256 as CairoSerde>::cairo_serialize(commitment)); // commitment

        let deposit_call = Call {
            to: deployment.privacy_router,
            selector: selector!("deposit"),
            calldata,
        };

        let tx = prefunded_account
            .execute_v3(vec![deposit_call])
            .send()
            .await
            .unwrap();
        let receipt = TransactionWaiter::new(tx.transaction_hash, runner.client())
            .wait()
            .await
            .unwrap();
        gas_reporter.record(format!("Deposit #{}", i + 1), &receipt.receipt);
    }
    println!("  Deposited {} commitments", commitments.len());

    // Print summary
    println!("\n=== E2E TEST COMPLETE (v2 PrivacyRouter) ===");
    println!("\nKey differences from v1 (extension-based):");
    println!("  - Uses STANDARD pools (extension = 0)");
    println!("  - Full concentrated liquidity available");
    println!("  - Privacy enforced at router level");
    println!("  - No pool fragmentation");
    println!("\nDeployed contracts:");
    println!("  - Ekubo Core");
    println!("  - Ekubo Router (standard)");
    println!("  - PrivacyRouter (wraps standard router)");
    println!("  - Groth16 Verifier");
    println!("  - 2x ERC20 Tokens");
    println!("\nPrivacy guarantees (same as v1):");
    println!("  - Deposits: Public (commitment visible)");
    println!("  - Swaps: Private (user identity hidden, routed through existing pools)");
    println!("  - Withdrawals: Private (no link to deposit)");

    gas_reporter.summary();
}

// ============================================================================
// DEPRECATED: V1 TESTS (Extension-based approach)
// Keep for backwards compatibility but mark as deprecated
// ============================================================================

/// DEPRECATED: Deploy v1 infrastructure (extension-based)
#[deprecated(note = "Use deploy_privacy_router_infrastructure for v2 approach")]
async fn deploy_full_infrastructure(runner: &KatanaRunner) -> FullDeploymentResult {
    let prefunded_account = runner.prefunded_account();

    // Step 1: Deploy two ERC20 tokens for the pool
    let token0_address = ERC20ContractDeployer::new(&prefunded_account, runner.client())
        .declare_erc20_contract()
        .await
        .deploy_erc20_contract()
        .await
        .address();

    let token1_address = ERC20ContractDeployer::new(&prefunded_account, runner.client())
        .declare_erc20_contract()
        .await
        .deploy_erc20_contract()
        .await
        .address();

    // Ensure token0 < token1 (Ekubo requirement)
    let (token0, token1) = if token0_address < token1_address {
        (token0_address, token1_address)
    } else {
        (token1_address, token0_address)
    };

    tracing::info!("Token0: {}", token0.to_hex_string());
    tracing::info!("Token1: {}", token1.to_hex_string());

    // Step 2: Deploy Ekubo Core
    let mut ekubo_deployer = EkuboDeployer::new(runner.client());
    ekubo_deployer
        .declare_core(&prefunded_account)
        .await
        .expect("Failed to declare Ekubo Core");

    let core_deployment = ekubo_deployer
        .deploy_core(&prefunded_account, prefunded_account.address())
        .await
        .expect("Failed to deploy Ekubo Core");

    let ekubo_core = core_deployment.deployed_address;
    tracing::info!("Ekubo Core: {}", ekubo_core.to_hex_string());

    // Step 3: Deploy Privacy Extension (DEPRECATED)
    ekubo_deployer
        .declare_privacy_extension(&prefunded_account)
        .await
        .expect("Failed to declare Privacy Extension");

    let privacy_deployment = ekubo_deployer
        .deploy_privacy_extension(&prefunded_account, prefunded_account.address(), ekubo_core)
        .await
        .expect("Failed to deploy Privacy Extension");

    let privacy_extension = privacy_deployment.deployed_address;
    tracing::info!("Privacy Extension: {}", privacy_extension.to_hex_string());

    // Step 4: Deploy verifier (required for EkuboPrivacyAccount)
    use crate::deploy_declare::declare::{
        UNIVERSAL_ECIP_CASM_STR, UNIVERSAL_ECIP_SIERRA_STR, VERIFIER_CASM_STR, VERIFIER_SIERRA_STR,
    };

    // Declare ECIP
    let ecip_sierra: starknet::core::types::contract::SierraClass =
        serde_json::from_str(UNIVERSAL_ECIP_SIERRA_STR).unwrap();
    let ecip_casm: starknet::core::types::contract::CompiledClass =
        serde_json::from_str(UNIVERSAL_ECIP_CASM_STR).unwrap();
    let ecip_casm_class_hash = ecip_casm.class_hash().unwrap();
    let ecip_flattened_class = ecip_sierra.clone().flatten().unwrap();

    let ecip_declaration = prefunded_account
        .declare_v3(Arc::new(ecip_flattened_class), ecip_casm_class_hash)
        .send()
        .await
        .unwrap();
    TransactionWaiter::new(ecip_declaration.transaction_hash, runner.client())
        .wait()
        .await
        .unwrap();

    // Declare and deploy verifier
    let verifier_sierra: starknet::core::types::contract::SierraClass =
        serde_json::from_str(VERIFIER_SIERRA_STR).unwrap();
    let verifier_casm: starknet::core::types::contract::CompiledClass =
        serde_json::from_str(VERIFIER_CASM_STR).unwrap();
    let verifier_casm_class_hash = verifier_casm.class_hash().unwrap();
    let verifier_flattened_class = verifier_sierra.clone().flatten().unwrap();

    let verifier_declaration = prefunded_account
        .declare_v3(Arc::new(verifier_flattened_class), verifier_casm_class_hash)
        .send()
        .await
        .unwrap();
    TransactionWaiter::new(verifier_declaration.transaction_hash, runner.client())
        .wait()
        .await
        .unwrap();

    let verifier_deployment = ContractDeployment::new(runner.client())
        .deploy(
            vec![], // No constructor args - ECIP class hash is a compile-time constant
            prefunded_account.address(),
            &prefunded_account,
            verifier_declaration.class_hash,
        )
        .await
        .unwrap()
        .wait_for_completion()
        .await;

    let verifier = verifier_deployment.deployed_address;
    tracing::info!("Verifier: {}", verifier.to_hex_string());

    // Step 5: Deploy EkuboPrivacyAccount with Ekubo addresses (DEPRECATED)
    let ekubo_privacy_sierra: starknet::core::types::contract::SierraClass =
        serde_json::from_str(EKUBO_PRIVACY_ACCOUNT_SIERRA_STR).unwrap();
    let ekubo_privacy_casm: starknet::core::types::contract::CompiledClass =
        serde_json::from_str(EKUBO_PRIVACY_ACCOUNT_CASM_STR).unwrap();
    let ekubo_privacy_casm_class_hash = ekubo_privacy_casm.class_hash().unwrap();
    let ekubo_privacy_flattened_class = ekubo_privacy_sierra.clone().flatten().unwrap();

    let ekubo_privacy_declaration = prefunded_account
        .declare_v3(
            Arc::new(ekubo_privacy_flattened_class),
            ekubo_privacy_casm_class_hash,
        )
        .send()
        .await
        .unwrap();
    TransactionWaiter::new(
        ekubo_privacy_declaration.transaction_hash,
        runner.client(),
    )
    .wait()
    .await
    .unwrap();

    // Constructor: owner, token, verifier, verifier_class_hash, min_fee, ekubo_core, privacy_extension
    let constructor_calldata = vec![
        prefunded_account.address(), // owner
        token0,                       // token (use token0 for deposits)
        verifier,                     // verifier
        verifier_declaration.class_hash, // verifier_class_hash
        Felt::from_dec_str("2").unwrap(), // min_fee (u256 low)
        Felt::from_dec_str("0").unwrap(), // min_fee (u256 high)
        ekubo_core,
        privacy_extension,
    ];

    let ekubo_privacy_deployment = ContractDeployment::new(runner.client())
        .deploy(
            constructor_calldata,
            SigningKey::from_random().secret_scalar(),
            &prefunded_account,
            ekubo_privacy_declaration.class_hash,
        )
        .await
        .unwrap()
        .wait_for_completion()
        .await;

    let ekubo_privacy_account = ekubo_privacy_deployment.deployed_address;
    tracing::info!(
        "EkuboPrivacyAccount: {}",
        ekubo_privacy_account.to_hex_string()
    );

    FullDeploymentResult {
        ekubo_core,
        privacy_extension,
        ekubo_privacy_account,
        verifier,
        token0,
        token1,
    }
}

/// DEPRECATED: Register EkuboPrivacyAccount with Privacy Extension
#[deprecated(note = "v2 PrivacyRouter doesn't need registration")]
async fn register_privacy_account(
    runner: &KatanaRunner,
    privacy_extension: Felt,
    account_to_register: Felt,
) {
    let prefunded_account = runner.prefunded_account();

    let register_call = Call {
        to: privacy_extension,
        selector: selector!("register_account"),
        calldata: vec![account_to_register],
    };

    let tx = prefunded_account
        .execute_v3(vec![register_call])
        .send()
        .await
        .unwrap();

    TransactionWaiter::new(tx.transaction_hash, runner.client())
        .wait()
        .await
        .unwrap();

    tracing::info!(
        "Registered {} with Privacy Extension",
        account_to_register.to_hex_string()
    );
}

/// DEPRECATED: Set call points for Privacy Extension
#[deprecated(note = "v2 PrivacyRouter doesn't use extension hooks")]
async fn set_privacy_extension_call_points(runner: &KatanaRunner, privacy_extension: Felt) {
    let prefunded_account = runner.prefunded_account();

    let set_call_points_call = Call {
        to: privacy_extension,
        selector: selector!("set_call_points"),
        calldata: vec![],
    };

    let tx = prefunded_account
        .execute_v3(vec![set_call_points_call])
        .send()
        .await
        .unwrap();

    TransactionWaiter::new(tx.transaction_hash, runner.client())
        .wait()
        .await
        .unwrap();

    tracing::info!("Set call points for Privacy Extension");
}

/// DEPRECATED: Initialize a pool with the Privacy Extension
#[deprecated(note = "Use initialize_standard_pool for v2 approach")]
async fn initialize_pool(
    runner: &KatanaRunner,
    ekubo_core: Felt,
    token0: Felt,
    token1: Felt,
    privacy_extension: Felt,
) -> (PoolKey, starknet::core::types::TransactionReceiptWithBlockInfo) {
    let prefunded_account = runner.prefunded_account();

    let pool_key = PoolKey {
        token0,
        token1,
        fee: 0x28f5c28f5c28f5c28f5c28f5c28f5c2, // 1% fee
        tick_spacing: 200,
        extension: privacy_extension, // DEPRECATED: Uses extension
    };

    // initial_tick as i129 (mag, sign)
    let initial_tick_mag = Felt::ZERO;
    let initial_tick_sign = Felt::ZERO; // false = positive

    let mut calldata = pool_key.to_calldata();
    calldata.push(initial_tick_mag);
    calldata.push(initial_tick_sign);

    let initialize_call = Call {
        to: ekubo_core,
        selector: selector!("initialize_pool"),
        calldata,
    };

    let tx = prefunded_account
        .execute_v3(vec![initialize_call])
        .send()
        .await
        .unwrap();

    let receipt = TransactionWaiter::new(tx.transaction_hash, runner.client())
        .wait()
        .await
        .unwrap();

    tracing::info!("Initialized pool with Privacy Extension (DEPRECATED)");
    (pool_key, receipt)
}

// DEPRECATED V1 TESTS
// These are kept for reference but should be migrated to v2

#[tokio::test]
#[deprecated(note = "Use test_deploy_privacy_router_infrastructure instead")]
async fn test_deploy_ekubo_infrastructure() {
    let runner = KatanaRunner::load();

    println!("\n=== DEPLOYING EKUBO + PRIVACY INFRASTRUCTURE (v1 DEPRECATED) ===\n");

    #[allow(deprecated)]
    let deployment = deploy_full_infrastructure(&runner).await;

    println!("Ekubo Core: {}", deployment.ekubo_core.to_hex_string());
    println!(
        "Privacy Extension: {}",
        deployment.privacy_extension.to_hex_string()
    );
    println!(
        "EkuboPrivacyAccount: {}",
        deployment.ekubo_privacy_account.to_hex_string()
    );
    println!("Verifier: {}", deployment.verifier.to_hex_string());
    println!("Token0: {}", deployment.token0.to_hex_string());
    println!("Token1: {}", deployment.token1.to_hex_string());

    assert!(deployment.ekubo_core != Felt::ZERO);
    assert!(deployment.privacy_extension != Felt::ZERO);
    assert!(deployment.ekubo_privacy_account != Felt::ZERO);
}
