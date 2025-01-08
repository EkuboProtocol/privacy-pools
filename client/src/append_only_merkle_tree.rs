use cainome::cairo_serde::U256;

use crate::hash::hash;

#[derive(Debug)]
pub struct AppendOnlyMerkleTree {
    free_leaf_index: u64,
    height: usize,
    precomputed: Vec<U256>,
    left_path: Vec<U256>,
    pub root: U256,
}

impl AppendOnlyMerkleTree {
    pub fn new(height: usize) -> Self {
        let precomputed = precomputed_hashes(height);
        let root = precomputed[height - 1];
        let mut left_path = Vec::new();

        for p in &precomputed {
            left_path.push(*p);
        }

        AppendOnlyMerkleTree {
            free_leaf_index: 0,
            height,
            precomputed,
            left_path,
            root,
        }
    }

    pub fn add_leaf(&mut self, leaf: &U256) {
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
        self.root = hash_;
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

#[test]
fn test_append_merkle_tree() {
    use crate::merkle_tree::MerkleTreeBuilder;
    let height = 12;
    let mut ap = AppendOnlyMerkleTree::new(height);
    let coms = (0..200u32).map(U256::from).collect();
    for c in &coms {
        ap.add_leaf(c);
    }
    let tree = MerkleTreeBuilder::with_leafs(height, coms).build();
    assert_eq!(tree.root(), ap.root)
}
