use crate::{
    abigen::{privacy_pools_garaga_pool::PrivacyPoolsGaragaPool, Erc20Reader},
    circuit::{CircuitInputCreator, Commitment},
    merkle::{MerkleTree, RootMerkleTree},
    prover::Prover,
    testnet::runner::KatanaRunner,
    tests::{
        approve_helper, single_deploy_helper, single_deploy_helper_with_min_fee, DeployHelperResult,
    },
    transaction_waiter::TransactionWaiter,
};
use cainome::cairo_serde::U256;
use starknet::{
    accounts::AccountError,
    core::types::{StarknetError, TransactionExecutionErrorData},
    providers::ProviderError,
};
use starknet_crypto::Felt;

#[tokio::test]
async fn test_contract_withdraw_simple() {
    let runner = KatanaRunner::load();
    let prefunded_account = runner.prefunded_account();
    let DeployHelperResult {
        pool_address,
        erc20_address,
    } = single_deploy_helper(&runner).await;
    let pool = PrivacyPoolsGaragaPool::new(pool_address, prefunded_account.clone());

    let my_commitment = Commitment::new(12345u32, 54321u32, 100u32);

    let commitments = vec![
        Commitment::new(0u32, 0u32, 100u32),
        Commitment::new(1u32, 1u32, 800u32),
        my_commitment.clone(),
        Commitment::new(3u32, 3u32, 1000u32),
    ];

    let sum: U256 = commitments
        .iter()
        .map(|c| c.amount)
        .fold(0u32.into(), |acc, x| acc + x);

    approve_helper(pool_address, sum, erc20_address, prefunded_account.clone()).await;

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

    assert_eq!(
        Erc20Reader::new(erc20_address, runner.client())
            .balance_of(&pool_address.into())
            .call()
            .await
            .unwrap(),
        sum
    );

    let input_creator = CircuitInputCreator::new(
        my_commitment.clone(),
        MerkleTree::contract_height_with_leafs(commitments.iter().map(Commitment::hash).collect()),
        runner.other_account_address(),
        2u32,
    );

    let proof = Prover::new().get_calldata(input_creator.create()).await;

    let tx = pool.withdraw(&proof).send().await.unwrap();

    TransactionWaiter::new(tx.transaction_hash, runner.client())
        .wait()
        .await
        .unwrap();

    assert_eq!(
        Erc20Reader::new(erc20_address, runner.client())
            .balance_of(&pool_address.into())
            .call()
            .await
            .unwrap(),
        sum + input_creator.fee - my_commitment.amount
    );
    assert_eq!(
        Erc20Reader::new(erc20_address, runner.client())
            .balance_of(&input_creator.recipient.into())
            .call()
            .await
            .unwrap(),
        my_commitment.amount - input_creator.fee
    );
}

#[tokio::test]
async fn test_contract_withdraw_nullifier() {
    let runner = KatanaRunner::load();
    let prefunded_account = runner.prefunded_account();
    let DeployHelperResult {
        pool_address,
        erc20_address,
    } = single_deploy_helper(&runner).await;
    let pool = PrivacyPoolsGaragaPool::new(pool_address, prefunded_account.clone());

    let my_commitment = Commitment::new(12345u32, 54321u32, 100u32);

    let commitments = vec![
        Commitment::new(0u32, 0u32, 100u32),
        Commitment::new(1u32, 1u32, 800u32),
        my_commitment.clone(),
        Commitment::new(3u32, 3u32, 1000u32),
    ];

    let sum: U256 = commitments
        .iter()
        .map(|c| c.amount)
        .fold(0u32.into(), |acc, x| acc + x);

    approve_helper(pool_address, sum, erc20_address, prefunded_account.clone()).await;

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

    let input_creator = CircuitInputCreator::new(
        my_commitment.clone(),
        MerkleTree::contract_height_with_leafs(commitments.iter().map(Commitment::hash).collect()),
        999888555,
        2u32,
    );

    let proof = Prover::new().get_calldata(input_creator.create()).await;

    let tx = pool.withdraw(&proof).send().await.unwrap();

    TransactionWaiter::new(tx.transaction_hash, runner.client())
        .wait()
        .await
        .unwrap();

    let result = pool.withdraw(&proof).send().await;

    if let Err(AccountError::Provider(ProviderError::StarknetError(
        StarknetError::TransactionExecutionError(TransactionExecutionErrorData {
            execution_error,
            ..
        }),
    ))) = result
    {
        assert!(execution_error.contains("('nullifier-is-zero')"))
    } else {
        panic!("Multiple withdraw should faile because of nullifier")
    }
}

