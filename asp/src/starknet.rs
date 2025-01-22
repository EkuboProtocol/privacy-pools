use client::abigen::pool::{Deposit, Event};
use starknet::{
    core::types::{EmittedEvent, Felt, TransactionReceipt, TransactionReceiptWithBlockInfo},
    providers::{jsonrpc::HttpTransport, JsonRpcClient, Provider, ProviderError, Url},
};

#[derive(Debug, Clone)]
pub struct StarkNet {
    provider: JsonRpcClient<HttpTransport>,
    contract_address: Felt,
}
impl StarkNet {
    pub fn new(url: Url, contract_address: Felt) -> Self {
        let provider = JsonRpcClient::new(HttpTransport::new(url));
        Self {
            provider,
            contract_address,
        }
    }

    pub async fn get_transaction_receipt(
        &self,
        transaction_hash: Felt,
    ) -> Result<TransactionReceiptWithBlockInfo, ProviderError> {
        self.provider
            .get_transaction_receipt(transaction_hash)
            .await
    }

    pub async fn get_deposits_by_transaction_hash(
        &self,
        transaction_hash: Felt,
    ) -> Result<Vec<Deposit>, ProviderError> {
        let transaction_receipt = self.get_transaction_receipt(transaction_hash).await?;
        let deposits: Vec<Deposit> = match transaction_receipt.receipt {
            TransactionReceipt::Invoke(invoke_receipt) => invoke_receipt
                .events
                .into_iter()
                .filter(|event| event.from_address == self.contract_address)
                .map(|event| EmittedEvent {
                    from_address: event.from_address,
                    keys: event.keys,
                    data: event.data,
                    block_hash: transaction_receipt.block.block_hash(),
                    block_number: transaction_receipt.block.block_number(),
                    transaction_hash,
                })
                .map(|event| Event::try_from(&event).unwrap())
                .filter_map(|event| {
                    if let Event::Deposit(deposit) = event {
                        Some(deposit)
                    } else {
                        None
                    }
                })
                .collect(),
            _ => Default::default(),
        };
        Ok(deposits)
    }
}
