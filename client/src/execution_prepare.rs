use starknet::accounts::{AccountError, ConnectedAccount, ExecutionV3, PreparedExecutionV3};

#[derive(Debug, Clone)]
pub struct ExecutionPreparer<'a, A>
where
    A: ConnectedAccount + Sync,
{
    account: &'a A,
    gas_estimate_multiplier: f64,
    gas_price_estimate_multiplier: f64,
}

impl<'a, A> ExecutionPreparer<'a, A>
where
    A: ConnectedAccount + Sync,
{
    pub fn new(account: &'a A) -> Self {
        Self {
            account,
            gas_estimate_multiplier: 5.0,
            gas_price_estimate_multiplier: 5.0,
        }
    }
    pub async fn prepare<'b>(
        &'a self,
        execution: ExecutionV3<'b, A>,
    ) -> Result<PreparedExecutionV3<'b, A>, AccountError<A::SignError>> {
        // Resolves nonce
        let nonce = self
            .account
            .get_nonce()
            .await
            .map_err(AccountError::Provider)?;
        let execution = execution.nonce(nonce);

        let fee_estimate = execution.estimate_fee().await?;

        let gas = {
            let overall_fee_bytes = fee_estimate.overall_fee.to_bytes_le();
            if overall_fee_bytes.iter().skip(8).any(|&x| x != 0) {
                return Err(AccountError::FeeOutOfRange);
            }
            let overall_fee = u64::from_le_bytes(overall_fee_bytes[..8].try_into().unwrap());

            let gas_price_bytes = fee_estimate.gas_price.to_bytes_le();
            if gas_price_bytes.iter().skip(8).any(|&x| x != 0) {
                return Err(AccountError::FeeOutOfRange);
            }
            let gas_price = u64::from_le_bytes(gas_price_bytes[..8].try_into().unwrap());

            ((overall_fee.div_ceil(gas_price) as f64) * self.gas_estimate_multiplier) as u64
        };
        let execution = execution.gas(gas);

        let gas_price = {
            let gas_price_bytes = fee_estimate.gas_price.to_bytes_le();
            if gas_price_bytes.iter().skip(8).any(|&x| x != 0) {
                return Err(AccountError::FeeOutOfRange);
            }
            let gas_price = u64::from_le_bytes(gas_price_bytes[..8].try_into().unwrap());

            ((gas_price as f64) * self.gas_price_estimate_multiplier) as u128
        };

        let execution = execution.gas_price(gas_price);

        Ok(execution.prepared().unwrap())
    }
}
