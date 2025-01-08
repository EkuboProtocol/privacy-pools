use crate::account::{JSONClient, SOAccount};
use starknet::accounts::{ExecutionEncoding, SingleOwnerAccount};
use starknet::core::types::{BlockId, BlockTag};
use starknet::core::utils::cairo_short_string_to_felt;
use starknet::providers::jsonrpc::HttpTransport;
use starknet::providers::{JsonRpcClient, Provider, Url};
use starknet::signers::LocalWallet;
use starknet::{core::types::Felt, macros::felt, signers::SigningKey};
use std::process::{Command, Stdio};
use std::sync::Arc;

use lazy_static::lazy_static;

use super::{find_free_port, SubprocessRunner, TestnetConfig};

lazy_static! {
    // Signing key and address of the katana prefunded account.
    pub static ref PREFUNDED: (SigningKey, Felt) = (
        SigningKey::from_secret_scalar(
            felt!(
                "0xc5b2fcab997346f3ea1c00b002ecf6f382c5f9c9659a3894eb783c5320f912"
            ),
        ),
        felt!(
            "0x127fd5f1fe78a71f8bcd1fec63e3fe2f0486b6ecd5c86a0466c3a21fa5cfcec"
        )
    );

    pub static ref CONFIG: TestnetConfig = TestnetConfig{
        chain_id: "SN_SEPOLIA".to_string(),
        exec: "katana".to_string(),
        log_file_path: "log/katana.log".to_string(),
    };
}

#[derive(Debug)]
pub struct KatanaRunner {
    chain_id: Felt,
    testnet: SubprocessRunner,
    rpc_client: Arc<JSONClient>,
}

impl KatanaRunner {
    pub fn new(config: TestnetConfig) -> Self {
        let katana_port = find_free_port();

        let child = Command::new(config.exec)
            .args(["--chain-id", &config.chain_id])
            .args(["--http.port", &katana_port.to_string()])
            .stdout(Stdio::piped())
            .stderr(Stdio::piped())
            .spawn()
            .expect("failed to start subprocess");

        let testnet = SubprocessRunner::new(child, |l| l.contains("RPC server started"));

        let rpc_url = Url::parse(&format!("http://0.0.0.0:{}/", katana_port)).unwrap();

        let chain_id = cairo_short_string_to_felt(&config.chain_id).expect("Should convert");
        let rpc_client = JsonRpcClient::new(HttpTransport::new(rpc_url.clone()));

        KatanaRunner {
            chain_id,
            testnet,
            rpc_client: Arc::new(rpc_client),
        }
    }

    pub fn load() -> Self {
        KatanaRunner::new(CONFIG.clone())
    }

    pub fn client(&self) -> &JSONClient {
        &self.rpc_client
    }

    pub fn prefunded_account(&self) -> SOAccount {
        single_owner_account_with_encoding(
            &self.rpc_client,
            PREFUNDED.0.clone(),
            PREFUNDED.1,
            self.chain_id,
            ExecutionEncoding::New,
        )
    }
    pub fn other_account_address(&self) -> Felt {
        felt!("0x13d9ee239f33fea4f8785b9e3870ade909e20a9599ae7cd62c1c292b73af1b7")
    }
    pub fn other_account_2_address(&self) -> Felt {
        felt!("0x17cc6ca902ed4e8baa8463a7009ff18cc294fa85a94b4ce6ac30a9ebd6057c7")
    }
}

impl Drop for KatanaRunner {
    fn drop(&mut self) {
        self.testnet.kill();
    }
}

pub fn single_owner_account_with_encoding<'a>(
    client: &'a JSONClient,
    signing_key: SigningKey,
    account_address: Felt,
    chain_id: Felt,
    encoding: ExecutionEncoding,
) -> SOAccount<'a>
where
    &'a JSONClient: Provider,
{
    let mut account = SingleOwnerAccount::new(
        client,
        LocalWallet::from(signing_key),
        account_address,
        chain_id,
        encoding,
    );

    account.set_block_id(BlockId::Tag(BlockTag::Pending)); // For fetching valid nonce
    account
}

#[tokio::test]
async fn test_katana_runner() {
    let runner = KatanaRunner::load();
    runner.client().chain_id().await.unwrap();
}
