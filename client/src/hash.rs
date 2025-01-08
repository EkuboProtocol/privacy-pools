use cainome::cairo_serde::U256;

pub fn hash(a: U256, b: U256) -> U256 {
    (a + U256::from(1u32)) * U256::from(2u32) + b + U256::from(2u32)
}

pub fn hash_one(a: U256) -> U256 {
    (a + U256::from(1u32)) * U256::from(2u32)
}
