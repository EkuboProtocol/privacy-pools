mod account;
mod ecip;
mod merkle;
mod pool;
mod verifier;
mod poseidon;

use core::circuit::u384;
use poseidon::run_poseidon_grumpkin_circuit;

fn hash(a: u256, b: u256) -> u256 {
    let a: u384 = a.into();
    let b: u384 = b.into();
    run_poseidon_grumpkin_circuit(a, b).try_into().unwrap()
}

fn hash_one(a: u256) -> u256 {
    hash(a, a)
}