#[tokio::test]
async fn test_contract_withdraw_refund() {
    let runner = KatanaRunner::load();
    let prefunded_account = runner.prefunded_account();
    let DeployHelperResult {
        pool_address,
        erc20_address,
    } = single_deploy_helper(&runner).await;
    let pool = PrivacyPoolsGaragaPool::new(pool_address, prefunded_account.clone());

    let my_commitment = Commitment::new(12345u32, 54321u32, 100u32);

    let mut commitments = vec![
        Commitment::new(0u32, 0u32, 100u32),
        Commitment::new(1u32, 1u32, 800u32),
        my_commitment.clone(),
        Commitment::new(3u32, 3u32, 1000u32),
    ];

    let sum: U256 = commitments
        .iter()
        .map(|c| c.amount)
        .fold(0u32.into(), |acc, x| acc + x);

    approve_helper(pool_address, sum, erc20_address, prefunded_account.clone()).await;

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

    assert_eq!(
        Erc20Reader::new(erc20_address, runner.client())
            .balance_of(&pool_address.into())
            .call()
            .await
            .unwrap(),
        sum
    );

    let input_creator = CircuitInputCreator::new(
        my_commitment.clone(),
        MerkleTree::contract_height_with_leafs(commitments.iter().map(Commitment::hash).collect()),
        runner.other_account_address(),
        2u32,
    );

    let refund_commitment = Commitment::new(98765u32, 123334u32, 20u32);

    let proof = Prover::new()
        .get_calldata(input_creator.create_with_refund(&refund_commitment))
        .await;

    let tx = pool.withdraw(&proof).send().await.unwrap();

    let pool_balance = sum + input_creator.fee + refund_commitment.amount - my_commitment.amount;

    TransactionWaiter::new(tx.transaction_hash, runner.client())
        .wait()
        .await
        .unwrap();

    assert_eq!(
        Erc20Reader::new(erc20_address, runner.client())
            .balance_of(&pool_address.into())
            .call()
            .await
            .unwrap(),
        pool_balance
    );
    assert_eq!(
        Erc20Reader::new(erc20_address, runner.client())
            .balance_of(&input_creator.recipient.into())
            .call()
            .await
            .unwrap(),
        my_commitment.amount - input_creator.fee - refund_commitment.amount
    );

    commitments.push(refund_commitment.clone());

    let input_creator = CircuitInputCreator::new(
        refund_commitment.clone(),
        MerkleTree::contract_height_with_leafs(commitments.iter().map(Commitment::hash).collect()),
        runner.other_account_2_address(),
        2u32,
    );

    let proof = Prover::new().get_calldata(input_creator.create()).await;

    let tx = pool.withdraw(&proof).send().await.unwrap();

    TransactionWaiter::new(tx.transaction_hash, runner.client())
        .wait()
        .await
        .unwrap();

    assert_eq!(
        Erc20Reader::new(erc20_address, runner.client())
            .balance_of(&input_creator.recipient.into())
            .call()
            .await
            .unwrap(),
        refund_commitment.amount - input_creator.fee
    );

    assert_eq!(
        Erc20Reader::new(erc20_address, runner.client())
            .balance_of(&pool_address.into())
            .call()
            .await
            .unwrap(),
        pool_balance + input_creator.fee - refund_commitment.amount
    );
}

