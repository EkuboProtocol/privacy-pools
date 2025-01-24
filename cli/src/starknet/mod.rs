use cainome::cairo_serde::U256;
use client::{abigen::pool::Pool, circuit::Commitment, transaction_waiter::TransactionWaiter};
use starknet::{
    accounts::{ConnectedAccount, SingleOwnerAccount},
    core::types::Felt,
    providers::{jsonrpc::HttpTransport, JsonRpcClient},
    signers::LocalWallet,
};

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
