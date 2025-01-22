use crate::{
    abigen::pool::{Pool, PoolReader},
    circuit::Commitment,
    merkle::{MerkleTree, RootMerkleTree},
    testnet::runner::KatanaRunner,
    tests::{approve_helper, single_deploy_helper, DeployHelperResult},
    transaction_waiter::TransactionWaiter,
};
use cainome::cairo_serde::U256;
use starknet_crypto::Felt;

#[tokio::test]
async fn test_contract_merkle_tree_empty() {
    let runner = KatanaRunner::load();
    let helper = single_deploy_helper(&runner).await;

    let pool_reader = PoolReader::new(helper.pool_address, runner.client());
    let contract_root = pool_reader.current_root().call().await.unwrap();
    assert_eq!(MerkleTree::new_with_contract_height().root(), contract_root);
}

#[tokio::test]
async fn test_contract_merkle_tree_addition() {
    let runner = KatanaRunner::load();
    let prefunded_account = runner.prefunded_account();
    let DeployHelperResult {
        pool_address,
        erc20_address,
    } = single_deploy_helper(&runner).await;
    let pool = Pool::new(pool_address, prefunded_account.clone());

    approve_helper(pool_address, 300u32, erc20_address, prefunded_account).await;

    let commitment_1 = Commitment::new(111u32, 2u32, 100u32);
    let tx = pool
        .deposit(
            &commitment_1.secret_and_nullifier_hash(),
            &commitment_1.amount,
        )
        .send()
        .await
        .unwrap();

    TransactionWaiter::new(tx.transaction_hash, runner.client())
        .wait()
        .await
        .unwrap();

    let tree = MerkleTree::contract_height_with_leafs(vec![commitment_1.hash()]);
    assert_eq!(tree.root(), pool.current_root().call().await.unwrap());

    let commitment_2 = Commitment::new(222u32, 3u32, 200u32);
    let tx = pool
        .deposit(
            &commitment_2.secret_and_nullifier_hash(),
            &commitment_2.amount,
        )
        .send()
        .await
        .unwrap();
    TransactionWaiter::new(tx.transaction_hash, runner.client())
        .wait()
        .await
        .unwrap();

    let tree =
        MerkleTree::contract_height_with_leafs(vec![commitment_1.hash(), commitment_2.hash()]);
    assert_eq!(tree.root(), pool.current_root().call().await.unwrap());
}

#[tokio::test]
async fn test_contract_merkle_tree_multiple() {
    let runner = KatanaRunner::load();
    let prefunded_account = runner.prefunded_account();
    let DeployHelperResult {
        pool_address,
        erc20_address,
    } = single_deploy_helper(&runner).await;
    let pool = Pool::new(pool_address, prefunded_account.clone());

    let commitments: Vec<_> = (0..12u32).map(|i| Commitment::new(i, i, i * 100)).collect();

    let sum: U256 = commitments
        .iter()
        .map(|c| c.amount)
        .fold(0u32.into(), |acc, x| acc + x);

    approve_helper(pool_address, sum, erc20_address, prefunded_account).await;

    let mut tx = Felt::ZERO;
    for c in &commitments {
        tx = pool
            .deposit(&c.secret_and_nullifier_hash(), &c.amount)
            .send()
            .await
            .unwrap()
            .transaction_hash;
    }

    TransactionWaiter::new(tx, runner.client())
        .wait()
        .await
        .unwrap();

    let tree =
        MerkleTree::contract_height_with_leafs(commitments.iter().map(Commitment::hash).collect());
    assert_eq!(tree.root(), pool.current_root().call().await.unwrap());
}
