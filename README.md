- `python -m venv .venv`
- `source .venv/bin/activate`
- `pip install --upgrade pip`
- `pip install -r requirements.txt`
- `cargo install --git https://github.com/iden3/circom --tag v2.2.1`


- `mkdir -p target`
- `circom circuits/example.circom --r1cs --wasm --sym --c --output target`
- `node target/example_js/generate_witness.js target/example_js/example.wasm circuits/input.json target/example.wtns`
- `npx snarkjs powersoftau new bn128 12 target/pot12_0000.ptau`
- `npx snarkjs powersoftau contribute target/pot12_0000.ptau target/pot12_0001.ptau --name="First contribution" -v`
- `npx snarkjs powersoftau prepare phase2 target/pot12_0001.ptau target/pot12_final.ptau`
- `npx snarkjs groth16 setup target/example.r1cs target/pot12_final.ptau target/example_0000.zkey`
- `npx snarkjs zkey contribute target/example_0000.zkey target/example_0001.zkey --name="1st Contributor Name" -v`
- `npx snarkjs zkey export verificationkey target/example_0001.zkey target/verification_key.json`
- `npx snarkjs zkey export solidityverifier target/example_0001.zkey target/verifier.sol`
- `garaga gen --project-name groth16_verifier --system groth16 --vk target/verification_key.json`
