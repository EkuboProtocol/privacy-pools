use std::io::Write;
use std::path::PathBuf;
use std::process::{Command, Output};
use std::str::{self, FromStr};

use starknet_crypto::Felt;

use crate::circuit::CircuitInput;

#[derive(Debug, Clone)]
pub struct GaragaCliHelper {
    pub dir: PathBuf,
    pub circuit_name: String,
    pub proof_path: PathBuf,
    pub public_inputs_path: PathBuf,
    pub vk_path: PathBuf,
    pub input_path: PathBuf,
}

impl GaragaCliHelper {
    pub fn new(
        dir: impl Into<PathBuf>,
        circuit_name: impl Into<String>,
        vk_path: impl Into<PathBuf>,
    ) -> Self {
        Self {
            dir: dir.into(),
            circuit_name: circuit_name.into(),
            proof_path: "proof_generated.json".into(),
            public_inputs_path: "public_inputs_generated.json".into(),
            vk_path: vk_path.into(),
            input_path: "input_generated.json".into(),
        }
    }
    pub fn save_input(&self, input: CircuitInput) {
        let path = self.witness_dir().join(&self.input_path);
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

        let output = Command::new("node")
            .arg(generator_path)
            .arg(wasm_path)
            .arg(input_path)
            .arg(witness_path)
            .output()
            .unwrap();
        tracing::info!("{}", String::from_utf8(output.stderr.to_owned()).unwrap());
        assert!(output.status.success());
        assert_eq!(output.status.code(), Some(0));
        assert!(output.stderr.is_empty());
        assert!(output.stdout.is_empty());
    }
    pub fn run_prove(&self) {
        let output = Command::new("npx")
            .arg("snarkjs")
            .arg("groth16")
            .arg("prove")
            .arg(format!("{}_0001.zkey", self.circuit_name))
            .arg(format!("{}_js/pool.wtns", self.circuit_name))
            .arg(&self.proof_path)
            .arg(&self.public_inputs_path)
            .current_dir(&self.dir)
            .output()
            .unwrap();
        assert!(output.status.success());
        assert_eq!(output.status.code(), Some(0));
        if !output.stderr.is_empty() {
            println!(
                "Standard Output: {}",
                String::from_utf8_lossy(&output.stderr)
            );
        }
        assert!(output.stdout.is_empty());
    }
    fn witness_dir(&self) -> PathBuf {
        self.dir.join(format!("{}_js", self.circuit_name))
    }
    fn run_calldata_command(&self) -> Output {
        let output = Command::new("garaga")
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
                "Standard Output: {}",
                String::from_utf8_lossy(&output.stderr)
            );
        }
        assert!(output.status.success());
        assert_eq!(output.status.code(), Some(0));
        output
    }
    fn convert_call_data_output(&self, output: Output) -> Vec<Felt> {
        let stdout = str::from_utf8(&output.stdout).unwrap();
        let strings: Vec<&str> = stdout.split_whitespace().skip(1).collect();
        strings
            .into_iter()
            .map(|s| Felt::from_str(s).unwrap())
            .collect()
    }
}
