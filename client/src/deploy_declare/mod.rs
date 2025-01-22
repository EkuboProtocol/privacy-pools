pub mod declare;
pub mod deploy;
pub mod pending;

use std::str::FromStr;

use cainome::cairo_serde::{ByteArray, CairoSerde, U256};
use declare::ContractDeclaration;
use deploy::{ContractDeployment, DeployResult};
use lazy_static::lazy_static;
use starknet::{
    accounts::Account, core::types::DeclareTransactionResult, macros::felt, signers::SigningKey,
};
use starknet_crypto::Felt;

use crate::account::{JSONClient, SOAccount};

lazy_static! {
    pub static ref UDC_ADDRESS: Felt =
        felt!("0x041a78e741e5af2fec34b695679bc6891742439f7afb8484ecd7766661ad02bf");
    pub static ref FEE_TOKEN_ADDRESS: Felt =
        felt!("0x049d36570d4e46f48e99674bd3fcc84644ddd6b96f7c741b1562b82f9e004dc7");
    pub static ref ERC20_CONTRACT_CLASS_HASH: Felt =
        felt!("0x02a8846878b6ad1f54f6ba46f5f40e11cee755c677f130b2c4b60566c9003f1f");
}

#[derive(Debug)]
pub struct ERC20ContractDeployer<'a, const D: u8> {
    account: &'a SOAccount<'a>,
    client: &'a JSONClient,
    erc20_declaration: Option<DeclareTransactionResult>,
    erc20_deployment: Option<DeployResult>,
}

impl<'a> ERC20ContractDeployer<'a, 0> {
    pub fn new(account: &'a SOAccount<'a>, client: &'a JSONClient) -> ERC20ContractDeployer<'a, 0> {
        ERC20ContractDeployer {
            account,
            client,
            erc20_declaration: None,
            erc20_deployment: None,
        }
    }
}

impl<'a> ERC20ContractDeployer<'a, 0> {
    pub async fn declare_erc20_contract(self) -> ERC20ContractDeployer<'a, 1> {
        let declaration = ContractDeclaration::erc20(self.client)
            .declare(self.account)
            .await
            .unwrap()
            .wait_for_completion()
            .await;
        ERC20ContractDeployer {
            account: self.account,
            client: self.client,
            erc20_declaration: Some(declaration),
            erc20_deployment: None,
        }
    }
}

impl<'a> ERC20ContractDeployer<'a, 1> {
    pub async fn deploy_erc20_contract(self) -> ERC20ContractDeployer<'a, 2> {
        let declaration = self.erc20_declaration.unwrap();
        let name = <ByteArray as CairoSerde>::cairo_serialize(&ByteArray {
            data: vec![],
            pending_word: Felt::ZERO,
            pending_word_len: 0,
        });
        let symbol = <ByteArray as CairoSerde>::cairo_serialize(&ByteArray {
            data: vec![],
            pending_word: Felt::ZERO,
            pending_word_len: 0,
        });
        let fixed_suply =
            <U256 as CairoSerde>::cairo_serialize(&U256::from_str("200000000").unwrap());
        let recipient = self.account.address();
        let owner = self.account.address();

        let mut calldata = vec![];
        calldata.extend(&name);
        calldata.extend(symbol);
        calldata.extend(fixed_suply);
        calldata.push(recipient);
        calldata.push(owner);

        let deployment = ContractDeployment::new(self.client)
            .deploy(
                calldata,
                self.account.address(),
                self.account,
                declaration.class_hash,
            )
            .await
            .unwrap()
            .wait_for_completion()
            .await;

        tracing::info!(
            "ERC20 contract address: {}",
            deployment.deployed_address.to_hex_string()
        );
        ERC20ContractDeployer {
            account: self.account,
            client: self.client,
            erc20_declaration: Some(declaration),
            erc20_deployment: Some(deployment),
        }
    }
}

impl ERC20ContractDeployer<'_, 2> {
    pub fn address(&self) -> Felt {
        self.erc20_deployment.as_ref().unwrap().deployed_address
    }
}

