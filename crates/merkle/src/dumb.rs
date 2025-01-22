use cainome::cairo_serde::U256;

use hash::hash;

use crate::{
    structs::MerklePath,
    traits::{FindLeafMerkleTree, PathMerkleTree, RootMerkleTree},
};

#[derive(Debug, Clone)]
pub struct DumbMerkleTree {
    height: usize,
    layers: Vec<Vec<U256>>,
    free_index: usize,
}

impl DumbMerkleTree {
    pub fn with_leafs(height: usize, leafs: Vec<U256>) -> Self {
        let free_index = leafs.len();
        let desired_len = DumbMerkleTree::len_for_height(height);
        let len = leafs.len();
        let mut leafs = leafs.clone();
        leafs.extend(vec![U256::ZERO; desired_len - len]);

        let mut len = leafs.len() / 2;
        let mut layers = vec![leafs];
        for _ in 1..height {
            layers.push(vec![U256::from(0u32); len]);
            len /= 2
        }
        let mut result = DumbMerkleTree {
            height,
            layers,
            free_index,
        };
        result.recompute_layers();
        result
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
    fn len_for_height(height: usize) -> usize {
        2usize.pow((height - 1).try_into().ok().unwrap())
    }
}

impl RootMerkleTree for DumbMerkleTree {
    fn new(height: usize) -> Self {
        Self::with_leafs(height, vec![])
    }
    fn root(&self) -> U256 {
        self.layers[self.height - 1][0]
    }
    fn add_leaf(&mut self, leaf: &U256) {
        self.layers[0][self.free_index] = *leaf;
        self.free_index += 1;
        self.recompute_layers();
    }
}
impl PathMerkleTree for DumbMerkleTree {
    fn path(&self, mut index: usize) -> MerklePath {
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
}

impl FindLeafMerkleTree for DumbMerkleTree {
    fn find_leaf_index(&self, leaf: &U256) -> Option<usize> {
        self.layers[0]
            .iter()
            .enumerate()
            .filter(|(_, f)| *f == leaf)
            .map(|(i, _)| i)
            .next()
    }
}

#[test]
fn test_merkle_tree_empty() {
    DumbMerkleTree::new(8);
}

#[test]
fn test_merkle_tree_simple() {
    assert_eq!(
        U256::from(45u32),
        DumbMerkleTree::with_leafs(1, vec![U256::from(45u32)]).root()
    );
    assert_eq!(
        hash(U256::from(45u32), U256::from(47u32)),
        DumbMerkleTree::with_leafs(2, vec![U256::from(45u32), U256::from(47u32)]).root()
    );
    assert_eq!(
        hash(
            hash(U256::from(45u32), U256::from(47u32)),
            hash(U256::from(49u32), U256::from(50u32))
        ),
        DumbMerkleTree::with_leafs(
            3,
            vec![
                U256::from(45u32),
                U256::from(47u32),
                U256::from(49u32),
                U256::from(50u32)
            ]
        )
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
        DumbMerkleTree::with_leafs(2, vec![U256::from(43u32), U256::from(45u32)]).path(0)
    );
    assert_eq!(
        MerklePath {
            elements: vec![U256::from(43u32)],
            indices: vec![true]
        },
        DumbMerkleTree::with_leafs(2, vec![U256::from(43u32), U256::from(45u32)])
            .find_path(&U256::from(45u32))
            .unwrap()
    );
    let tree = DumbMerkleTree::with_leafs(
        3,
        vec![
            U256::from(45u32),
            U256::from(47u32),
            U256::from(49u32),
            U256::from(50u32),
        ],
    );
    assert_eq!(
        MerklePath {
            elements: vec![
                U256::from(45u32),
                hash(U256::from(49u32), U256::from(50u32)),
            ],
            indices: vec![true, false]
        },
        tree.find_path(&U256::from(47u32)).unwrap()
    )
}
