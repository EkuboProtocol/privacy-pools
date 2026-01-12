use starknet::{
    accounts::SingleOwnerAccount,
    contract::ContractFactory,
    core::types::{Felt, InvokeTransactionResult},
    providers::{JsonRpcClient, Provider},
    signers::Signer,
};

use super::{pending::PendingDeployment, UDC_ADDRESS};

pub struct ContractDeployment<'a, T> {
    client: &'a JsonRpcClient<T>,
}

impl<'a, T> ContractDeployment<'a, T> {
    pub fn new(client: &'a JsonRpcClient<T>) -> Self
    where
        &'a JsonRpcClient<T>: Provider,
        T: Send + Sync,
    {
        ContractDeployment { client }
    }
}

#[derive(Debug, Clone)]
pub struct DeployResult {
    pub deployed_address: Felt,
    pub transaction_hash: Felt,
}

impl<'a, T> ContractDeployment<'a, T> {
    pub async fn deploy<P, S>(
        self,
        constructor_calldata: Vec<Felt>,
        salt: Felt,
        account: &SingleOwnerAccount<P, S>,
        class_hash: Felt,
    ) -> Result<PendingDeployment<'a, T>, String>
    where
        P: Provider + Send + Sync,
        S: Signer + Send + Sync,
        &'a JsonRpcClient<T>: Provider,
        T: Send + Sync,
    {
        let contract_factory = ContractFactory::new_with_udc(class_hash, account, *UDC_ADDRESS);

        let deployment = contract_factory.deploy_v3(constructor_calldata, salt, false);
        let deployed_address = deployment.deployed_address();

        match deployment.send().await {
            Ok(InvokeTransactionResult { transaction_hash }) => {
                let result = DeployResult {
                    deployed_address,
                    transaction_hash,
                };
                Ok(PendingDeployment::from((result, self.client)))
            }
            Err(err) => {
                // Use Debug format to get nested error details
                let err_debug = format!("{:?}", err);
                // Handle "already deployed" as success - the contract exists on-chain
                if err_debug.contains("already deployed") {
                    let result = DeployResult {
                        deployed_address,
                        transaction_hash: Felt::ZERO,
                    };
                    Ok(PendingDeployment::new_already_complete(result, self.client))
                } else {
                    Err(format!("Unable to deploy contract: {}", err))
                }
            }
        }
    }
}
