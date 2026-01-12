//! Ekubo contract deployer
//!
//! Deploys Ekubo Core and Privacy Extension contracts for testing

use std::sync::Arc;

use starknet::{
    accounts::{Account, SingleOwnerAccount},
    core::types::{
        contract::{CompiledClass, SierraClass},
        Felt,
    },
    providers::{JsonRpcClient, Provider},
    signers::{Signer, SigningKey},
};

use super::{
    deploy::{ContractDeployment, DeployResult},
    pending::PendingDeclaration,
};

// Ekubo contract artifacts (relative path from private-pools to starknet-contracts)
pub const EKUBO_CORE_SIERRA_STR: &str =
    include_str!("../../../../starknet-contracts/target/dev/ekubo_Core.contract_class.json");
pub const EKUBO_CORE_CASM_STR: &str =
    include_str!("../../../../starknet-contracts/target/dev/ekubo_Core.compiled_contract_class.json");
pub const EKUBO_PRIVACY_SIERRA_STR: &str =
    include_str!("../../../../starknet-contracts/target/dev/ekubo_Privacy.contract_class.json");
pub const EKUBO_PRIVACY_CASM_STR: &str =
    include_str!("../../../../starknet-contracts/target/dev/ekubo_Privacy.compiled_contract_class.json");

/// Ekubo contract declaration helper
pub struct EkuboContractDeclaration<'a, T> {
    contract_artifact: SierraClass,
    compiled_class: CompiledClass,
    client: &'a JsonRpcClient<T>,
}

impl<'a, T> EkuboContractDeclaration<'a, T> {
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

    pub fn core(client: &'a JsonRpcClient<T>) -> Self
    where
        T: Send + Sync,
        &'a JsonRpcClient<T>: Provider,
    {
        Self::new(
            serde_json::from_str(EKUBO_CORE_SIERRA_STR).unwrap(),
            serde_json::from_str(EKUBO_CORE_CASM_STR).unwrap(),
            client,
        )
    }

    pub fn privacy_extension(client: &'a JsonRpcClient<T>) -> Self
    where
        T: Send + Sync,
        &'a JsonRpcClient<T>: Provider,
    {
        Self::new(
            serde_json::from_str(EKUBO_PRIVACY_SIERRA_STR).unwrap(),
            serde_json::from_str(EKUBO_PRIVACY_CASM_STR).unwrap(),
            client,
        )
    }

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
        use starknet::core::types::DeclareTransactionResult;

        let casm_class_hash = self
            .compiled_class
            .class_hash()
            .map_err(|e| e.to_string())?;

        let flattened_class = self
            .contract_artifact
            .clone()
            .flatten()
            .map_err(|e| e.to_string())?;

        // Compute the class hash before declaration so we can return it if already declared
        let class_hash = flattened_class.class_hash();

        let declaration_result = account
            .declare_v3(Arc::new(flattened_class), casm_class_hash)
            .send()
            .await;

        match declaration_result {
            Ok(result) => Ok(PendingDeclaration::from((result, self.client))),
            Err(err) => {
                // Use Debug format to get nested error details including execution_error
                let err_debug = format!("{:?}", err);
                // Handle "already declared" as success - the class exists on-chain
                if err_debug.contains("already declared") {
                    let result = DeclareTransactionResult {
                        transaction_hash: Felt::ZERO,
                        class_hash,
                    };
                    Ok(PendingDeclaration::new_already_complete(result, self.client))
                } else {
                    Err(err.to_string())
                }
            }
        }
    }
}

/// PoolKey structure matching Ekubo's PoolKey
#[derive(Debug, Clone, Copy)]
pub struct PoolKey {
    pub token0: Felt,
    pub token1: Felt,
    pub fee: u128,
    pub tick_spacing: u128,
    pub extension: Felt,
}

impl PoolKey {
    /// Serialize PoolKey to calldata
    pub fn to_calldata(&self) -> Vec<Felt> {
        vec![
            self.token0,
            self.token1,
            Felt::from(self.fee),
            Felt::from(self.tick_spacing),
            self.extension,
        ]
    }
}

/// Deployer for Ekubo contracts
#[derive(Debug)]
pub struct EkuboDeployer<'a, T> {
    client: &'a JsonRpcClient<T>,
    core_class_hash: Option<Felt>,
    privacy_class_hash: Option<Felt>,
    core_address: Option<Felt>,
    privacy_address: Option<Felt>,
}

