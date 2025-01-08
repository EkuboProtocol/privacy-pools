#!/usr/bin/env bash

set -euxo pipefail

mkdir -p target
circom circuits/example.circom --r1cs --wasm --sym --c --output target
node target/example_js/generate_witness.js target/example_js/example.wasm circuits/input.json target/example.wtns
npx snarkjs powersoftau new bn128 12 target/pot12_0000.ptau
npx snarkjs powersoftau contribute target/pot12_0000.ptau target/pot12_0001.ptau --name="First contribution"
npx snarkjs powersoftau prepare phase2 target/pot12_0001.ptau target/pot12_final.ptau
npx snarkjs groth16 setup target/example.r1cs target/pot12_final.ptau target/example_0000.zkey
npx snarkjs zkey contribute target/example_0000.zkey target/example_0001.zkey --name="1st Contributor Name"
npx snarkjs zkey export verificationkey target/example_0001.zkey target/verification_key.json
npx snarkjs zkey export solidityverifier target/example_0001.zkey target/verifier.sol
source .venv/bin/activate
garaga gen --project-name verifier --system groth16 --vk target/verification_key.json
deactivate
rm verifier/.tools-versions
