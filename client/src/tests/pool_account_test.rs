use std::{fmt::Debug, str::FromStr};

use crate::{
    circuit::{CircuitInputCreator, Commitment},
    deploy_declare::declare::{
        ERC20_CASM_STR, ERC20_SIERRA_STR, UNIVERSAL_ECIP_CASM_STR, UNIVERSAL_ECIP_SIERRA_STR,
        VERIFIER_CASM_STR, VERIFIER_SIERRA_STR,
    },
    prover::Prover,
};
use cainome::cairo_serde::{ByteArray, CairoSerde, U256};
use merkle::{hybrid::HybridMerkleTree, traits::RootMerkleTree};
use openrpc_testgen::utils::{
    get_deployed_contract_address::get_contract_address,
    starknet_hive::StarknetHive,
    v7::{
        accounts::{
            account::{Account, ConnectedAccount},
            call::Call,
            creation::helpers::get_chain_id,
            single_owner::{ExecutionEncoding, SingleOwnerAccount},
        },
        contract::{factory::ContractFactory, CompiledClass, HashAndFlatten, SierraClass},
        endpoints::utils::{get_selector_from_name, wait_for_sent_transaction},
        providers::jsonrpc::{HttpTransport, JsonRpcClient},
        signers::{key_pair::SigningKey, local_wallet::LocalWallet},
    },
};
use starknet::providers::Url;
use starknet_crypto::Felt;
use starknet_types_rpc::{BlockId, BlockTag};

pub const POOL_ACCOUNT_SIERRA_STR: &str =
    include_str!("../../../target/dev/pool_PoolAccount.contract_class.json");
pub const POOL_ACCOUNT_CASM_STR: &str =
    include_str!("../../../target/dev/pool_PoolAccount.compiled_contract_class.json");

const STRK: Felt =
    Felt::from_hex_unchecked("0x4718F5A0FC34CC1AF16A1CDEE98FFB20C31F5CD61D6AB07201858F4287C938D");

