use std::str::FromStr;

use crate::{
    abigen::privacy_pools_garaga_groth_16_verifierbn_254::PrivacyPoolsGaragaGroth16verifierbn254Reader,
    circuit::{CircuitInputCreator, Commitment},
    deploy_declare::PoolContractDeployer,
    merkle::MerkleTreeBuilder,
    prover::Prover,
    testnet::runner::KatanaRunner,
};
use cainome::cairo_serde::U256;

#[tokio::test]
async fn test_verifier() {
    let runner = KatanaRunner::load();
    let prefunded_account = runner.prefunded_account();
    let deployer = PoolContractDeployer::new(&prefunded_account, runner.client())
        .declare_pool_contract()
        .await
        .declare_verifier_contract()
        .await
        .deploy_verifier_contract()
        .await;

    let verifier = PrivacyPoolsGaragaGroth16verifierbn254Reader::new(
        deployer.verifier_address(),
        runner.client(),
    );

    let my_commitment = Commitment::new(12345u32, 54321u32, 42u32);

    let commitments = vec![
        U256::from_str("0x11").unwrap(),
        U256::from_str("0x748392").unwrap(),
        my_commitment.hash(),
        U256::from_str("0x748392").unwrap(),
    ];

    let proof = Prover::new()
        .get_calldata(
            CircuitInputCreator::new(
                my_commitment.clone(),
                MerkleTreeBuilder::contract_height_with_leafs(commitments).build(),
                11u32,
                12u32,
            )
            .create(),
        )
        .await;

    let result = verifier
        .verify_groth16_proof_bn254(&proof)
        .call()
        .await
        .unwrap()
        .unwrap();

    // The first two results are hashes and are tested elsewhere
    assert_eq!(result[2], 11u32.into());
    assert_eq!(result[3], 12u32.into());
    assert_eq!(result[4], 0u32.into());
    assert_eq!(result[5], 42u32.into());
}
