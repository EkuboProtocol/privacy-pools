use axum::{extract::State, http::StatusCode, response::IntoResponse, Json};
use cainome::cairo_serde::U256;
use merkle::traits::FindLeafMerkleTree;
use serde::{Deserialize, Serialize};
use thiserror::Error;

use crate::AppState;

#[derive(Debug, Clone, Deserialize)]
pub struct Payload {
    commitment: U256,
}

#[derive(Debug, Serialize)]
struct Response {
    pub elements: Vec<U256>,
    pub indices: Vec<bool>,
}

pub async fn handler(
    State(state): State<AppState>,
    Json(payload): Json<Payload>,
) -> Result<impl IntoResponse, AppError> {
    let merkle_tree = state.merkle_tree.lock().await;

    let path = merkle_tree
        .find_path(&payload.commitment)
        .ok_or(AppError::FindPathError)?;

    Ok(Json(Response {
        elements: path.elements,
        indices: path.indices,
    }))
}

#[derive(Debug, Error)]
pub enum AppError {
    #[error("cannot find path")]
    FindPathError,
}
impl IntoResponse for AppError {
    fn into_response(self) -> axum::response::Response {
        match self {
            AppError::FindPathError => (StatusCode::INTERNAL_SERVER_ERROR, self.to_string()),
        }
        .into_response()
    }
}
