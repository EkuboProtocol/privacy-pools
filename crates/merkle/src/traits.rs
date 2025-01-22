use cainome::cairo_serde::U256;

use crate::structs::MerklePath;

pub const CONTRACT_MERKLE_TREE_HEIGHT: usize = 17;

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
    fn contract_height_with_leafs(leafs: Vec<U256>) -> Self
    where
        Self: Sized,
    {
        Self::with_leafs(CONTRACT_MERKLE_TREE_HEIGHT, leafs)
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
