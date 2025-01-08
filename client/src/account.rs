use starknet::{
    accounts::SingleOwnerAccount,
    providers::{jsonrpc::HttpTransport, JsonRpcClient},
    signers::LocalWallet,
};

pub type SOAccount<'a> = SingleOwnerAccount<&'a JSONClient, LocalWallet>;
pub type JSONClient = JsonRpcClient<HttpTransport>;