#[tokio::test]
#[should_panic(expected = "insufficient-fee")]
async fn test_contract_withdraw_insufficient_fee_panic() {
    let runner = KatanaRunner::load();
    let prefunded_account = runner.prefunded_account();
    let DeployHelperResult {
        pool_address,
        erc20_address,
    } = single_deploy_helper_with_min_fee(&runner, 20u32).await;
    let pool = PrivacyPoolsGaragaPool::new(pool_address, prefunded_account.clone());

    let my_commitment = Commitment::new(12345u32, 54321u32, 100u32);

    let commitments = vec![
        Commitment::new(0u32, 0u32, 100u32),
        Commitment::new(1u32, 1u32, 800u32),
        my_commitment.clone(),
        Commitment::new(3u32, 3u32, 1000u32),
    ];

    let sum: U256 = commitments
        .iter()
        .map(|c| c.amount)
        .fold(0u32.into(), |acc, x| acc + x);

    approve_helper(pool_address, sum, erc20_address, prefunded_account.clone()).await;

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

    assert_eq!(
        Erc20Reader::new(erc20_address, runner.client())
            .balance_of(&pool_address.into())
            .call()
            .await
            .unwrap(),
        sum
    );

    let input_creator = CircuitInputCreator::new(
        my_commitment.clone(),
        MerkleTree::contract_height_with_leafs(commitments.iter().map(Commitment::hash).collect()),
        runner.other_account_address(),
        19u32,
    );

    let proof = Prover::new().get_calldata(input_creator.create()).await;

    let tx = pool.withdraw(&proof).send().await.unwrap();

    TransactionWaiter::new(tx.transaction_hash, runner.client())
        .wait()
        .await
        .unwrap();

    assert_eq!(
        Erc20Reader::new(erc20_address, runner.client())
            .balance_of(&pool_address.into())
            .call()
            .await
            .unwrap(),
        sum + input_creator.fee - my_commitment.amount
    );
    assert_eq!(
        Erc20Reader::new(erc20_address, runner.client())
            .balance_of(&input_creator.recipient.into())
            .call()
            .await
            .unwrap(),
        my_commitment.amount - input_creator.fee
    );
}

#[tokio::test]
#[should_panic(expected = "roots-must-match")]
async fn test_contract_withdraw_wrong_root_panic() {
    let runner = KatanaRunner::load();
    let prefunded_account = runner.prefunded_account();
    let DeployHelperResult {
        pool_address,
        erc20_address,
    } = single_deploy_helper(&runner).await;
    let pool = PrivacyPoolsGaragaPool::new(pool_address, prefunded_account.clone());

    let my_commitment = Commitment::new(12345u32, 54321u32, 100u32);

    let commitments = vec![
        Commitment::new(0u32, 0u32, 100u32),
        Commitment::new(1u32, 1u32, 800u32),
        my_commitment.clone(),
        Commitment::new(3u32, 3u32, 1000u32),
        Commitment::new(3u32, 3u32, 1000u32),
    ];

    let sum: U256 = commitments
        .iter()
        .map(|c| c.amount)
        .fold(0u32.into(), |acc, x| acc + x);

    approve_helper(pool_address, sum, erc20_address, prefunded_account.clone()).await;

    let mut tx = Felt::ZERO;
    for c in commitments.iter().take(4) {
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

    let input_creator = CircuitInputCreator::new(
        my_commitment.clone(),
        MerkleTree::contract_height_with_leafs(commitments.iter().map(Commitment::hash).collect()),
        runner.other_account_address(),
        19u32,
    );

    let proof = Prover::new().get_calldata(input_creator.create()).await;

    let tx = pool.withdraw(&proof).send().await.unwrap();

    TransactionWaiter::new(tx.transaction_hash, runner.client())
        .wait()
        .await
        .unwrap();
}

#[tokio::test]
async fn test_contract_withdraw_old_root() {
    let runner = KatanaRunner::load();
    let prefunded_account = runner.prefunded_account();
    let DeployHelperResult {
        pool_address,
        erc20_address,
    } = single_deploy_helper(&runner).await;
    let pool = PrivacyPoolsGaragaPool::new(pool_address, prefunded_account.clone());

    let my_commitment = Commitment::new(12345u32, 54321u32, 100u32);

    let commitments = vec![
        Commitment::new(0u32, 0u32, 100u32),
        Commitment::new(1u32, 1u32, 800u32),
        my_commitment.clone(),
        Commitment::new(3u32, 3u32, 1000u32),
    ];

    let sum: U256 = commitments
        .iter()
        .map(|c| c.amount)
        .fold(0u32.into(), |acc, x| acc + x);

    approve_helper(pool_address, sum, erc20_address, prefunded_account.clone()).await;

    let mut tx = Felt::ZERO;
    for c in commitments.iter().take(4) {
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

    let input_creator = CircuitInputCreator::new(
        my_commitment.clone(),
        MerkleTree::contract_height_with_leafs(
            commitments.iter().take(3).map(Commitment::hash).collect(),
        ),
        runner.other_account_address(),
        19u32,
    );

    let proof = Prover::new().get_calldata(input_creator.create()).await;

    let tx = pool.withdraw(&proof).send().await.unwrap();

    TransactionWaiter::new(tx.transaction_hash, runner.client())
        .wait()
        .await
        .unwrap();
}
