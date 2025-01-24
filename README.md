
# Privacy Pools

This repository implements a privacy pool based on the [Privacy Pools Paper](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=4563364). The project leverages Circom circuits, Starknet, and Groth16 for zero-knowledge proof-based transactions, offering private and anonymous financial operations.

---

## Requirements

This repository uses [`asdf`](https://asdf-vm.com) for managing tool versions. Ensure you have `asdf` installed before proceeding.

### Tool Versions
The following tools and versions are required:
- **Python**: 3.10.16
- **Node.js**: 23.5.0
- **Scarb**: 2.9.1
- **Starknet Foundry**: 0.35.1

---

## Setup Instructions

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

4. Compile the Circom circuit:
   ```bash
   mkdir -p target
   circom circuits/pool.circom --r1cs --wasm --sym --c --output target
   ```

5. Generate trusted setup and keys:
   ```bash
   npx snarkjs powersoftau new bn128 16 target/pot16_0000.ptau
   npx snarkjs powersoftau contribute target/pot16_0000.ptau target/pot16_0001.ptau --name="First contribution"
   npx snarkjs powersoftau prepare phase2 target/pot16_0001.ptau target/pot16_final.ptau
   npx snarkjs groth16 setup target/pool.r1cs target/pot16_final.ptau target/pool_0000.zkey
   npx snarkjs zkey contribute target/pool_0000.zkey target/pool_0001.zkey --name="1st Contributor Name"
   npx snarkjs zkey export verificationkey target/pool_0001.zkey target/verification_key.json
   npx snarkjs zkey export solidityverifier target/pool_0001.zkey target/verifier.sol
   ```

6. Generate verifier constants and integrate:
   ```bash
   garaga gen --project-name verifier --system groth16 --vk target/verification_key.json
   cp verifier/src/groth16_verifier_constants.cairo pool/src/verifier/groth16_verifier_constants.cairo
   ```

7. Build the project:
   ```bash
   scarb build
   ```

---

## Running the Example

To demonstrate the functionality, follow these steps:

1. Start a local Starknet development environment:
   ```bash
   starknet-devnet --seed 0
   ```

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
