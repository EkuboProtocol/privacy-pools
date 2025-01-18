pub mod append_merkle_tree;
pub mod hybrid_merkle_tree;
pub mod merkle_tree;

use cainome::cairo_serde::U256;
pub use merkle_tree::{MerkleTree, MerkleTreeBuilder, MerklePath};

use crate::hash::hash;

fn precomputed_hashes(size: usize) -> Vec<U256> {
    let mut arr = Vec::new();
    arr.push(U256::ZERO);

    for i in 1..size {
        let last = arr[i - 1];
        arr.push(hash(last, last));
    }

    arr
}