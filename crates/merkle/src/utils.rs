use cainome::cairo_serde::U256;
use hash::hash;

pub fn precomputed_hashes(size: usize) -> Vec<U256> {
    let mut arr = Vec::new();
    arr.push(U256::ZERO);

    for i in 1..size {
        let last = arr[i - 1];
        arr.push(hash(last, last));
    }

    arr
}
