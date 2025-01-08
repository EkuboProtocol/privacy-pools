use starknet_crypto::Felt;

use crate::{
    deploy_declare::{ERC20ContractDeployer, PoolContractDeployer},
    testnet::runner::KatanaRunner,
};

#[tokio::test]
async fn test_deployment() {
    let runner = KatanaRunner::load();
    let prefunded_account = runner.prefunded_account();
    let _deployment = PoolContractDeployer::new(&prefunded_account, runner.client())
        .declare_pool_contract()
        .await
        .declare_verifier_contract()
        .await
        .deploy_verifier_contract()
        .await
        .deploy_pool_contract(Felt::ZERO, 0u32)
        .await;
}

#[tokio::test]
async fn test_multiple_deployments() {
    let runner = KatanaRunner::load();
    let prefunded_account = runner.prefunded_account();
    let deployer = PoolContractDeployer::new(&prefunded_account, runner.client())
        .declare_pool_contract()
        .await
        .declare_verifier_contract()
        .await
        .deploy_verifier_contract()
        .await;
    let token_address = ERC20ContractDeployer::new(&prefunded_account, runner.client())
        .declare_erc20_contract()
        .await
        .deploy_erc20_contract()
        .await
        .address();

    deployer.deploy_pool_contract(token_address, 0u32).await;
    deployer.deploy_pool_contract(token_address, 12345u32).await;
    deployer.deploy_pool_contract(token_address, 12u32).await;
}
