use std::io::Write;
use std::path::PathBuf;

use cainome::cairo_serde::U256;
use serde::{Deserialize, Serialize};
use starknet_crypto::Felt;
use tokio::sync::Mutex;

use lazy_static::lazy_static;

lazy_static! {
    static ref SWAP_PROOF_MUTEX: Mutex<()> = Mutex::new(());
}

/// Input structure for the swap circuit
/// 
/// This matches the signals defined in circuits/swap.circom
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(rename_all = "camelCase")]
pub struct SwapCircuitInput {
    // Public inputs
    pub root: U256,
    pub nullifier_hash: U256,
    pub token_in: U256,
    pub token_out: U256,
    pub amount_in: U256,
    pub min_amount_out: U256,
    pub new_balance_commitment: U256,

    // Private inputs
    pub secret: U256,
    pub nullifier: U256,
    pub old_balance: U256,
    pub new_secret: U256,
    pub new_nullifier: U256,
    pub expected_output_amount: U256,
    pub path_elements: Vec<U256>,
    pub path_indices: Vec<U256>,
}

/// Prover for swap circuit
/// 
/// Uses garaga CLI to generate Groth16 proofs for private swaps
pub struct SwapProver {
    cli: SwapGaragaCliHelper,
}

impl Default for SwapProver {
    fn default() -> Self {
        Self::new("./target")
    }
}

impl SwapProver {
    pub fn new(dir: impl Into<PathBuf>) -> Self {
        Self {
            cli: SwapGaragaCliHelper::new(dir, "swap", "swap_verification_key.json"),
        }
    }

    /// Generate proof calldata for a swap
    /// 
    /// This is async to allow for concurrent proof requests while ensuring
    /// only one proof generation runs at a time (due to file system operations)
    pub async fn get_calldata(&self, input: SwapCircuitInput) -> Vec<Felt> {
        let _lock = SWAP_PROOF_MUTEX.lock().await;
        self.cli.save_input(&input);
        self.cli.generate_witness();
        self.cli.run_prove();
        self.cli.get_calldata()
    }
}

/// Helper for swap-specific garaga CLI operations
/// 
/// Similar to GaragaCliHelper but handles SwapCircuitInput
#[derive(Debug, Clone)]
pub struct SwapGaragaCliHelper {
    pub dir: PathBuf,
    pub circuit_name: String,
    pub proof_path: PathBuf,
    pub public_inputs_path: PathBuf,
    pub vk_path: PathBuf,
    pub input_path: PathBuf,
}

impl SwapGaragaCliHelper {
    pub fn new(
        dir: impl Into<PathBuf>,
        circuit_name: impl Into<String>,
        vk_path: impl Into<PathBuf>,
    ) -> Self {
        Self {
            dir: dir.into(),
            circuit_name: circuit_name.into(),
            proof_path: "swap_proof_generated.json".into(),
            public_inputs_path: "swap_public_inputs_generated.json".into(),
            vk_path: vk_path.into(),
            input_path: "input_generated.json".into(),
        }
    }

    pub fn save_input(&self, input: &SwapCircuitInput) {
        let witness_dir = self.witness_dir();
        std::fs::create_dir_all(&witness_dir).unwrap();
        let path = witness_dir.join(&self.input_path);
        std::fs::File::create(path)
            .unwrap()
            .write_all(serde_json::to_string_pretty(&input).unwrap().as_bytes())
            .unwrap();
    }

    pub fn get_calldata(&self) -> Vec<Felt> {
        self.convert_call_data_output(self.run_calldata_command())
    }

    pub fn generate_witness(&self) {
        let generator_path = PathBuf::new()
            .join(self.dir.to_owned())
            .join(format!("{}_js/generate_witness.js", self.circuit_name));
        let wasm_path = PathBuf::new().join(self.dir.to_owned()).join(format!(
            "{}_js/{}.wasm",
            self.circuit_name, self.circuit_name
        ));
        let input_path = PathBuf::new()
            .join(self.dir.to_owned())
            .join(format!("{}_js/input_generated.json", self.circuit_name));
        let witness_path = PathBuf::new().join(self.dir.to_owned()).join(format!(
            "{}_js/{}.wtns",
            self.circuit_name, self.circuit_name
        ));

        let output = std::process::Command::new("node")
            .arg(&generator_path)
            .arg(&wasm_path)
            .arg(&input_path)
            .arg(&witness_path)
            .output()
            .unwrap();

        if !output.stderr.is_empty() {
            tracing::error!(
                "Swap witness generation stderr: {}",
                String::from_utf8_lossy(&output.stderr)
            );
        }
        if !output.stdout.is_empty() {
            tracing::error!(
                "Swap witness generation stdout: {}",
                String::from_utf8_lossy(&output.stdout)
            );
        }
        if !output.status.success() {
            panic!(
                "Swap witness generation failed: status={:?}, stderr={}, stdout={}, generator_path={}, wasm_path={}, input_path={}, witness_path={}",
                output.status,
                String::from_utf8_lossy(&output.stderr),
                String::from_utf8_lossy(&output.stdout),
                generator_path.display(),
                wasm_path.display(),
                input_path.display(),
                witness_path.display()
            );
        }
        assert_eq!(output.status.code(), Some(0));
        assert!(output.stderr.is_empty());
        assert!(output.stdout.is_empty());
    }

