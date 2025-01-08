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
        let InvokeTransactionResult { transaction_hash } =
            deployment.send().await.expect("Unable to deploy contract");

        let result = DeployResult {
            deployed_address,
            transaction_hash,
        };

        Ok(PendingDeployment::from((result, self.client)))
    }
}