#[tokio::test]
#[ignore] // Uses openrpc_testgen which requires different setup
async fn test_pool_account_simple() {
    let node_url = Url::parse("http://localhost:5050").unwrap();
    let address = Felt::from_hex_unchecked(
        "0x064b48806902a367c8598f4f95c305e8c1a1acba5f082d294a43793113115691",
    );
    let private_key = Felt::from_hex_unchecked(
        "0x0000000000000000000000000000000071d7bb07b9a64f6f78ac4c816aff4da9",
    );
    let class_hash = Felt::from_hex_unchecked(
        "0x061dac032f228abef9c6626f995015233097ae253a7f72d68552db02f2971b8f",
    );

    let provider = JsonRpcClient::new(HttpTransport::new(node_url.clone()));
    let chain_id = get_chain_id(&provider).await.unwrap();
    let paymaster_private_key = SigningKey::from_secret_scalar(private_key);
    let mut paymaster_account = SingleOwnerAccount::new(
        provider.clone(),
        LocalWallet::from(paymaster_private_key),
        address,
        chain_id,
        ExecutionEncoding::New,
    );
    paymaster_account.set_block_id(BlockId::Tag(BlockTag::Pending));

    // StarknetHive initialization
    let hive = StarknetHive::new(node_url, address, private_key, class_hash)
        .await
        .unwrap();

    let erc20_class_hash = declare(&hive, ERC20_SIERRA_STR, ERC20_CASM_STR).await;
    dbg!(erc20_class_hash);
    let name = <ByteArray as CairoSerde>::cairo_serialize(&ByteArray {
        data: vec![],
        pending_word: Felt::ZERO,
        pending_word_len: 0,
    });
    let symbol = <ByteArray as CairoSerde>::cairo_serialize(&ByteArray {
        data: vec![],
        pending_word: Felt::ZERO,
        pending_word_len: 0,
    });
    let fixed_suply = <U256 as CairoSerde>::cairo_serialize(&U256::from_str("1000000").unwrap());
    let recipient = hive.address();
    let owner = hive.address();
    let mut calldata = vec![];
    calldata.extend(&name);
    calldata.extend(symbol);
    calldata.extend(fixed_suply);
    calldata.push(recipient);
    calldata.push(owner);
    let erc20_address = deploy(&hive, erc20_class_hash, calldata).await;
    dbg!(erc20_address);

    let ecip_class_hash = declare(&hive, UNIVERSAL_ECIP_SIERRA_STR, UNIVERSAL_ECIP_CASM_STR).await;
    dbg!(ecip_class_hash);
    let verifier_class_hash = declare(&hive, VERIFIER_SIERRA_STR, VERIFIER_CASM_STR).await;
    dbg!(verifier_class_hash);
    let verifier_address = deploy(&hive, verifier_class_hash, vec![]).await;
    dbg!(verifier_address);
    let pool_class_hash = declare(&hive, POOL_ACCOUNT_SIERRA_STR, POOL_ACCOUNT_CASM_STR).await;
    // Constructor: owner, token, verifier, verifier_class_hash, min_fee
    // Note: verifier_class_hash is needed for __validate__ (library calls in validation mode)
    let pool_address = deploy(
        &hive,
        pool_class_hash,
        vec![
            address,
            erc20_address,
            verifier_address,
            verifier_class_hash, // verifier_class_hash (needed for validation mode)
            Felt::from_dec_str("2").unwrap(), // min_fee (u256 low)
            Felt::from_dec_str("0").unwrap(), // min_fee (u256 high)
        ],
    )
    .await;
    dbg!(pool_address);

    let transfer_amount = Felt::from_hex("0xfffffffffffffff").unwrap();
    let transfer_execution = paymaster_account
        .execute_v3(vec![Call {
            to: STRK,
            selector: get_selector_from_name("transfer").unwrap(),
            calldata: vec![pool_address, transfer_amount, Felt::ZERO],
        }])
        .send()
        .await
        .unwrap();
    wait_for_sent_transaction(transfer_execution.transaction_hash, &paymaster_account)
        .await
        .unwrap();

    let my_commitment = Commitment::new(12345u32, 54321u32, 100u32);

    let commitments = vec![
        Commitment::new(0u32, 0u32, 100u32),
        Commitment::new(1u32, 1u32, 800u32),
        my_commitment.clone(),
        Commitment::new(3u32, 3u32, 1000u32),
    ];

    let associated_set_commitments = vec![
        Commitment::new(514u32, 876u32, 100u32),
        Commitment::new(1u32, 1u32, 800u32),
        my_commitment.clone(),
        Commitment::new(3u32, 3u32, 1000u32),
    ];

    approve(&hive, erc20_address, pool_address).await;

    for commitment in commitments.iter() {
        deposit(&hive, pool_address, commitment).await;
    }
    for commitment in associated_set_commitments.iter() {
        deposit(&hive, pool_address, commitment).await;
    }

    withdraw(
        pool_address,
        my_commitment,
        commitments,
        associated_set_commitments,
    )
    .await;
}

async fn declare<T: Account + Debug + ConnectedAccount + Sync>(
    account: T,
    sierra: &str,
    casm: &str,
) -> Felt {
    let casm_class_hash = serde_json::from_str::<CompiledClass>(casm)
        .unwrap()
        .class_hash()
        .map_err(|e| e.to_string())
        .unwrap();

    // We need to flatten the ABI into a string first
    let flattened_class = serde_json::from_str::<SierraClass>(sierra)
        .unwrap()
        .clone()
        .flatten()
        .map_err(|e| e.to_string())
        .unwrap();

    let declare_result = account
        .declare_v3(flattened_class, casm_class_hash)
        .send()
        .await
        .unwrap();

    declare_result.class_hash
}

async fn deploy(hive: &StarknetHive, class_hash: Felt, calldata: Vec<Felt>) -> Felt {
    let address = hive.address();
    let deployment = ContractFactory::new(class_hash, &hive)
        .deploy_v3(calldata, address, false)
        .send()
        .await
        .unwrap();

    wait_for_sent_transaction(deployment.transaction_hash, &hive.account)
        .await
        .unwrap();

    let deployed_contract_address =
        get_contract_address(hive.provider(), deployment.transaction_hash)
            .await
            .unwrap();

    deployed_contract_address
}

