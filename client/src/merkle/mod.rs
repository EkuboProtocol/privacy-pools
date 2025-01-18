pub mod append_merkle_tree;
pub mod hybrid_merkle_tree;
pub mod dumb_merkle_tree;

use cainome::cairo_serde::U256;
use crate::hash::hash;

// pub use merkle_tree::{MerkleTree, MerkleTreeBuilder};
pub use hybrid_merkle_tree::{HybridMerkleTree as MerkleTree, HybridMerkleTreeBuilder as MerkleTreeBuilder};

pub const CONTRACT_MERKLE_TREE_HEIGHT: usize = 6;

#[derive(Debug, Clone, PartialEq)]
pub struct MerklePath {
    pub elements: Vec<U256>,
    //element is right
    pub indices: Vec<bool>,
}

fn precomputed_hashes(size: usize) -> Vec<U256> {
    let mut arr = Vec::new();
    arr.push(U256::ZERO);

    for i in 1..size {
        let last = arr[i - 1];
        arr.push(hash(last, last));
    }

    arr
}