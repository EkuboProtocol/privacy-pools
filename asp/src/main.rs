use std::{net::SocketAddr, sync::Arc};

use ::starknet::{core::types::Felt, providers::Url};
use axum::{
    routing::{get, post},
    Router,
};
use clap::Parser;
use merkle::{hybrid::HybridMerkleTree, traits::RootMerkleTree};
use shutdown::shutdown_signal;
use starknet::StarkNet;
use tokio::{net::TcpListener, sync::Mutex};
use tracing::Level;

mod deposit;
mod shutdown;
mod starknet;
mod withdraw;

#[derive(Parser, Debug)]
#[command(author, version, about, long_about = None)]
struct Args {
    /// The address to bind the server to
    #[arg(long, short, env, default_value = "0.0.0.0:8080")]
    bind: SocketAddr,

    /// The StarkNet provider URL
    #[arg(long, short, env, default_value = "http://localhost:5050")]
    provider_url: Url,

    /// The Pool contract address
    #[arg(long, short, env)]
    contract_address: Felt,
}

#[derive(Debug, Clone)]
pub struct AppState {
    pub starknet: StarkNet,
    pub merkle_tree: Arc<Mutex<HybridMerkleTree>>,
}

#[tokio::main]
async fn main() {
    tracing_subscriber::fmt()
        .with_max_level(Level::DEBUG)
        .init();

    // Parse arguments
    let args = Args::parse();

    let starknet = StarkNet::new(args.provider_url, args.contract_address);

    let state = AppState {
        starknet,
        merkle_tree: Arc::new(Mutex::new(HybridMerkleTree::new_with_contract_height())),
    };

    // Create a regular axum app.
    let app = Router::new()
        .route("/", post(deposit::handler))
        .route("/", get(withdraw::handler))
        .with_state(state);

    // Create a `TcpListener` using tokio.
    let listener = TcpListener::bind(args.bind).await.unwrap();

    // Run the server with graceful shutdown
    axum::serve(listener, app)
        .with_graceful_shutdown(shutdown_signal())
        .await
        .unwrap();
}
