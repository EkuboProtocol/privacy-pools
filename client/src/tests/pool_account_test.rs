use crate::{
    abigen::pool::{Pool, PoolReader},
    circuit::Commitment,
    testnet::runner::KatanaRunner,
    tests::{approve_helper, single_deploy_helper, DeployHelperResult},
    transaction_waiter::TransactionWaiter,
};
use cainome::cairo_serde::U256;
use merkle::{hybrid::HybridMerkleTree, traits::RootMerkleTree};
use starknet_crypto::Felt;
use starknet_types_rpc::v0_7_1::InvokeTxnV3;

type MerkleTree = HybridMerkleTree;

#[tokio::test]
async fn test_contract_merkle_tree_empty() {
    let x = InvokeTxnV3 {
        // transaction_hash: self.inner.transaction_hash(self.account.chain_id()),
        sender_address: self.account.address(),
        calldata: self.account.encode_calls(&self.inner.calls),
        signature: if skip_signature {
            vec![]
        } else {
            self.account
                .sign_execution_v3(&self.inner, query_only)
                .await?
        },
        nonce: self.inner.nonce,
        resource_bounds: ResourceBoundsMapping {
            l1_gas: ResourceBounds {
                max_amount: Felt::from_dec_str(&self.inner.gas.to_string())
                    .unwrap()
                    .to_hex_string(),
                max_price_per_unit: Felt::from_dec_str(&self.inner.gas_price.to_string())
                    .unwrap()
                    .to_hex_string(),
            },
            // L2 resources are hard-coded to 0
            l2_gas: ResourceBounds {
                max_amount: "0x0".to_string(),
                max_price_per_unit: "0x0".to_string(),
            },
        },
        // Fee market has not been been activated yet so it's hard-coded to be 0
        tip: Felt::ZERO,
        // Hard-coded empty `paymaster_data`
        paymaster_data: vec![],
        // Hard-coded empty `account_deployment_data`
        account_deployment_data: vec![],
        // Hard-coded L1 DA mode for nonce and fee
        nonce_data_availability_mode: DaMode::L1,
        fee_data_availability_mode: DaMode::L1,
    };
}
