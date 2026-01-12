use std::collections::HashMap;

use cainome::rs::Abigen;

// Contract artifact paths
const ECIP_CONTRACT: &str = "../target/dev/pool_UniversalECIP.contract_class.json";
const VERIFIER_CONTRACT: &str = "../target/dev/pool_Groth16VerifierBN254.contract_class.json";
const POOL_CONTRACT: &str = "../target/dev/pool_Pool.contract_class.json";

fn main() {
    // rerun if pool/src/ changes
    println!("cargo:rerun-if-changed=../pool/src/");
    
    ecip();
    verifier();
    pool();
}

fn ecip() {
    let mut aliases = HashMap::new();
    aliases.insert(
        String::from("pool::ecip::UniversalECIP::Event"),
        String::from("Groth16VerifierBN254Event"),
    );

    let abigen = Abigen::new("UniversalECIP", ECIP_CONTRACT)
        .with_types_aliases(aliases)
        .with_derives(vec!["Debug".to_string(), "PartialEq".to_string()])
        .with_contract_derives(vec!["Debug".to_string(), "Clone".to_string()]);

    abigen
        .generate()
        .expect("Fail to generate bindings")
        .write_to_file("./src/abigen/ecip.rs")
        .unwrap();
}

fn verifier() {
    let mut aliases = HashMap::new();
    aliases.insert(
        String::from("pool::verifier::Groth16VerifierBN254::Event"),
        String::from("Groth16VerifierBN254Event"),
    );

    let abigen = Abigen::new("Groth16VerifierBN254", VERIFIER_CONTRACT)
        .with_types_aliases(aliases)
        .with_derives(vec!["Debug".to_string(), "PartialEq".to_string()])
        .with_contract_derives(vec!["Debug".to_string(), "Clone".to_string()]);

    abigen
        .generate()
        .expect("Fail to generate bindings")
        .write_to_file("./src/abigen/verifier.rs")
        .unwrap();
}

fn pool() {
    let mut aliases = HashMap::new();
    aliases.insert(
        String::from("pool::pool::Pool::Event"),
        String::from("PoolEvent"),
    );
    aliases.insert(
        String::from("pool::pool::Pool::Event::OwnableEvent"),
        String::from("OwnableEvent"),
    );
    aliases.insert(
        String::from("pool::merkle::MerkleTreeComponent::Event"),
        String::from("MerkleTreeEvent"),
    );

    let abigen = Abigen::new("Pool", POOL_CONTRACT)
        .with_types_aliases(aliases)
        .with_derives(vec!["Debug".to_string(), "PartialEq".to_string()])
        .with_contract_derives(vec!["Debug".to_string(), "Clone".to_string()]);

    abigen
        .generate()
        .expect("Fail to generate bindings")
        .write_to_file("./src/abigen/pool.rs")
        .unwrap();
}
