use std::collections::HashMap;

use cainome::rs::Abigen;

fn main() {
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

    let abigen = Abigen::new(
        "UniversalECIP",
        "../target/dev/pool_UniversalECIP.contract_class.json",
    )
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

    let abigen = Abigen::new(
        "Groth16VerifierBN254",
        "../target/dev/pool_Groth16VerifierBN254.contract_class.json",
    )
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

    let abigen = Abigen::new("Pool", "../target/dev/pool_Pool.contract_class.json")
        .with_types_aliases(aliases)
        .with_derives(vec!["Debug".to_string(), "PartialEq".to_string()])
        .with_contract_derives(vec!["Debug".to_string(), "Clone".to_string()]);

    abigen
        .generate()
        .expect("Fail to generate bindings")
        .write_to_file("./src/abigen/pool.rs")
        .unwrap();
}
