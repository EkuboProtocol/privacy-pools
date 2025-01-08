use crate::{
    abigen::Erc20,
    account::SOAccount,
    deploy_declare::{ERC20ContractDeployer, PoolContractDeployer},
    testnet::runner::KatanaRunner,
    transaction_waiter::TransactionWaiter,
};
use cainome::cairo_serde::U256;
use starknet::accounts::ConnectedAccount;
use starknet_crypto::Felt;

mod contract_deposit_test;
mod contract_withdraw_test;
mod deployment_test;
mod prover_test;
mod verifier_test;

#[derive(Debug, Clone)]
pub struct DeployHelperResult {
    pub pool_address: Felt,
    pub erc20_address: Felt,
}

async fn single_deploy_helper(runner: &KatanaRunner) -> DeployHelperResult {
    single_deploy_helper_with_min_fee(runner, 0u32).await
}

async fn single_deploy_helper_with_min_fee(
    runner: &KatanaRunner,
    min_fee: impl Into<U256>,
) -> DeployHelperResult {
    let prefunded_account = runner.prefunded_account();
    let erc20_address = ERC20ContractDeployer::new(&prefunded_account, runner.client())
        .declare_erc20_contract()
        .await
        .deploy_erc20_contract()
        .await
        .address();
    let pool_address = PoolContractDeployer::new(&prefunded_account, runner.client())
        .declare_pool_contract()
        .await
        .declare_verifier_contract()
        .await
        .deploy_verifier_contract()
        .await
        .deploy_pool_contract(erc20_address, min_fee)
        .await
        .deployed_address;
    DeployHelperResult {
        pool_address,
        erc20_address,
    }
}

async fn approve_helper(
    spender: impl Into<Felt>,
    amount: impl Into<U256>,
    address: Felt,
    account: SOAccount<'_>,
) {
    let erc20 = Erc20::new(address, account.clone());
    let tx = erc20
        .approve(
            &spender.into().into(),
            &U256::from_bytes_be(&amount.into().to_bytes_be()),
        )
        .send()
        .await
        .unwrap();
    TransactionWaiter::new(tx.transaction_hash, account.provider())
        .wait()
        .await
        .unwrap();
}