    pub fn run_prove(&self) {
        let output = std::process::Command::new("npx")
            .arg("snarkjs")
            .arg("groth16")
            .arg("prove")
            .arg(format!("{}_final.zkey", self.circuit_name))
            .arg(format!("{}_js/{}.wtns", self.circuit_name, self.circuit_name))
            .arg(&self.proof_path)
            .arg(&self.public_inputs_path)
            .current_dir(&self.dir)
            .output()
            .unwrap();

        assert!(output.status.success());
        assert_eq!(output.status.code(), Some(0));
        if !output.stderr.is_empty() {
            println!(
                "Swap prove stderr: {}",
                String::from_utf8_lossy(&output.stderr)
            );
        }
        assert!(output.stdout.is_empty());
    }

    fn witness_dir(&self) -> PathBuf {
        self.dir.join(format!("{}_js", self.circuit_name))
    }

    fn run_calldata_command(&self) -> std::process::Output {
        let output = std::process::Command::new("garaga")
            .arg("calldata")
            .arg("--vk")
            .arg(&self.vk_path)
            .arg("--proof")
            .arg(&self.proof_path)
            .arg("--public-inputs")
            .arg(&self.public_inputs_path)
            .arg("--system")
            .arg("groth16")
            .current_dir(&self.dir)
            .output()
            .expect("check if garaga is installed");

        if !output.stderr.is_empty() {
            println!(
                "Garaga calldata stderr: {}",
                String::from_utf8_lossy(&output.stderr)
            );
        }
        assert!(output.status.success());
        assert_eq!(output.status.code(), Some(0));
        output
    }

    fn convert_call_data_output(&self, output: std::process::Output) -> Vec<Felt> {
        let stdout = std::str::from_utf8(&output.stdout).unwrap();
        let strings: Vec<&str> = stdout.split_whitespace().skip(1).collect();
        strings
            .into_iter()
            .map(|s| std::str::FromStr::from_str(s).unwrap())
            .collect()
    }
}

/// Builder for creating SwapCircuitInput from commitment and swap parameters
pub struct SwapInputBuilder {
    pub commitment: SwapCommitment,
    pub token_in: Felt,
    pub token_out: Felt,
    pub amount_in: U256,
    pub min_amount_out: U256,
    pub expected_output_amount: U256,
    pub new_secret: U256,
    pub new_nullifier: U256,
    pub merkle_root: U256,
    pub path_elements: Vec<U256>,
    pub path_indices: Vec<bool>,
}

/// Commitment structure for swaps (includes balance)
#[derive(Debug, Clone)]
pub struct SwapCommitment {
    pub secret: U256,
    pub nullifier: U256,
    pub balance: U256,
}

impl SwapCommitment {
    pub fn new(secret: impl Into<U256>, nullifier: impl Into<U256>, balance: impl Into<U256>) -> Self {
        Self {
            secret: secret.into(),
            nullifier: nullifier.into(),
            balance: balance.into(),
        }
    }

    /// Compute the commitment hash: Hash(Hash(secret, nullifier), balance)
    pub fn hash(&self) -> U256 {
        let secret_nullifier_hash = hash::hash(self.secret, self.nullifier);
        hash::hash(secret_nullifier_hash, self.balance)
    }

    /// Compute the nullifier hash: Hash(nullifier)
    pub fn nullifier_hash(&self) -> U256 {
        hash::hash_one(self.nullifier)
    }
}

impl SwapInputBuilder {
    pub fn build(&self) -> SwapCircuitInput {
        // Compute new balance after swap
        let new_balance = self.commitment.balance - self.amount_in + self.expected_output_amount;

        // Create new commitment with updated balance
        let new_commitment = SwapCommitment::new(
            self.new_secret,
            self.new_nullifier,
            new_balance,
        );

        SwapCircuitInput {
            root: self.merkle_root,
            nullifier_hash: self.commitment.nullifier_hash(),
            token_in: felt_to_u256(self.token_in),
            token_out: felt_to_u256(self.token_out),
            amount_in: self.amount_in,
            min_amount_out: self.min_amount_out,
            new_balance_commitment: new_commitment.hash(),
            secret: self.commitment.secret,
            nullifier: self.commitment.nullifier,
            old_balance: self.commitment.balance,
            new_secret: self.new_secret,
            new_nullifier: self.new_nullifier,
            expected_output_amount: self.expected_output_amount,
            path_elements: self.path_elements.clone(),
            path_indices: self
                .path_indices
                .iter()
                .map(|&b| if b { U256::ONE } else { U256::ZERO })
                .collect(),
        }
    }
}

fn felt_to_u256(felt: Felt) -> U256 {
    let bytes = felt.to_bytes_be();
    U256 {
        low: u128::from_be_bytes(bytes[16..32].try_into().unwrap()),
        high: u128::from_be_bytes(bytes[0..16].try_into().unwrap()),
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_swap_commitment_hash() {
        let commitment = SwapCommitment::new(12345u64, 67890u64, 1000u64);
        let hash = commitment.hash();
        // Hash should be non-zero
        assert!(hash.low != 0 || hash.high != 0);
    }

    #[test]
    fn test_swap_input_builder() {
        let commitment = SwapCommitment::new(12345u64, 67890u64, 1000u64);
        
        let builder = SwapInputBuilder {
            commitment,
            token_in: Felt::from(0x1234u64),
            token_out: Felt::from(0x5678u64),
            amount_in: U256::from(100u64),
            min_amount_out: U256::from(90u64),
            expected_output_amount: U256::from(95u64),
            new_secret: U256::from(11111u64),
            new_nullifier: U256::from(22222u64),
            merkle_root: U256::from(0u64),
            path_elements: vec![U256::ZERO; 24],
            path_indices: vec![false; 24],
        };

        let input = builder.build();
        
        // Verify amounts
        assert_eq!(input.amount_in, U256::from(100u64));
        assert_eq!(input.min_amount_out, U256::from(90u64));
    }
}

