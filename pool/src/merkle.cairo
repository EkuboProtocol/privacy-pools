#[starknet::component]
pub mod MerkleTreeComponent {
    use core::starknet::storage::{
        StoragePointerReadAccess, StoragePointerWriteAccess, Map, StoragePathEntry, Vec,
        MutableVecTrait,
    };

    use super::precomputed_hashes;
    use crate::hash;

    #[storage]
    pub struct Storage {
        free_leaf_index: u64,
        height: u64,
        precomputed: Vec<u256>,
        left_path: Vec<u256>,
        pub roots: Map<u256, bool>,
        pub root: u256,
    }

    #[event]
    #[derive(Drop, starknet::Event)]
    pub enum Event {}

    #[generate_trait]
    pub impl InternalImpl<
        TContractState, +HasComponent<TContractState>,
    > of InternalTrait<TContractState> {
        fn initializer(ref self: ComponentState<TContractState>, height: u32) {
            let precomputed = precomputed_hashes(height);
            self.roots.entry(*precomputed[height - 1]).write(true);
            self.root.write(*precomputed[height - 1]);
            self.free_leaf_index.write(0);
            self.height.write(height.into());
            for p in precomputed {
                self.precomputed.append().write(p);
                self.left_path.append().write(p);
            }
        }
        fn add_leaf(ref self: ComponentState<TContractState>, leaf: u256) {
            let mut hash_ = leaf;
            let mut index = self.free_leaf_index.read();

            self.free_leaf_index.write(index + 1);

            let height = self.height.read();

            for i in 1..height {
                let cur = if (index % 2) == 0 {
                    let h = hash(hash_, self.precomputed.at(i - 1).read());
                    self.left_path.at(i - 1).write(hash_);
                    h
                } else {
                    hash(self.left_path.at(i - 1).read(), hash_)
                };
                index = index / 2;
                hash_ = cur;
            };
            self.left_path.at(height - 1).write(hash_);
            self.roots.entry(hash_).write(true);
            self.root.write(hash_);
        }
    }
}

fn precomputed_hashes(size: u32) -> Array<u256> {
    let mut arr = array![];
    arr.append(0);
    for i in 1..size {
        arr.append(crate::hash(*arr[i - 1], *arr[i - 1]));
    };
    arr
}
