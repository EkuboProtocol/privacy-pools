use std::str::FromStr;

use cainome::cairo_serde::U256;
use hash::{hash, hash_one};
use merkle::{
    hybrid::HybridMerkleTree,
    traits::{FindLeafMerkleTree, RootMerkleTree},
};
use serde::{Deserialize, Serialize};
use starknet_crypto::Felt;

type MerkleTree = HybridMerkleTree;

#[derive(Debug, Clone, Serialize, Deserialize, Default)]
#[serde(rename_all = "camelCase")]
pub struct CircuitInput {
    pub root: U256,
    pub nullifier_hash: U256,
    pub recipient: U256,
    pub fee: U256,
    pub refund: U256,
    pub refund_commitment_hash: U256,
    pub commitment_amount: U256,
    pub nullifier: U256,
    pub secret: U256,
    pub path_elements: Vec<U256>,
    pub path_indices: Vec<U256>,
    pub amount: U256,

    pub associated_set_root: U256,
    pub associated_set_path_elements: Vec<U256>,
    pub associated_set_path_indices: Vec<U256>,
}

#[derive(Debug, Clone)]
pub struct CircuitInputCreator {
    pub commitment: Commitment,
    pub recipient: Felt,
    pub fee: U256,
    pub merkle_tree: MerkleTree,
    pub associated_set_merkle_tree: MerkleTree,
}

#[derive(Debug, Clone)]
pub struct Commitment {
    pub secret: U256,
    pub nullifier: U256,
    pub amount: U256,
}

impl Commitment {
    pub fn new(
        secret: impl Into<U256>,
        nullifier: impl Into<U256>,
        amount: impl Into<U256>,
    ) -> Self {
        Self {
            secret: secret.into(),
            nullifier: nullifier.into(),
            amount: amount.into(),
        }
    }
    pub fn hash(&self) -> U256 {
        hash(self.secret_and_nullifier_hash(), self.amount)
    }
    pub fn secret_and_nullifier_hash(&self) -> U256 {
        hash(self.secret, self.nullifier)
    }
    pub fn nullifier_hash(&self) -> U256 {
        hash_one(self.nullifier)
    }
}

impl CircuitInputCreator {
    pub fn new(
        commitment: Commitment,
        tree: MerkleTree,
        associated_set_tree: MerkleTree,
        recipient: impl Into<Felt>,
        fee: impl Into<U256>,
    ) -> Self {
        Self {
            commitment,
            recipient: recipient.into(),
            fee: fee.into(),
            merkle_tree: tree,
            associated_set_merkle_tree: associated_set_tree,
        }
    }
    pub fn create(&self) -> CircuitInput {
        self.create_with_optional_refund(None)
    }
    pub fn create_with_refund(&self, refund_commitment: &Commitment) -> CircuitInput {
        self.create_with_optional_refund(Some(refund_commitment))
    }
    fn create_with_optional_refund(&self, refund_commitment: Option<&Commitment>) -> CircuitInput {
        let path = self.merkle_tree.find_path(&self.commitment.hash()).unwrap();
        let associated_set_path = self
            .associated_set_merkle_tree
            .find_path(&self.commitment.hash())
            .unwrap();
        let refund_amount = refund_commitment.map_or(U256::ZERO, |r| r.amount);
        CircuitInput {
            root: self.merkle_tree.root(),
            nullifier_hash: self.commitment.nullifier_hash(),
            recipient: U256::from_str(&self.recipient.to_string()).unwrap(),
            fee: self.fee,
            refund: refund_amount,
            refund_commitment_hash: refund_commitment.map_or(U256::ZERO, Commitment::hash),
            commitment_amount: self.commitment.amount,
            nullifier: self.commitment.nullifier,
            secret: self.commitment.secret,
            path_elements: path.elements,
            path_indices: path
                .indices
                .into_iter()
                .map(|b| if b { U256::ONE } else { U256::ZERO })
                .collect(),
            amount: self.commitment.amount - refund_amount,
            associated_set_root: self.associated_set_merkle_tree.root(),
            associated_set_path_elements: associated_set_path.elements,
            associated_set_path_indices: associated_set_path
                .indices
                .into_iter()
                .map(|b| if b { U256::ONE } else { U256::ZERO })
                .collect(),
        }
    }
}
