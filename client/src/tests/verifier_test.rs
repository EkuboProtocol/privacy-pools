use std::str::FromStr;

use crate::{
    abigen::verifier::Groth16VerifierBN254Reader,
    circuit::{CircuitInputCreator, Commitment},
    deploy_declare::PoolContractDeployer,
    prover::Prover,
    testnet::runner::KatanaRunner,
};
use cainome::cairo_serde::U256;
use merkle::{hybrid::HybridMerkleTree, traits::RootMerkleTree};

type MerkleTree = HybridMerkleTree;

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

    let verifier = Groth16VerifierBN254Reader::new(deployer.verifier_address(), runner.client());

    let my_commitment = Commitment::new(12345u32, 54321u32, 42u32);

    let commitments = vec![
        U256::from_str("0x11").unwrap(),
        U256::from_str("0x748392").unwrap(),
        my_commitment.hash(),
        U256::from_str("0x748392").unwrap(),
    ];

    let associated_set_commitments = vec![
        U256::from_str("0x123456").unwrap(),
        U256::from_str("0x654321").unwrap(),
        my_commitment.hash(),
        U256::from_str("0x111111").unwrap(),
    ];

    let proof = Prover::new("../target")
        .get_calldata(
            CircuitInputCreator::new(
                my_commitment.clone(),
                MerkleTree::contract_height_with_leafs(commitments),
                MerkleTree::contract_height_with_leafs(associated_set_commitments),
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

    // The first two results and last are hashes and are tested elsewhere
    assert_eq!(result[2], 11u32.into());
    assert_eq!(result[3], 12u32.into());
    assert_eq!(result[4], 0u32.into());
    assert_eq!(result[5], 42u32.into());
}