async fn approve(hive: &StarknetHive, erc20_address: Felt, pool_address: Felt) {
    let approve_call = Call {
        to: erc20_address,
        selector: get_selector_from_name("approve").unwrap(),
        calldata: vec![
            pool_address,
            Felt::from_dec_str("1000000").unwrap(),
            Felt::from_dec_str("0").unwrap(),
        ],
    };
    let prepared_execution_v3 = hive.execute_v3(vec![approve_call]).prepare().await.unwrap();

    let signature = hive
        .sign_execution_v3(prepared_execution_v3.get_raw_execution().await, false)
        .await
        .unwrap();

    let invoke_result_custom_signature = prepared_execution_v3
        .send_with_custom_signature(signature)
        .await
        .unwrap();

    let tx = wait_for_sent_transaction(
        invoke_result_custom_signature.transaction_hash,
        &hive.account,
    )
    .await
    .unwrap();

    dbg!(tx);
}

async fn deposit(hive: &StarknetHive, pool_address: Felt, commitment: &Commitment) {
    let mut calldata = vec![];
    calldata.extend(<U256 as CairoSerde>::cairo_serialize(
        &commitment.secret_and_nullifier_hash(),
    ));
    calldata.extend(<U256 as CairoSerde>::cairo_serialize(&commitment.amount));
    let approve_call = Call {
        to: pool_address,
        selector: get_selector_from_name("deposit").unwrap(),
        calldata: calldata,
    };
    let prepared_execution_v3 = hive.execute_v3(vec![approve_call]).prepare().await.unwrap();

    let signature = hive
        .sign_execution_v3(prepared_execution_v3.get_raw_execution().await, false)
        .await
        .unwrap();

    let invoke_result_custom_signature = prepared_execution_v3
        .send_with_custom_signature(signature)
        .await
        .unwrap();

    let tx = wait_for_sent_transaction(
        invoke_result_custom_signature.transaction_hash,
        &hive.account,
    )
    .await
    .unwrap();

    dbg!(tx);
}

async fn withdraw(
    pool_address: Felt,
    commitment: Commitment,
    commitments: Vec<Commitment>,
    associated_set_commitments: Vec<Commitment>,
) {
    let tree = HybridMerkleTree::contract_height_with_leafs(
        commitments.iter().map(Commitment::hash).collect(),
    );
    let associated_set_tree = HybridMerkleTree::contract_height_with_leafs(
        associated_set_commitments
            .iter()
            .map(Commitment::hash)
            .collect(),
    );
    let another_address = Felt::from_hex_unchecked(
        "0x078662e7352d062084b0010068b99288486c2d8b914f6e2a55ce945f8792c8b1",
    );

    let input_creator = CircuitInputCreator::new(
        commitment.clone(),
        tree,
        associated_set_tree,
        another_address,
        2u32,
    );

    let node_url = Url::parse("http://localhost:5050").unwrap();
    let private_key = Felt::from_hex_unchecked(
        "0x0000000000000000000000000000000071d7bb07b9a64f6f78ac4c816aff4da9",
    );

    let provider = JsonRpcClient::new(HttpTransport::new(node_url.clone()));
    let chain_id = get_chain_id(&provider).await.unwrap();
    let private_key = SigningKey::from_secret_scalar(private_key);

    let mut pool_account = SingleOwnerAccount::new(
        provider.clone(),
        LocalWallet::from(private_key),
        pool_address,
        chain_id,
        ExecutionEncoding::New,
    );
    pool_account.set_block_id(BlockId::Tag(BlockTag::Pending));

    let proof = Prover::new("../target/circuits")
        .get_calldata(input_creator.create())
        .await;

    let mut calldata = vec![Felt::from(proof.len())];
    calldata.extend(proof);
    let invoke_call = Call {
        to: pool_address,
        selector: starknet::macros::selector!("withdraw"),
        calldata: calldata,
    };
    let prepared_execution_v3 = pool_account
        .execute_v3(vec![invoke_call])
        .prepare()
        .await
        .unwrap();

    let invoke_result_custom_signature = prepared_execution_v3
        .send_with_custom_signature(vec![])
        .await
        .unwrap();

    let tx = wait_for_sent_transaction(
        invoke_result_custom_signature.transaction_hash,
        &pool_account,
    )
    .await
    .unwrap();

    dbg!(tx);
}

