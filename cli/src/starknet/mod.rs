use cainome::cairo_serde::U256;
use client::{
    abigen::{pool::Pool, Erc20},
    circuit::Commitment,
    deploy_declare::{ERC20ContractDeployer, PoolContractDeployer},
    transaction_waiter::TransactionWaiter,
};
use starknet::{
    accounts::{ConnectedAccount, SingleOwnerAccount},
    core::types::Felt,
    providers::{jsonrpc::HttpTransport, JsonRpcClient},
    signers::LocalWallet,
};

pub async fn single_deploy_helper_with_min_fee(
    account: SingleOwnerAccount<&JsonRpcClient<HttpTransport>, LocalWallet>,
    min_fee: impl Into<U256>,
) {
    let erc20_address = ERC20ContractDeployer::new(&account, account.provider())
        .declare_erc20_contract()
        .await
        .deploy_erc20_contract()
        .await
        .address();
    PoolContractDeployer::new(&account, account.provider())
        .declare_pool_contract()
        .await
        .declare_verifier_contract()
        .await
        .deploy_verifier_contract()
        .await
        .deploy_pool_contract(erc20_address, min_fee)
        .await;
}

pub async fn approve_helper(
    account: SingleOwnerAccount<&JsonRpcClient<HttpTransport>, LocalWallet>,
    address: Felt,
    spender: impl Into<Felt>,
    amount: impl Into<U256>,
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
    let tx_receipt = TransactionWaiter::new(tx.transaction_hash, account.provider())
        .wait()
        .await
        .unwrap();

    tracing::info!("tx receipt: {:?}", tx_receipt);
}

pub async fn deposit(
    account: SingleOwnerAccount<&JsonRpcClient<HttpTransport>, LocalWallet>,
    pool_address: Felt,
    secret: U256,
    nullifier: U256,
    amount: U256,
) -> Felt {
    let pool = Pool::new(pool_address, account.clone());
    let commitment = Commitment::new(secret, nullifier, amount);
    tracing::info!(
        "secret_and_nullifier_hash: {}",
        commitment.secret_and_nullifier_hash()
    );
    tracing::info!("amount: {}", commitment.amount);
    let tx = pool
        .deposit(&commitment.secret_and_nullifier_hash(), &amount)
        .send()
        .await
        .unwrap();

    let tx_receipt = TransactionWaiter::new(tx.transaction_hash, account.provider())
        .wait()
        .await
        .unwrap();

    tracing::info!("deposit tx receipt: {:?}", tx_receipt);
    tracing::info!("commitment: {}", commitment.hash().to_string());
    tx_receipt.receipt.transaction_hash().to_owned()
}
