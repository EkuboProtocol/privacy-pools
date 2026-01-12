#!/usr/bin/env bash
# Compile swap circuit and generate verification keys for Ekubo private swaps

set -euxo pipefail

# Add asdf shims to PATH if asdf is installed
if [ -d "$HOME/.asdf" ]; then
    export PATH="$HOME/.asdf/shims:$PATH"
fi

# Activate Python virtual environment if it exists
if [ -f .venv/bin/activate ]; then
    source .venv/bin/activate
fi

cd "$(dirname "$0")/.."

echo "============================================"
echo "Compiling swap circuit..."
echo "============================================"

mkdir -p target

# Check if circom is available (try both circom and circom2)
if command -v circom2 &> /dev/null; then
    CIRCOM_CMD="circom2"
elif command -v circom &> /dev/null; then
    CIRCOM_CMD="circom"
else
    echo "Error: circom not found. Please install circom 2.x"
    exit 1
fi

# Compile swap circuit
$CIRCOM_CMD circuits/swap.circom --r1cs --wasm --sym --c --output target

echo "============================================"
echo "Setting up Groth16 proving key..."
echo "============================================"

# Check if pot16_final.ptau exists (from pool compilation)
if [ ! -f target/pot16_final.ptau ]; then
    echo "Powers of Tau not found. Generating..."
    npx snarkjs powersoftau new bn128 16 target/pot16_0000.ptau
    echo "random text for contribution" | npx snarkjs powersoftau contribute target/pot16_0000.ptau target/pot16_0001.ptau --name="First contribution"
    npx snarkjs powersoftau prepare phase2 target/pot16_0001.ptau target/pot16_final.ptau
fi

# Generate swap proving key
echo "Generating swap zkey..."
npx snarkjs groth16 setup target/swap.r1cs target/pot16_final.ptau target/swap_0000.zkey

echo "Contributing to ceremony..."
echo "random text for swap zkey contribution" | npx snarkjs zkey contribute target/swap_0000.zkey target/swap_final.zkey --name="Swap Contributor"

echo "Exporting verification key..."
npx snarkjs zkey export verificationkey target/swap_final.zkey target/swap_verification_key.json

echo "Exporting Solidity verifier (optional)..."
npx snarkjs zkey export solidityverifier target/swap_final.zkey target/swap_verifier.sol

echo "============================================"
echo "Generating Cairo verifier with garaga..."
echo "============================================"

# Generate Cairo verifier for swap circuit
if command -v garaga &> /dev/null; then
    garaga gen --project-name swap_verifier --system groth16 --vk target/swap_verification_key.json
    
    # Copy to pool verifier directory
    mkdir -p pool/src/verifier/swap
    cp swap_verifier/src/groth16_verifier_constants.cairo pool/src/verifier/swap/groth16_verifier_constants.cairo
    echo "Cairo verifier constants copied to pool/src/verifier/swap/"
else
    echo "Warning: garaga not found. Skipping Cairo verifier generation."
    echo "Install garaga to generate Cairo verification contracts."
fi

echo "============================================"
echo "Swap circuit compilation complete!"
echo "============================================"
echo ""
echo "Generated files:"
echo "  - target/swap.r1cs           (circuit constraints)"
echo "  - target/swap_js/            (WASM witness generator)"
echo "  - target/swap_final.zkey     (proving key)"
echo "  - target/swap_verification_key.json (verification key)"
echo ""
echo "To test witness generation:"
echo "  node target/swap_js/generate_witness.js target/swap_js/swap.wasm input.json witness.wtns"

