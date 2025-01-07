- `python -m venv .venv`
- `source .venv/bin/activate`
- `pip install --upgrade pip`
- `pip install -r requirements.txt`
- `cargo install --git https://github.com/iden3/circom --tag v2.2.1`


- `mkdir -p target`
- `circom circuits/example.circom --r1cs --wasm --sym --c --output target`
- `node target/example_js/generate_witness.js target/example_js/example.wasm circuits/input.json target/example.wtns`
- `npx snarkjs powersoftau new bn128 12 target/powersoftau_0000.ptau`
- `npx snarkjs powersoftau prepare phase2 target/powersoftau_0000.ptau target/powersoftau_final.ptau`
- `npx snarkjs groth16 setup target/example.r1cs target/powersoftau_final.ptau target/example_0000.zkey`
- `npx snarkjs zkey export verificationkey target/example_0000.zkey target/verification_key.json`
- `npx snarkjs zkey export solidityverifier target/example_0000.zkey target/verifier.sol`
