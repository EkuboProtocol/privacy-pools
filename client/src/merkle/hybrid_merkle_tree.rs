use cainome::cairo_serde::U256;

use crate::hash::hash;

use super::{precomputed_hashes, MerklePath, CONTRACT_MERKLE_TREE_HEIGHT};

#[derive(Debug, Clone)]
pub struct HybridMerkleTree {
    height: usize,
    precomputed: Vec<U256>,
    left_path: Vec<U256>,
    layers: Vec<Vec<U256>>,
    free_index: usize,
}

impl HybridMerkleTree {
    pub fn new(height: usize) -> Self {
        let precomputed = precomputed_hashes(height);

        HybridMerkleTree {
            height,
            left_path: precomputed.clone(),
            precomputed,
            layers: vec![vec![]; height],
            free_index: 0,
        }
    }

    pub fn add_leaf(&mut self, leaf: &U256) {
        let mut hash_ = *leaf;
        let mut index = self.free_index;
        self.free_index += 1;
        self.layers[0].push(*leaf);

        for i in 1..self.height {
            hash_ = if index % 2 == 0 {
                let h = hash(hash_, self.precomputed[i - 1]);
                self.left_path[i - 1] = hash_;
                h
            } else {
                let h = hash(self.left_path[i - 1], hash_);
                h
            };
            index /= 2;
            match self.layers[i].get(index) {
                Some(_) => self.layers[i][index] = hash_,
                None => self.layers[i].push(hash_),
            }
        }

        self.left_path[self.height - 1] = hash_;
    }
    pub fn path(&self, mut index: usize) -> MerklePath {
        if index >= self.layers[0].len() {
            panic!("Leaf does not exist!")
        }
        let mut elements = vec![];
        let mut indices = vec![];
        for i in 0..self.height - 1 {
            let is_right = index % 2 == 1;
            let sibling = if is_right {
                self.layers[i][index - 1]
            } else {
                *self.layers[i]
                    .get(index + 1)
                    .unwrap_or(&self.precomputed[i])
            };
            elements.push(sibling);
            indices.push(is_right);
            index /= 2;
        }
        MerklePath { elements, indices }
    }
    pub fn path_leaf(&self, leaf: U256) -> MerklePath {
        self.path(
            self.layers[0]
                .iter()
                .enumerate()
                .filter(|(_, f)| **f == leaf)
                .map(|(i, _)| i)
                .next()
                .unwrap(),
        )
    }
    pub fn root(&self) -> U256 {
        self.left_path[self.height - 1]
    }
}

#[derive(Debug, Clone)]
pub struct HybridMerkleTreeBuilder {
    height: usize,
    leafs: Vec<U256>,
}

impl HybridMerkleTreeBuilder {
    pub fn new(height: usize) -> Self {
        Self::with_leafs(height, vec![])
    }
    pub fn new_with_contract_height() -> Self {
        Self::new(CONTRACT_MERKLE_TREE_HEIGHT)
    }
    pub fn with_leafs(height: usize, leafs: Vec<U256>) -> Self {
        Self { height, leafs }
    }
    pub fn contract_height_with_leafs(leafs: Vec<U256>) -> Self {
        Self::with_leafs(CONTRACT_MERKLE_TREE_HEIGHT, leafs)
    }
    pub fn build(&self) -> HybridMerkleTree {
        let mut tree = HybridMerkleTree::new(self.height);
        for l in &self.leafs {
            tree.add_leaf(l);
        }
        tree
    }
}

#[test]
fn test_hybrid_merkle_tree_simple() {
    use super::merkle_tree::MerkleTreeBuilder;
    let height = 6;
    let mut hybrid = HybridMerkleTree::new(height);
    let coms = (0..20u32).map(U256::from).collect();
    for c in &coms {
        hybrid.add_leaf(c);
    }
    let tree = MerkleTreeBuilder::with_leafs(height, coms).build();
    assert_eq!(tree.root(), hybrid.root())
}

#[test]
fn test_hybrid_merkle_tree_path() {
    use super::merkle_tree::MerkleTreeBuilder;
    let height = 6;
    let mut hybrid = HybridMerkleTree::new(height);
    let coms = (0..20u32).map(U256::from).collect();
    for c in &coms {
        hybrid.add_leaf(c);
    }
    let tree = MerkleTreeBuilder::with_leafs(height, coms).build();
    assert_eq!(tree.path(0), hybrid.path(0));
    assert_eq!(tree.path(1), hybrid.path(1));
    assert_eq!(tree.path(2), hybrid.path(2));
    assert_eq!(tree.path(7), hybrid.path(7));
    assert_eq!(tree.path(8), hybrid.path(8));
    assert_eq!(tree.path(9), hybrid.path(9));
    assert_eq!(tree.path(18), hybrid.path(18));
    assert_eq!(tree.path(19), hybrid.path(19));
}

#[test]
fn test_hybrid_merkle_tree_large() {
    use super::append_merkle_tree::AppendOnlyMerkleTree;
    let height = 32;
    let mut hybrid = HybridMerkleTree::new(height);
    let mut append = AppendOnlyMerkleTree::new(height);
    
    let coms: Vec<_> = (0..3u32).map(U256::from).collect();
    for c in &coms {
        hybrid.add_leaf(c);
        append.add_leaf(c);
    }
    
    assert_eq!(hybrid.root(), append.root());
}
