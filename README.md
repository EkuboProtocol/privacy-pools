# Privacy Pools

This repository implements a privacy pool based on the [Privacy Pools Paper](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=4563364). The project leverages Circom circuits, Starknet, and Groth16 for zero-knowledge proof-based transactions, offering private and anonymous financial operations.

---

## Requirements

This repository uses [`asdf`](https://asdf-vm.com) for managing tool versions. Ensure you have `asdf` installed before proceeding.

### Tool Versions

The following tools and versions are required:

- **Python**: 3.10.16
- **Node.js**: 23.5.0
- **Circom**: 2.x (install via `npm install -g circom2`)
- **Scarb**: 2.9.1
- **Starknet Foundry**: 0.35.1
- **Katana**: 1.5.0 (local Starknet node for testing)

---

## Setup Instructions

**Quick Setup**: After installing asdf tools, you can use the automated setup script:

   ```bash
   asdf install
   bash scripts/setup.sh
   ```

   This script handles everything: creates Python venv, installs garaga, compiles circuits, generates keys, and builds contracts.

**Manual Setup** (step-by-step):

1. Clone the repository:

   ```bash
   git clone git@github.com:EkuboProtocol/privacy-pools.git
   cd privacy-pools
   ```

2. Install dependencies using `asdf`:

   ```bash
   asdf install
   ```

3. Set up the Python environment:

   ```bash
   python -m venv .venv
   source .venv/bin/activate
   pip install -r requirements.txt
   ```

   **Note**: If using `scripts/setup.sh`, this step is done automatically.

   **Important**: This installs the `garaga` CLI tool which is required for:
   - Step 8 (generating verifier constants)
   - Running tests (ZK proof generation)
   
   Verify installation: `which garaga` should return a path.

4. Install Katana (local Starknet node for testing):

   Katana is installed automatically via `asdf install` (see `.tool-versions`). If you need to install it manually:

   ```bash
   curl -L https://install.dojoengine.org | bash
   ```

   This installs `dojoup` which includes Katana. After installation, restart your terminal or run `asdf reshim` to make `katana` available in your PATH.

5. Install Circom 2.x compiler:

   ```bash
   npm install -g circom2
   ```

6. Compile the Circom circuit:

   ```bash
   mkdir -p target
   circom2 circuits/pool.circom --r1cs --wasm --sym --c --output target
   ```

   **Verify**: After this step, you should have `target/pool_js/` directory containing `generate_witness.js`, `pool.wasm`, and other required files. If these files are missing, the circuit compilation failed.

7. Generate trusted setup and keys:

   ```bash
   npx snarkjs powersoftau new bn128 16 target/pot16_0000.ptau
   npx snarkjs powersoftau contribute target/pot16_0000.ptau target/pot16_0001.ptau --name="First contribution"
   npx snarkjs powersoftau prepare phase2 target/pot16_0001.ptau target/pot16_final.ptau
   npx snarkjs groth16 setup target/pool.r1cs target/pot16_final.ptau target/pool_0000.zkey
   npx snarkjs zkey contribute target/pool_0000.zkey target/pool_0001.zkey --name="1st Contributor Name"
   npx snarkjs zkey export verificationkey target/pool_0001.zkey target/verification_key.json
   npx snarkjs zkey export solidityverifier target/pool_0001.zkey target/verifier.sol
   ```

   **Important**: The `pool_0001.zkey` file is required for proof generation. Make sure this file exists in the `target/` directory after completing this step.

8. Generate verifier constants and integrate:

   ```bash
   garaga gen --project-name verifier --system groth16 --vk target/verification_key.json
   cp verifier/src/groth16_verifier_constants.cairo pool/src/verifier/groth16_verifier_constants.cairo
   ```

9. Build the project:

   ```bash
   scarb build
   cargo build --workspace
   ```

   **Note**: Both `scarb build` (for Cairo contracts) and `cargo build` (for Rust code) are required.

10. Run tests:

   **⚠️ Important**: Make sure you have completed all previous steps (especially steps 3, 6-9) before running tests. The tests require:
   - Python venv activated with garaga installed (`source .venv/bin/activate`)
   - Circuit compilation artifacts (`target/pool_js/` directory)
   - Trusted setup files (`target/pool_0001.zkey`)
   - Verification key (`target/verification_key.json`)
   - Compiled Cairo contracts
   - Compiled Rust code

    The tests use Katana as the local Starknet node. You have two options:

    **Option A: Let tests start Katana automatically (recommended)**
    ```bash
    cargo test
    ```

    **Option B: Use an existing Katana instance**
    If you have `katana` already running on `http://localhost:5050`:
    ```bash
    USE_EXISTING_DEVNET=1 cargo test
    ```

    **Important**: This project requires a Starknet node that supports `BlockTag::Pending` (which is standard for real Starknet networks). Katana supports this, but `starknet-devnet` does not. Therefore, **Katana is required** for running tests.

---

## Running the Example

To demonstrate the functionality, follow these steps:

1. Start a local Starknet development environment:

   **Using Katana (required)**
   ```bash
   katana --chain-id SN_SEPOLIA
   ```

   **Note**: Katana is required because this project uses `BlockTag::Pending`, which `starknet-devnet` does not support. Katana provides full compatibility with real Starknet network behavior.

2. Declare and deploy contracts:

   ```bash
   sncast declare --contract-name ERC20Upgradeable
   sncast declare --contract-name UniversalECIP
   sncast declare --contract-name Groth16VerifierBN254
   sncast declare --contract-name Pool

   sncast deploy --class-hash <hash> --constructor-calldata <calldata>
   ```

3. Perform operations:

   - Approve token transfers:
     ```bash
     sncast invoke --contract-address <address> --function approve --calldata <calldata>
     ```
   - Run Association Set Provider:
     ```bash
     cargo run -p asp -- --contract-address <pool-address>
     ```
   - Deposit funds:
     ```bash
     cargo run -p cli -- deposit --pool-address <pool-address> --secret <secret> --nullifier <nullifier> --amount <amount>
     ```
   - Withdraw funds:
     ```bash
     cargo run -p cli -- withdraw --pool-address <pool-address> --secret <secret> --nullifier <nullifier> --amount <amount> --refund-secret <refund-secret> --refund-nullifier <refund-nullifier> --refund-amount <refund-amount> --recipient <recipient-address> --merkle-tree-root <merkle-tree-root> --fee <fee>
     ```
   - Query balance:
     ```bash
     sncast call --contract-address <address> --function balance_of --calldata <calldata>
     ```

4. Withdraw fees:
   ```bash
   sncast invoke --contract-address <pool-address> --function withdraw_fee --calldata <calldata>
   ```

---

## Contribution

Contributions are welcome! Please follow the standard GitHub flow: fork, branch, commit, and open a pull request.

---

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.
