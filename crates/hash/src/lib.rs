pub mod constants;
pub mod field;
pub mod functional;

use ark_ff::{BigInteger, PrimeField};
use cainome::cairo_serde::U256;
use field::Fr;

pub fn hash(a: U256, b: U256) -> U256 {
    let a = Fr::from_be_bytes_mod_order(&a.to_bytes_be());
    let b = Fr::from_be_bytes_mod_order(&b.to_bytes_be());
    let result = functional::poseidon_hash(a, b);

    U256::from_bytes_be(&result.into_bigint().to_bytes_be().try_into().unwrap())
}

pub fn hash_one(a: U256) -> U256 {
    hash(a, a)
}
