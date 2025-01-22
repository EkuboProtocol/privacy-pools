pub const VERIFIER_SIERRA_STR: &str =
    include_str!("../../../target/dev/pool_Groth16VerifierBN254.contract_class.json");
pub const VERIFIER_CASM_STR: &str =
    include_str!("../../../target/dev/pool_Groth16VerifierBN254.compiled_contract_class.json");
pub const POOL_SIERRA_STR: &str = include_str!("../../../target/dev/pool_Pool.contract_class.json");
pub const POOL_CASM_STR: &str =
    include_str!("../../../target/dev/pool_Pool.compiled_contract_class.json");
pub const UNIVERSAL_ECIP_SIERRA_STR: &str =
    include_str!("../../../target/dev/pool_UniversalECIP.contract_class.json");
pub const UNIVERSAL_ECIP_CASM_STR: &str =
    include_str!("../../../target/dev/pool_UniversalECIP.compiled_contract_class.json");
pub const ERC20_SIERRA_STR: &str =
    include_str!("../../../target/dev/pool_ERC20Upgradeable.contract_class.json");
pub const ERC20_CASM_STR: &str =
    include_str!("../../../target/dev/pool_ERC20Upgradeable.compiled_contract_class.json");

use std::sync::Arc;

use starknet::{
    accounts::{Account, SingleOwnerAccount},
    core::types::contract::{CompiledClass, SierraClass},
    providers::{JsonRpcClient, Provider},
    signers::Signer,
};

use super::pending::PendingDeclaration;

pub struct ContractDeclaration<'a, T> {
    contract_artifact: SierraClass,
    compiled_class: CompiledClass,
    client: &'a JsonRpcClient<T>,
}

impl<'a, T> ContractDeclaration<'a, T> {
    pub fn new(
        contract_artifact: SierraClass,
        compiled_class: CompiledClass,
        client: &'a JsonRpcClient<T>,
    ) -> Self
    where
        T: Send + Sync,
        &'a JsonRpcClient<T>: Provider,
    {
        Self {
            contract_artifact,
            compiled_class,
            client,
        }
    }
    pub fn pool(client: &'a JsonRpcClient<T>) -> Self
    where
        T: Send + Sync,
        &'a JsonRpcClient<T>: Provider,
    {
        Self::new(
            serde_json::from_str(POOL_SIERRA_STR).unwrap(),
            serde_json::from_str(POOL_CASM_STR).unwrap(),
            client,
        )
    }
    pub fn verifier(client: &'a JsonRpcClient<T>) -> Self
    where
        T: Send + Sync,
        &'a JsonRpcClient<T>: Provider,
    {
        Self::new(
            serde_json::from_str(VERIFIER_SIERRA_STR).unwrap(),
            serde_json::from_str(VERIFIER_CASM_STR).unwrap(),
            client,
        )
    }
    pub fn universal_ecip(client: &'a JsonRpcClient<T>) -> Self
    where
        T: Send + Sync,
        &'a JsonRpcClient<T>: Provider,
    {
        Self::new(
            serde_json::from_str(UNIVERSAL_ECIP_SIERRA_STR).unwrap(),
            serde_json::from_str(UNIVERSAL_ECIP_CASM_STR).unwrap(),
            client,
        )
    }
    pub fn erc20(client: &'a JsonRpcClient<T>) -> Self
    where
        T: Send + Sync,
        &'a JsonRpcClient<T>: Provider,
    {
        Self::new(
            serde_json::from_str(ERC20_SIERRA_STR).unwrap(),
            serde_json::from_str(ERC20_CASM_STR).unwrap(),
            client,
        )
    }
}

impl<'a, T> ContractDeclaration<'a, T> {
    pub async fn declare<P, S>(
        self,
        account: &SingleOwnerAccount<P, S>,
    ) -> Result<PendingDeclaration<'a, T>, String>
    where
        T: Send + Sync,
        &'a JsonRpcClient<T>: Provider,
        P: Provider + Send + Sync,
        S: Signer + Send + Sync,
    {
        let casm_class_hash = self
            .compiled_class
            .class_hash()
            .map_err(|e| e.to_string())?;

        // We need to flatten the ABI into a string first
        let flattened_class = self
            .contract_artifact
            .clone()
            .flatten()
            .map_err(|e| e.to_string())?;

        let declaration_result = account
            .declare_v3(Arc::new(flattened_class), casm_class_hash)
            .send()
            .await
            .unwrap();

        Ok(PendingDeclaration::from((declaration_result, self.client)))
    }
}