#[derive(Debug)]
pub struct PoolContractDeployer<'a, const V: bool, const P: bool, const D: bool> {
    account: &'a SOAccount<'a>,
    client: &'a JSONClient,
    verifier_declaration: Option<DeclareTransactionResult>,
    pool_declaration: Option<DeclareTransactionResult>,
    verifier_deployment: Option<DeployResult>,
}

impl<'a> PoolContractDeployer<'a, false, false, false> {
    pub fn new(
        account: &'a SOAccount<'a>,
        client: &'a JSONClient,
    ) -> PoolContractDeployer<'a, false, false, false> {
        PoolContractDeployer {
            account,
            client,
            verifier_declaration: None,
            pool_declaration: None,
            verifier_deployment: None,
        }
    }
}
impl<'a, const P: bool> PoolContractDeployer<'a, false, P, false> {
    pub async fn declare_verifier_contract(self) -> PoolContractDeployer<'a, true, P, false> {
        let _ecip_declaration = ContractDeclaration::universal_ecip(self.client)
            .declare(self.account)
            .await
            .unwrap()
            .wait_for_completion()
            .await;
        dbg!(_ecip_declaration.class_hash);
        let declaration = ContractDeclaration::verifier(self.client)
            .declare(self.account)
            .await
            .unwrap()
            .wait_for_completion()
            .await;
        PoolContractDeployer {
            account: self.account,
            client: self.client,
            verifier_declaration: Some(declaration),
            pool_declaration: self.pool_declaration,
            verifier_deployment: self.verifier_deployment,
        }
    }
}
impl<'a, const V: bool, const D: bool> PoolContractDeployer<'a, V, false, D> {
    pub async fn declare_pool_contract(self) -> PoolContractDeployer<'a, V, true, D> {
        let declaration = ContractDeclaration::pool(self.client)
            .declare(self.account)
            .await
            .unwrap()
            .wait_for_completion()
            .await;
        PoolContractDeployer {
            account: self.account,
            client: self.client,
            verifier_declaration: self.verifier_declaration,
            pool_declaration: Some(declaration),
            verifier_deployment: self.verifier_deployment,
        }
    }
}

impl<'a, const P: bool> PoolContractDeployer<'a, true, P, false> {
    pub async fn deploy_verifier_contract(self) -> PoolContractDeployer<'a, true, P, true> {
        let declaration = self.verifier_declaration.unwrap();
        let deployment = ContractDeployment::new(self.client)
            .deploy(
                vec![],
                self.account.address(),
                self.account,
                declaration.class_hash,
            )
            .await
            .unwrap()
            .wait_for_completion()
            .await;

        tracing::info!(
            "Verifier contract address: {}",
            deployment.deployed_address.to_hex_string()
        );
        PoolContractDeployer {
            account: self.account,
            client: self.client,
            verifier_declaration: Some(declaration),
            pool_declaration: self.pool_declaration,
            verifier_deployment: Some(deployment),
        }
    }
}

impl<'a> PoolContractDeployer<'a, true, true, true> {
    pub async fn deploy_pool_contract(
        &self,
        transfer_token_address: Felt,
        min_fee: impl Into<U256>,
    ) -> DeployResult {
        let min_fee = min_fee.into();
        let constructor_calldata = vec![
            self.account.address(),
            transfer_token_address,
            self.verifier_deployment.as_ref().unwrap().deployed_address,
            min_fee.low.into(),
            min_fee.high.into(),
        ];
        let deployment = ContractDeployment::new(self.client)
            .deploy(
                constructor_calldata,
                SigningKey::from_random().secret_scalar(),
                self.account,
                self.pool_declaration.as_ref().unwrap().class_hash,
            )
            .await
            .unwrap()
            .wait_for_completion()
            .await;

        tracing::info!(
            "Pool contract address: {}",
            deployment.deployed_address.to_hex_string()
        );
        deployment
    }
    pub fn verifier_address(&self) -> Felt {
        self.verifier_deployment.as_ref().unwrap().deployed_address
    }
}
