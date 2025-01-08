mod ecip;
mod merkle;
mod pool;
mod verifier;

fn hash(a: u256, b: u256) -> u256 {
    (a + 1) * 2 + b + 2
}

fn hash_one(a: u256) -> u256 {
    (a + 1) * 2
}
