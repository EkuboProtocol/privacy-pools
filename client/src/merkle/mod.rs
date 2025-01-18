pub mod append_merkle_tree;
pub mod dumb_merkle_tree;
pub mod hybrid_merkle_tree;

use crate::hash::hash;
use cainome::cairo_serde::U256;

// pub use merkle_tree::{MerkleTree, MerkleTreeBuilder};
pub use hybrid_merkle_tree::{
    HybridMerkleTree as MerkleTree, HybridMerkleTreeBuilder as MerkleTreeBuilder,
};

pub const CONTRACT_MERKLE_TREE_HEIGHT: usize = 6;

#[derive(Debug, Clone, PartialEq)]
pub struct MerklePath {
    pub elements: Vec<U256>,
    //element is right
    pub indices: Vec<bool>,
}

pub trait RootMerkleTree {
    fn new(height: usize) -> Self
    where
        Self: Sized,
    {
        Self::with_leafs(height, vec![])
    }
    fn new_with_contract_height() -> Self
    where
        Self: Sized,
    {
        Self::new(CONTRACT_MERKLE_TREE_HEIGHT)
    }
    fn with_leafs(height: usize, leafs: Vec<U256>) -> Self
    where
        Self: Sized,
    {
        let mut result = Self::new(height);
        for l in leafs {
            result.add_leaf(&l);
        }
        result
    }
    fn add_leaf(&mut self, leaf: &U256);
    fn root(&self) -> U256;
}

pub trait PathMerkleTree: RootMerkleTree {
    fn path(&self, index: usize) -> MerklePath;
}

pub trait FindLeafMerkleTree: PathMerkleTree {
    fn find_leaf_index(&self, leaf: &U256) -> Option<usize>;
    fn find_path(&self, leaf: &U256) -> Option<MerklePath> {
        self.find_leaf_index(leaf).map(|i| self.path(i))
    }
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
