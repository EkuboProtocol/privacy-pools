use std::collections::HashMap;

use cainome::rs::Abigen;

fn main() {
    let mut aliases = HashMap::new();
    aliases.insert(String::from("pool::Pool::Event"), String::from("PoolEvent"));
    aliases.insert(
        String::from("pool::merkle::MerkleTreeComponent::Event"),
        String::from("MerkleTreeEvent"),
    );

    let abigen = Abigen::new(
        "Pool",
        "../../pool/target/dev/pool_Pool.contract_class.json",
    )
    .with_types_aliases(aliases)
    .with_derives(vec!["Debug".to_string(), "PartialEq".to_string()])
    .with_contract_derives(vec!["Debug".to_string(), "Clone".to_string()]);

    abigen
        .generate()
        .expect("Fail to generate bindings")
        .write_to_file("./src/abigen/pool.rs")
        .unwrap();
}
