use crate::hash::hash;
use cainome::cairo_serde::U256;

pub const CONTRACT_MERKLE_TREE_HEIGHT: usize = 6;

#[derive(Debug, Clone)]
pub struct MerkleTreeBuilder {
    height: usize,
    leafs: Vec<U256>,
}

impl MerkleTreeBuilder {
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
    pub fn build(&self) -> MerkleTree {
        let desired_len = MerkleTree::len_for_height(self.height);
        let len = self.leafs.len();
        let mut leafs = self.leafs.clone();
        leafs.extend(vec![U256::ZERO; desired_len - len]);

        MerkleTree::with_leafs(self.height, leafs).unwrap()
    }
}

#[derive(Debug, Clone)]
pub struct MerkleTree {
    height: usize,
    layers: Vec<Vec<U256>>,
}

impl MerkleTree {
    pub fn new(height: usize) -> Self {
        Self::with_leafs(height, vec![U256::ZERO; Self::len_for_height(height)]).unwrap()
    }
    pub fn new_with_contract_height() -> Self {
        Self::new(CONTRACT_MERKLE_TREE_HEIGHT)
    }
    pub fn with_leafs(height: usize, leafs: Vec<U256>) -> Option<Self> {
        if Self::len_for_height(height) != leafs.len() {
            return None;
        }
        let mut len = leafs.len() / 2;
        let mut layers = vec![leafs];
        for _ in 1..height {
            layers.push(vec![U256::from(0u32); len]);
            len /= 2
        }
        let mut result = MerkleTree { height, layers };
        result.recompute_layers();
        Some(result)
    }

    fn recompute_layers(&mut self) {
        let mut len = self.layers[0].len() / 2;
        for l in 1..self.height {
            for i in 0..len {
                self.layers[l][i] = hash(self.layers[l - 1][i * 2], self.layers[l - 1][i * 2 + 1])
            }
            len /= 2;
        }
    }
    pub fn root(&self) -> U256 {
        self.layers[self.height - 1][0]
    }
    pub fn path(&self, mut index: usize) -> MerklePath {
        let mut elements = vec![];
        let mut indices = vec![];
        for i in 0..self.height - 1 {
            let is_right = index % 2 == 1;
            let sibling = if is_right {
                self.layers[i][index - 1]
            } else {
                self.layers[i][index + 1]
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
    fn len_for_height(height: usize) -> usize {
        2usize.pow((height - 1).try_into().ok().unwrap())
    }
}

#[derive(Debug, Clone, PartialEq)]
pub struct MerklePath {
    pub elements: Vec<U256>,
    //element is right
    pub indices: Vec<bool>,
}

#[test]
fn test_merkle_tree_empty() {
    MerkleTree::new(8);
}

#[test]
fn test_merkle_tree_simple() {
    assert_eq!(
        U256::from(45u32),
        MerkleTree::with_leafs(1, vec![U256::from(45u32)])
            .unwrap()
            .root()
    );
    assert_eq!(
        hash(U256::from(45u32), U256::from(47u32)),
        MerkleTree::with_leafs(2, vec![U256::from(45u32), U256::from(47u32)])
            .unwrap()
            .root()
    );
    assert_eq!(
        hash(
            hash(U256::from(45u32), U256::from(47u32)),
            hash(U256::from(49u32), U256::from(50u32))
        ),
        MerkleTree::with_leafs(
            3,
            vec![
                U256::from(45u32),
                U256::from(47u32),
                U256::from(49u32),
                U256::from(50u32)
            ]
        )
        .unwrap()
        .root()
    )
}

#[test]
fn test_merkle_tree_path() {
    assert_eq!(
        MerklePath {
            elements: vec![U256::from(45u32)],
            indices: vec![false]
        },
        MerkleTree::with_leafs(2, vec![U256::from(43u32), U256::from(45u32)])
            .unwrap()
            .path(0)
    );
    assert_eq!(
        MerklePath {
            elements: vec![U256::from(43u32)],
            indices: vec![true]
        },
        MerkleTree::with_leafs(2, vec![U256::from(43u32), U256::from(45u32)])
            .unwrap()
            .path_leaf(U256::from(45u32))
    );
    let tree = MerkleTree::with_leafs(
        3,
        vec![
            U256::from(45u32),
            U256::from(47u32),
            U256::from(49u32),
            U256::from(50u32),
        ],
    )
    .unwrap();
    assert_eq!(
        MerklePath {
            elements: vec![
                U256::from(45u32),
                hash(U256::from(49u32), U256::from(50u32)),
            ],
            indices: vec![true, false]
        },
        tree.path_leaf(U256::from(47u32))
    )
}
