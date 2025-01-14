use starknet_crypto::Felt;
use tokio::sync::Mutex;
mod garaga_cli_helper;

use crate::circuit::CircuitInput;

use garaga_cli_helper::GaragaCliHelper;
use lazy_static::lazy_static;

lazy_static! {
    static ref PROOF_MUTEX: Mutex<()> = Mutex::new(());
}

pub struct Prover {
    cli: GaragaCliHelper,
}

impl Default for Prover {
    fn default() -> Self {
        Self::new()
    }
}

impl Prover {
    pub fn new() -> Self {
        Self {
            cli: GaragaCliHelper::new("../target", "withdraw", "../target/verification_key.json"),
        }
    }
    pub async fn get_calldata(&self, input: CircuitInput) -> Vec<Felt> {
        let _lock = PROOF_MUTEX.lock().await;
        self.cli.save_input(input);
        self.cli.generate_witness();
        self.cli.run_prove();
        self.cli.get_calldata()
    }
}
