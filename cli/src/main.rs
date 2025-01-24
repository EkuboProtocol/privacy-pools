use ::starknet::{
    accounts::{ConnectedAccount, ExecutionEncoding, SingleOwnerAccount},
    core::types::Felt,
    providers::{jsonrpc::HttpTransport, JsonRpcClient, Url},
    signers::{LocalWallet, SigningKey},
};
use cainome::cairo_serde::U256;
use clap::{Parser, Subcommand};
use client::{
    abigen::pool::Pool,
    circuit::{CircuitInput, Commitment},
    prover::Prover,
    transaction_waiter::TransactionWaiter,
};
use serde::{Deserialize, Serialize};
use starknet::deposit;

use tracing::Level;

mod starknet;

#[derive(Parser, Debug)]
#[command(author, version, about, long_about = None)]
struct Args {
    /// The address to connect to the server
    #[arg(long, env, default_value = "http://localhost:8080")]
    asp_url: Url,

    #[arg(long, short, env, default_value = "http://localhost:5050")]
    url: Url,

    #[arg(long, short, env, default_value = "0x534e5f5345504f4c4941")]
    chain_id: Felt,

    #[arg(
        long,
        env,
        default_value = "0x041a78e741e5af2fec34b695679bc6891742439f7afb8484ecd7766661ad02bf"
    )]
    udc_address: Felt,

    #[arg(long, short, env)]
    address: Felt,

    #[arg(long, short, env)]
    private_key: Felt,

    /// The subcommand to execute
    #[command(subcommand)]
    command: Commands,
}

#[derive(Subcommand, Debug)]
enum Commands {
    /// Deposit funds
    Deposit {
        #[arg(long)]
        pool_address: Felt,

        #[arg(long)]
        secret: U256,

        #[arg(long)]
        nullifier: U256,

        #[arg(long)]
        amount: U256,
    },
    /// Withdraw funds
    Withdraw {
        #[arg(long)]
        pool_address: Felt,

        #[arg(long)]
        merkle_tree_root: U256,

        #[arg(long)]
        fee: U256,

        #[arg(long)]
        secret: U256,

        #[arg(long)]
        nullifier: U256,

        #[arg(long)]
        amount: U256,

        #[arg(long)]
        refund_secret: U256,

        #[arg(long)]
        refund_nullifier: U256,

        #[arg(long)]
        refund_amount: U256,

        #[arg(long)]
        recipient: U256,
    },
}

#[tokio::main]
async fn main() {
    tracing_subscriber::fmt().with_max_level(Level::INFO).init();

    // Parse arguments
    let args = Args::parse();

    let provider = JsonRpcClient::new(HttpTransport::new(args.url));
    let signer = LocalWallet::from_signing_key(SigningKey::from_secret_scalar(args.private_key));
    let account = SingleOwnerAccount::new(
        &provider,
        signer,
        args.address,
        args.chain_id,
        ExecutionEncoding::New,
    );

    match args.command {
        Commands::Deposit {
            pool_address,
            secret,
            nullifier,
            amount,
        } => {
            let transaction_hash = deposit(account, pool_address, secret, nullifier, amount).await;

            #[derive(Debug, Serialize)]
            struct Payload {
                pub transaction_hash: Felt,
            }
            #[derive(Debug, Deserialize)]
            struct Response {
                root: U256,
            }
            let result: Response = reqwest::Client::new()
                .post(args.asp_url)
                .json(&Payload { transaction_hash })
                .send()
                .await
                .unwrap()
                .json()
                .await
                .unwrap();
            tracing::info!("asp response: {}", result.root.to_string());
        }
        Commands::Withdraw {
            pool_address,
            merkle_tree_root,
            fee,
            secret,
            nullifier,
            amount,
            refund_secret,
            refund_nullifier,
            refund_amount,
            recipient,
        } => {
            let commitment = Commitment::new(secret, nullifier, amount);
            #[derive(Debug, Serialize)]
            struct Payload {
                pub commitment: U256,
            }
            #[derive(Debug, Deserialize)]
            struct Response {
                pub elements: Vec<U256>,
                pub indices: Vec<bool>,
            }
            let Response { elements, indices } = reqwest::Client::new()
                .get(args.asp_url)
                .json(&Payload {
                    commitment: commitment.hash(),
                })
                .send()
                .await
                .unwrap()
                .json()
                .await
                .unwrap();

            let refund_commitment = Commitment::new(refund_secret, refund_nullifier, refund_amount);

            let circuit_input = CircuitInput {
                root: merkle_tree_root,
                nullifier_hash: commitment.nullifier_hash(),
                recipient: recipient,
                fee: fee,
                refund: refund_amount,
                refund_commitment_hash: refund_commitment.hash(),
                commitment_amount: amount,
                nullifier: nullifier,
                secret: secret,
                path_elements: elements.clone(),
                path_indices: indices
                    .iter()
                    .map(|b| if *b { U256::ONE } else { U256::ZERO })
                    .collect(),
                amount: commitment.amount - refund_amount,
                associated_set_root: merkle_tree_root,
                associated_set_path_elements: elements,
                associated_set_path_indices: indices
                    .into_iter()
                    .map(|b| if b { U256::ONE } else { U256::ZERO })
                    .collect(),
            };

            let proof = Prover::new("./target").get_calldata(circuit_input).await;
            tracing::info!("calldata len: {}", proof.len());

            let pool = Pool::new(pool_address, account.clone());
            let tx = pool.withdraw(&proof).send().await.unwrap();
            let tx_receipt = TransactionWaiter::new(tx.transaction_hash, account.provider())
                .wait()
                .await
                .unwrap();

            tracing::info!("withdraw tx receipt: {:?}", tx_receipt);
        }
    }
}
