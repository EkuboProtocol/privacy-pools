use cainome::cairo_serde::U256;

use hash::hash;

use crate::{traits::RootMerkleTree, utils::precomputed_hashes};

#[derive(Debug)]
pub struct AppendOnlyMerkleTree {
    free_leaf_index: u64,
    height: usize,
    precomputed: Vec<U256>,
    left_path: Vec<U256>,
}

impl RootMerkleTree for AppendOnlyMerkleTree {
    fn new(height: usize) -> Self {
        let precomputed = precomputed_hashes(height);

        AppendOnlyMerkleTree {
            free_leaf_index: 0,
            height,
            left_path: precomputed.clone(),
            precomputed,
        }
    }

    fn add_leaf(&mut self, leaf: &U256) {
        let mut hash_ = *leaf;
        let mut index = self.free_leaf_index;

        self.free_leaf_index += 1;

        for i in 1..self.height {
            let cur = if index % 2 == 0 {
                let h = hash(hash_, self.precomputed[i - 1]);
                self.left_path[i - 1] = hash_;
                h
            } else {
                hash(self.left_path[i - 1], hash_)
            };
            index /= 2;

            hash_ = cur;
        }

        self.left_path[self.height - 1] = hash_;
    }

    fn root(&self) -> U256 {
        self.left_path[self.height - 1]
    }
}

#[test]
fn test_append_merkle_tree() {
    use super::dumb::DumbMerkleTree;
    let height = 6;
    let mut ap = AppendOnlyMerkleTree::new(height);
    let coms = (0..20u32).map(U256::from).collect();
    for c in &coms {
        ap.add_leaf(c);
    }
    let tree = DumbMerkleTree::with_leafs(height, coms);
    assert_eq!(tree.root(), ap.root())
}
