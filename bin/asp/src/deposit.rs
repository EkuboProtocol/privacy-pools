use axum::{extract::State, http::StatusCode, response::IntoResponse, Json};
use cainome::cairo_serde::U256;
use merkle::traits::RootMerkleTree;
use serde::{Deserialize, Serialize};
use starknet::{core::types::Felt, providers::ProviderError};
use thiserror::Error;

use crate::AppState;

#[derive(Debug, Clone, Deserialize)]
pub struct Payload {
    transaction_hash: Felt,
}

#[derive(Debug, Serialize)]
struct Response {
    root: U256,
}

pub async fn handler(
    State(state): State<AppState>,
    Json(payload): Json<Payload>,
) -> Result<impl IntoResponse, AppError> {
    let deposits = state
        .starknet
        .get_deposits_by_transaction_hash(payload.transaction_hash)
        .await?;

    for deposit in deposits {
        tracing::info!(
            "deposit -- secret_and_nullifier_hash: {} amount: {}",
            deposit.secret_and_nullifier_hash,
            deposit.amount
        );
        let leaf = hash::hash(deposit.secret_and_nullifier_hash, deposit.amount);
        let mut merkle_tree = state.merkle_tree.lock().await;
        merkle_tree.add_leaf(&leaf);
    }

    let merkle_tree = state.merkle_tree.lock().await;
    let root = merkle_tree.root();

    Ok(Json(Response { root }))
}

#[derive(Debug, Error)]
pub enum AppError {
    #[error(transparent)]
    ProviderError(#[from] ProviderError),
}
impl IntoResponse for AppError {
    fn into_response(self) -> axum::response::Response {
        match self {
            AppError::ProviderError(message) => {
                (StatusCode::INTERNAL_SERVER_ERROR, message.to_string())
            }
        }
        .into_response()
    }
}
