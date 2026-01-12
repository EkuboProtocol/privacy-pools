#!/usr/bin/env bash
#
# Full setup script for private-pools development environment.
# Circuit outputs go to target/circuits/ (separate from scarb's target/dev/)
# This prevents scarb build from deleting circuit artifacts.
#

set -euxo pipefail

# Add asdf shims to PATH if asdf is installed (must be before venv activation)
if [ -d "$HOME/.asdf" ]; then
    export PATH="$HOME/.asdf/shims:$HOME/.asdf/bin:$PATH"
fi

# Verify scarb is available
if ! command -v scarb &> /dev/null; then
    echo "ERROR: scarb not found in PATH"
    exit 1
fi
echo "scarb found: $(which scarb)"

# Create Python virtual environment if it doesn't exist
if [ ! -d .venv ]; then
    echo "Creating Python virtual environment..."
    python -m venv .venv
fi

# Activate virtual environment (preserves PATH)
source .venv/bin/activate

# Install Python dependencies (including garaga)
echo "Installing Python dependencies..."
pip install -q -r requirements.txt

# Verify garaga is available
if ! command -v garaga &> /dev/null; then
    echo "ERROR: garaga not found after pip install"
    exit 1
fi
echo "garaga installed: $(which garaga)"

# Circuit outputs go to target/circuits (separate from scarb's target/dev)
CIRCUITS_DIR=target/circuits
mkdir -p $CIRCUITS_DIR

echo "=== Compiling pool.circom ==="
circom2 circuits/pool.circom --r1cs --wasm --sym --c --output $CIRCUITS_DIR

echo "=== Setting up powers of tau ==="
npx snarkjs powersoftau new bn128 16 $CIRCUITS_DIR/pot16_0000.ptau
echo "random text for contribution" | npx snarkjs powersoftau contribute $CIRCUITS_DIR/pot16_0000.ptau $CIRCUITS_DIR/pot16_0001.ptau --name="First contribution"
npx snarkjs powersoftau prepare phase2 $CIRCUITS_DIR/pot16_0001.ptau $CIRCUITS_DIR/pot16_final.ptau

echo "=== Generating proving key ==="
npx snarkjs groth16 setup $CIRCUITS_DIR/pool.r1cs $CIRCUITS_DIR/pot16_final.ptau $CIRCUITS_DIR/pool_0000.zkey
echo "random text for zkey contribution" | npx snarkjs zkey contribute $CIRCUITS_DIR/pool_0000.zkey $CIRCUITS_DIR/pool_0001.zkey --name="1st Contributor Name"
npx snarkjs zkey export verificationkey $CIRCUITS_DIR/pool_0001.zkey $CIRCUITS_DIR/verification_key.json
npx snarkjs zkey export solidityverifier $CIRCUITS_DIR/pool_0001.zkey $CIRCUITS_DIR/verifier.sol

echo "=== Generating Cairo verifier with garaga ==="
# garaga gen may fail on scarb fmt due to tool version issues, so we allow it to fail
# and handle the formatting ourselves
rm -rf verifier
garaga gen --project-name verifier --system groth16 --vk $CIRCUITS_DIR/verification_key.json || true

# Fix tool versions to match our installed scarb version
echo "scarb 2.13.1" > verifier/.tool-versions

# Format and copy ONLY the constants file
# NOTE: We do NOT copy groth16_verifier.cairo - we maintain a custom version that:
#   - Uses a compile-time constant ECIP_OPS_CLASS_HASH (required for library_call in __validate__)
#   - If UniversalECIP changes, update the constant in pool/src/verifier/groth16_verifier.cairo
scarb fmt
cp verifier/src/groth16_verifier_constants.cairo pool/src/verifier/groth16_verifier_constants.cairo

echo "=== Building Cairo contracts ==="
scarb build

echo "=== Setup complete! ==="
echo "Circuit files: $CIRCUITS_DIR/"
echo "Cairo contracts: target/dev/"
