use std::{fmt::Debug, str::FromStr};

use crate::deploy_declare::declare::{ERC20_CASM_STR, ERC20_SIERRA_STR};
use cainome::cairo_serde::{ByteArray, CairoSerde, U256};
use openrpc_testgen::utils::{
    get_deployed_contract_address::get_contract_address,
    starknet_hive::StarknetHive,
    v7::{
        accounts::{
            account::{Account, ConnectedAccount},
            call::Call,
        },
        contract::{factory::ContractFactory, CompiledClass, HashAndFlatten, SierraClass},
        endpoints::utils::{get_selector_from_name, wait_for_sent_transaction},
    },
};
use starknet::providers::Url;
use starknet_crypto::Felt;

pub const POOL_ACCOUNT_SIERRA_STR: &str =
    include_str!("../../../target/dev/pool_PoolAccount.contract_class.json");
pub const POOL_ACCOUNT_CASM_STR: &str =
    include_str!("../../../target/dev/pool_PoolAccount.compiled_contract_class.json");

#[tokio::test]
async fn test_pool_account_simple() {
    let node_url = Url::parse("http://localhost:5050").unwrap();
    let address = Felt::from_hex_unchecked(
        "0x064b48806902a367c8598f4f95c305e8c1a1acba5f082d294a43793113115691",
    );
    let private_key = Felt::from_hex_unchecked(
        "0x0000000000000000000000000000000071d7bb07b9a64f6f78ac4c816aff4da9",
    );

    // StarknetHive initialization
    let hive = StarknetHive::new_with_custom_account(
        node_url,
        address,
        private_key,
        POOL_ACCOUNT_SIERRA_STR.to_string(),
        POOL_ACCOUNT_CASM_STR.to_string(),
    )
    .await
    .unwrap();

    let erc20_class_hash = declare(&hive, ERC20_SIERRA_STR, ERC20_CASM_STR).await;

    let name = <ByteArray as CairoSerde>::cairo_serialize(&ByteArray {
        data: vec![],
        pending_word: Felt::ZERO,
        pending_word_len: 0,
    });
    let symbol = <ByteArray as CairoSerde>::cairo_serialize(&ByteArray {
        data: vec![],
        pending_word: Felt::ZERO,
        pending_word_len: 0,
    });
    let fixed_suply = <U256 as CairoSerde>::cairo_serialize(&U256::from_str("200000000").unwrap());
    let recipient = hive.address();
    let owner = hive.address();
    let mut calldata = vec![];
    calldata.extend(&name);
    calldata.extend(symbol);
    calldata.extend(fixed_suply);
    calldata.push(recipient);
    calldata.push(owner);
    let erc20_address = deploy(&hive, erc20_class_hash, calldata).await;
    dbg!(erc20_address);

    let account2 = Felt::from_hex_unchecked(
        "0x078662e7352d062084b0010068b99288486c2d8b914f6e2a55ce945f8792c8b1",
    );
    let transfer_call = Call {
        to: erc20_address,
        selector: get_selector_from_name("transfer").unwrap(),
        calldata: vec![
            account2,
            Felt::from_dec_str("100").unwrap(),
            Felt::from_dec_str("0").unwrap(),
        ],
    };
    let prepared_execution_v3 = hive
        .execute_v3(vec![transfer_call])
        .prepare()
        .await
        .unwrap();

    let signature = hive
        .sign_execution_v3(prepared_execution_v3.get_raw_execution().await, false)
        .await
        .unwrap();

    let invoke_result_custom_signature = prepared_execution_v3
        .send_with_custom_signature(signature)
        .await
        .unwrap();

    let tx = wait_for_sent_transaction(
        invoke_result_custom_signature.transaction_hash,
        &hive.account,
    )
    .await
    .unwrap();

    dbg!(tx);
}

async fn declare<T: Account + Debug + ConnectedAccount + Sync>(
    account: T,
    sierra: &str,
    casm: &str,
) -> Felt {
    let casm_class_hash = serde_json::from_str::<CompiledClass>(casm)
        .unwrap()
        .class_hash()
        .map_err(|e| e.to_string())
        .unwrap();

    // We need to flatten the ABI into a string first
    let flattened_class = serde_json::from_str::<SierraClass>(sierra)
        .unwrap()
        .clone()
        .flatten()
        .map_err(|e| e.to_string())
        .unwrap();

    let declare_result = account
        .declare_v3(flattened_class, casm_class_hash)
        .send()
        .await
        .unwrap();

    declare_result.class_hash
}

async fn deploy(hive: &StarknetHive, class_hash: Felt, calldata: Vec<Felt>) -> Felt {
    let address = hive.address();
    let deployment = ContractFactory::new(class_hash, &hive)
        .deploy_v3(calldata, address, false)
        .send()
        .await
        .unwrap();

    wait_for_sent_transaction(deployment.transaction_hash, &hive.account)
        .await
        .unwrap();

    let deployed_contract_address =
        get_contract_address(hive.provider(), deployment.transaction_hash)
            .await
            .unwrap();

    deployed_contract_address
}
