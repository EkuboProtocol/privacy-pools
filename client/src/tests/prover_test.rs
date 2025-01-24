use std::str::FromStr;

use crate::{
    circuit::{CircuitInputCreator, Commitment},
    prover::Prover,
};
use cainome::cairo_serde::U256;
use merkle::{hybrid::HybridMerkleTree, traits::RootMerkleTree};

type MerkleTree = HybridMerkleTree;

#[tokio::test]
async fn test_prover_basic() {
    let my_commitment = Commitment::new(12345u32, 54321u32, 100u32);

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

    Prover::new("../target")
        .get_calldata(
            CircuitInputCreator::new(
                my_commitment.clone(),
                MerkleTree::contract_height_with_leafs(commitments),
                MerkleTree::contract_height_with_leafs(associated_set_commitments),
                999888666u32,
                1u32,
            )
            .create(),
        )
        .await;
}

#[tokio::test]
#[should_panic]
async fn test_prover_refund_greater_than_amount() {
    let my_commitment = Commitment::new(12345u32, 54321u32, 100u32);

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

    Prover::new("../target")
        .get_calldata(
            CircuitInputCreator::new(
                my_commitment.clone(),
                MerkleTree::contract_height_with_leafs(commitments),
                MerkleTree::contract_height_with_leafs(associated_set_commitments),
                999888666u32,
                1u32,
            )
            .create_with_refund(&Commitment::new(23456u32, 65432u32, 101u32)),
        )
        .await;
}

#[tokio::test]
#[should_panic]
async fn test_prover_fee_greater_than_amount() {
    let my_commitment = Commitment::new(12345u32, 54321u32, 100u32);

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

    Prover::new("../target")
        .get_calldata(
            CircuitInputCreator::new(
                my_commitment.clone(),
                MerkleTree::contract_height_with_leafs(commitments),
                MerkleTree::contract_height_with_leafs(associated_set_commitments),
                999888666u32,
                101u32,
            )
            .create(),
        )
        .await;
}