impl<'a, T> EkuboDeployer<'a, T>
where
    T: Send + Sync,
    &'a JsonRpcClient<T>: Provider,
{
    pub fn new(client: &'a JsonRpcClient<T>) -> Self {
        Self {
            client,
            core_class_hash: None,
            privacy_class_hash: None,
            core_address: None,
            privacy_address: None,
        }
    }

    /// Declare Ekubo Core contract
    pub async fn declare_core<P, S>(
        &mut self,
        account: &SingleOwnerAccount<P, S>,
    ) -> Result<Felt, String>
    where
        P: Provider + Send + Sync,
        S: Signer + Send + Sync,
    {
        let declaration = EkuboContractDeclaration::core(self.client)
            .declare(account)
            .await?
            .wait_for_completion()
            .await;

        self.core_class_hash = Some(declaration.class_hash);
        tracing::info!(
            "Ekubo Core declared with class hash: {}",
            declaration.class_hash.to_hex_string()
        );
        Ok(declaration.class_hash)
    }

    /// Declare Privacy Extension contract
    pub async fn declare_privacy_extension<P, S>(
        &mut self,
        account: &SingleOwnerAccount<P, S>,
    ) -> Result<Felt, String>
    where
        P: Provider + Send + Sync,
        S: Signer + Send + Sync,
    {
        let declaration = EkuboContractDeclaration::privacy_extension(self.client)
            .declare(account)
            .await?
            .wait_for_completion()
            .await;

        self.privacy_class_hash = Some(declaration.class_hash);
        tracing::info!(
            "Privacy Extension declared with class hash: {}",
            declaration.class_hash.to_hex_string()
        );
        Ok(declaration.class_hash)
    }

    /// Deploy Ekubo Core contract
    /// 
    /// Constructor: (owner: ContractAddress)
    pub async fn deploy_core<P, S>(
        &mut self,
        account: &SingleOwnerAccount<P, S>,
        owner: Felt,
    ) -> Result<DeployResult, String>
    where
        P: Provider + Send + Sync,
        S: Signer + Send + Sync,
    {
        let class_hash = self
            .core_class_hash
            .ok_or("Core contract not declared")?;

        // Core constructor only takes owner
        let constructor_calldata = vec![owner];

        let deployment = ContractDeployment::new(self.client)
            .deploy(
                constructor_calldata,
                SigningKey::from_random().secret_scalar(),
                account,
                class_hash,
            )
            .await
            .map_err(|e| e.to_string())?
            .wait_for_completion()
            .await;

        self.core_address = Some(deployment.deployed_address);
        tracing::info!(
            "Ekubo Core deployed at: {}",
            deployment.deployed_address.to_hex_string()
        );
        Ok(deployment)
    }

    /// Deploy Privacy Extension contract
    /// 
    /// Constructor: (owner: ContractAddress, core: ICoreDispatcher)
    pub async fn deploy_privacy_extension<P, S>(
        &mut self,
        account: &SingleOwnerAccount<P, S>,
        owner: Felt,
        core_address: Felt,
    ) -> Result<DeployResult, String>
    where
        P: Provider + Send + Sync,
        S: Signer + Send + Sync,
    {
        let class_hash = self
            .privacy_class_hash
            .ok_or("Privacy Extension not declared")?;

        // Privacy constructor: (owner, core)
        let constructor_calldata = vec![owner, core_address];

        let deployment = ContractDeployment::new(self.client)
            .deploy(
                constructor_calldata,
                SigningKey::from_random().secret_scalar(),
                account,
                class_hash,
            )
            .await
            .map_err(|e| e.to_string())?
            .wait_for_completion()
            .await;

        self.privacy_address = Some(deployment.deployed_address);
        tracing::info!(
            "Privacy Extension deployed at: {}",
            deployment.deployed_address.to_hex_string()
        );
        Ok(deployment)
    }

    /// Get deployed Core address
    pub fn core_address(&self) -> Option<Felt> {
        self.core_address
    }

    /// Get deployed Privacy Extension address
    pub fn privacy_address(&self) -> Option<Felt> {
        self.privacy_address
    }
}

/// Helper struct for deployed Ekubo contracts
#[derive(Debug, Clone)]
pub struct DeployedEkubo {
    pub core: Felt,
    pub privacy_extension: Felt,
}

impl DeployedEkubo {
    pub fn new(core: Felt, privacy_extension: Felt) -> Self {
        Self {
            core,
            privacy_extension,
        }
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_pool_key_to_calldata() {
        let pool_key = PoolKey {
            token0: Felt::from(0x1234u64),
            token1: Felt::from(0x5678u64),
            fee: 3000,
            tick_spacing: 200,
            extension: Felt::from(0x9abcu64),
        };

        let calldata = pool_key.to_calldata();
        assert_eq!(calldata.len(), 5);
        assert_eq!(calldata[0], Felt::from(0x1234u64));
        assert_eq!(calldata[1], Felt::from(0x5678u64));
        assert_eq!(calldata[2], Felt::from(3000u64));
        assert_eq!(calldata[3], Felt::from(200u64));
        assert_eq!(calldata[4], Felt::from(0x9abcu64));
    }
}

