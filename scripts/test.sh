#!/usr/bin/env bash

set -euxo pipefail

mkdir -p target
circom circuits/test.circom --r1cs --wasm --sym --c --output target
# node target/test_js/generate_witness.js target/test_js/test.wasm circuits/input.json target/test.wtns
npx snarkjs powersoftau new bn128 12 target/pot12_0000.ptau
npx snarkjs powersoftau contribute target/pot12_0000.ptau target/pot12_0001.ptau --name="First contribution"
npx snarkjs powersoftau prepare phase2 target/pot12_0001.ptau target/pot12_final.ptau
npx snarkjs groth16 setup target/test.r1cs target/pot12_final.ptau target/test_0000.zkey
npx snarkjs zkey contribute target/test_0000.zkey target/test_0001.zkey --name="1st Contributor Name"
npx snarkjs zkey export verificationkey target/test_0001.zkey target/verification_key.json
npx snarkjs zkey export solidityverifier target/test_0001.zkey target/verifier.sol
garaga gen --project-name verifier --system groth16 --vk target/verification_key.json
cp verifier/src/groth16_verifier_constants.cairo pool/src/verifier/groth16_verifier_constants.cairo
# cp verifier/src/groth16_verifier.cairo pool/src/verifier/groth16_verifier.cairo
# add pub to trait IGroth16VerifierBN254<TContractState> in pool/src/verifier/groth16_verifier.cairo
scarb build