#[tokio::test]
async fn test_pool_account_simple_modern() {
    use crate::{
        abigen::{pool::Pool, Erc20},
        circuit::{CircuitInputCreator, Commitment},
        deploy_declare::{
            deploy::ContractDeployment,
            ERC20ContractDeployer,
        },
        execution_prepare::ExecutionPreparer,
        prover::Prover,
        testnet::runner::KatanaRunner,
        tests::approve_helper,
        transaction_waiter::TransactionWaiter,
    };
    use cainome::cairo_serde::U256;
    use merkle::{hybrid::HybridMerkleTree, traits::RootMerkleTree};
    use starknet::{
        accounts::{Account, ExecutionEncoding, SingleOwnerAccount as StarknetSingleOwnerAccount},
        core::types::{BlockId, BlockTag, Call},
        macros::selector,
        providers::Provider,
        signers::{LocalWallet, SigningKey},
    };
    use std::str::FromStr;

    let runner = KatanaRunner::load();
    let prefunded_account = runner.prefunded_account();

    // Deploy ERC20
    let erc20_address = ERC20ContractDeployer::new(&prefunded_account, runner.client())
        .declare_erc20_contract()
        .await
        .deploy_erc20_contract()
        .await
        .address();

    // Declare ECIP (required before verifier)
    use crate::deploy_declare::declare::{
        UNIVERSAL_ECIP_CASM_STR, UNIVERSAL_ECIP_SIERRA_STR, VERIFIER_CASM_STR, VERIFIER_SIERRA_STR,
    };
    let ecip_sierra: starknet::core::types::contract::SierraClass =
        serde_json::from_str(UNIVERSAL_ECIP_SIERRA_STR).unwrap();
    let ecip_casm: starknet::core::types::contract::CompiledClass =
        serde_json::from_str(UNIVERSAL_ECIP_CASM_STR).unwrap();

    let ecip_casm_class_hash = ecip_casm
        .class_hash()
        .map_err(|e| e.to_string())
        .unwrap();
    let ecip_flattened_class = ecip_sierra
        .clone()
        .flatten()
        .map_err(|e| e.to_string())
        .unwrap();

    let ecip_declaration = prefunded_account
        .declare_v3(std::sync::Arc::new(ecip_flattened_class), ecip_casm_class_hash)
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

    let verifier_casm_class_hash = verifier_casm
        .class_hash()
        .map_err(|e| e.to_string())
        .unwrap();
    let verifier_flattened_class = verifier_sierra
        .clone()
        .flatten()
        .map_err(|e| e.to_string())
        .unwrap();

    let verifier_declaration = prefunded_account
        .declare_v3(std::sync::Arc::new(verifier_flattened_class), verifier_casm_class_hash)
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
    let verifier_address = verifier_deployment.deployed_address;

    // Declare and deploy pool account
    let pool_account_sierra: starknet::core::types::contract::SierraClass =
        serde_json::from_str(POOL_ACCOUNT_SIERRA_STR).unwrap();
    let pool_account_casm: starknet::core::types::contract::CompiledClass =
        serde_json::from_str(POOL_ACCOUNT_CASM_STR).unwrap();

    let casm_class_hash = pool_account_casm
        .class_hash()
        .map_err(|e| e.to_string())
        .unwrap();
    let flattened_class = pool_account_sierra
        .clone()
        .flatten()
        .map_err(|e| e.to_string())
        .unwrap();

    let pool_account_declaration = prefunded_account
        .declare_v3(std::sync::Arc::new(flattened_class), casm_class_hash)
        .send()
        .await
        .unwrap();
    TransactionWaiter::new(
        pool_account_declaration.transaction_hash,
        runner.client(),
    )
    .wait()
    .await
    .unwrap();

    // Deploy pool account
    // Constructor: owner, token, verifier, verifier_class_hash, min_fee
    // Note: verifier_class_hash is needed for __validate__ (library calls in validation mode)
    let constructor_calldata = vec![
        prefunded_account.address(),
        erc20_address,
        verifier_address,
        verifier_declaration.class_hash, // verifier_class_hash (needed for validation mode)
        Felt::from_dec_str("2").unwrap(), // min_fee (u256 low)
        Felt::from_dec_str("0").unwrap(), // min_fee (u256 high)
    ];
    let pool_account_deployment = ContractDeployment::new(runner.client())
        .deploy(
            constructor_calldata,
            SigningKey::from_random().secret_scalar(),
            &prefunded_account,
            pool_account_declaration.class_hash,
        )
        .await
        .unwrap()
        .wait_for_completion()
        .await;
    let pool_address = pool_account_deployment.deployed_address;

    // Transfer STRK to pool account for fees
    let strk_address =
        Felt::from_hex_unchecked("0x4718F5A0FC34CC1AF16A1CDEE98FFB20C31F5CD61D6AB07201858F4287C938D");
    let strk = Erc20::new(strk_address, prefunded_account.clone());
    let transfer_amount = U256::from_str("0xfffffffffffffff").unwrap();
    let tx = strk
        .transfer(&pool_address.into(), &transfer_amount)
        .send()
        .await
        .unwrap();
    TransactionWaiter::new(tx.transaction_hash, runner.client())
        .wait()
        .await
        .unwrap();

    let my_commitment = Commitment::new(12345u32, 54321u32, 100u32);

    let commitments = vec![
        Commitment::new(0u32, 0u32, 100u32),
        Commitment::new(1u32, 1u32, 800u32),
        my_commitment.clone(),
        Commitment::new(3u32, 3u32, 1000u32),
    ];

    let associated_set_commitments = vec![
        Commitment::new(514u32, 876u32, 100u32),
        Commitment::new(1u32, 1u32, 800u32),
        my_commitment.clone(),
        Commitment::new(3u32, 3u32, 1000u32),
    ];

    // Approve and deposit using high-level APIs
    // Calculate total amount needed for both commitments and associated_set_commitments
    let total_amount: U256 = commitments
        .iter()
        .chain(associated_set_commitments.iter())
        .map(|c| c.amount)
        .fold(0u32.into(), |acc, x| acc + x);
    approve_helper(pool_address, total_amount, erc20_address, prefunded_account.clone()).await;

    let pool = Pool::new(pool_address, prefunded_account.clone());
    let mut tx = Felt::ZERO;
    for commitment in commitments.iter() {
        tx = pool
            .deposit(&commitment.secret_and_nullifier_hash(), &commitment.amount)
            .send()
            .await
            .unwrap()
            .transaction_hash;
    }
    TransactionWaiter::new(tx, runner.client())
        .wait()
        .await
        .unwrap();

    // Deposit associated set commitments
    for commitment in associated_set_commitments.iter() {
        tx = pool
            .deposit(&commitment.secret_and_nullifier_hash(), &commitment.amount)
            .send()
            .await
            .unwrap()
            .transaction_hash;
    }
    TransactionWaiter::new(tx, runner.client())
        .wait()
        .await
        .unwrap();

    // Withdraw using pool account
    let tree = HybridMerkleTree::contract_height_with_leafs(
        commitments.iter().map(Commitment::hash).collect(),
    );
    let associated_set_tree = HybridMerkleTree::contract_height_with_leafs(
        associated_set_commitments
            .iter()
            .map(Commitment::hash)
            .collect(),
    );

    let input_creator = CircuitInputCreator::new(
        my_commitment.clone(),
        tree,
        associated_set_tree,
        runner.other_account_address(),
        2u32,
    );

    let proof = Prover::new("../target/circuits")
        .get_calldata(input_creator.create())
        .await;

    // Create a SingleOwnerAccount using the pool address
    // Pool accounts validate all signatures, so we can use any signing key
    let chain_id = runner.client().chain_id().await.unwrap();
    let dummy_signing_key = SigningKey::from_random();
    let mut pool_account = StarknetSingleOwnerAccount::new(
        runner.client(),
        LocalWallet::from(dummy_signing_key),
        pool_address,
        chain_id,
        ExecutionEncoding::New,
    );
    pool_account.set_block_id(BlockId::Tag(BlockTag::Pending));

    // Execute withdraw via pool account
    // Pool accounts validate all signatures, so we use empty signature
    // We use prepare() + manual send to match the original test behavior
    let mut calldata = vec![Felt::from(proof.len())];
    calldata.extend(proof);
    let withdraw_call = Call {
        to: pool_address,
        selector: selector!("withdraw"),
        calldata,
    };

    // Prepare the execution (resolves nonce, estimates fees, sets gas)
    let execution = pool_account.execute_v3(vec![withdraw_call]);
    let preparer = ExecutionPreparer::new(&pool_account);
    let prepared_execution = preparer.prepare(execution).await.unwrap();

    // For pool accounts, we can send with empty signature
    // Since PreparedExecutionV3 from starknet-rs doesn't have send_with_custom_signature,
    // we use send() which will sign, but pool accounts accept any signature anyway.
    // This achieves the same result as send_with_custom_signature(vec![]) in the original test.
    let tx = prepared_execution.send().await.unwrap();

    TransactionWaiter::new(tx.transaction_hash, runner.client())
        .wait()
        .await
        .unwrap();
}
