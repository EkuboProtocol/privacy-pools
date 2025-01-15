use starknet::ContractAddress;

#[starknet::interface]
trait IPool<TContractState> {
    fn deposit(ref self: TContractState, secret_and_nullifier_hash: u256, amount: u256) -> bool;
    fn withdraw(ref self: TContractState, proof: Span<felt252>) -> bool;
    fn current_root(self: @TContractState) -> u256;
}

#[derive(Drop)]
struct PublicOutput {
    root: u256,
    nullifierHash: u256,
    recipient: ContractAddress,
    fee: u256,
    refundCommitmentHash: u256,
    amount: u256,
}

#[generate_trait]
impl PublicOutputImpl of PublicOutputTrait {
    fn from_u256_span(span: Span<u256>) -> PublicOutput {
        let recipient: felt252 = (*span[2]).try_into().unwrap();
        PublicOutput {
            root: *span[0],
            nullifierHash: *span[1],
            recipient: recipient.try_into().unwrap(),
            fee: *span[3],
            refundCommitmentHash: *span[4],
            amount: *span[5],
        }
    }
}

#[starknet::contract]
mod Pool {
    use openzeppelin::token::erc20::interface::IERC20DispatcherTrait;
    use MerkleTreeComponent::InternalTrait;
    use starknet::storage::StorageMapReadAccess;
    use starknet::storage::StoragePointerReadAccess;
    use starknet::storage::{Map, StoragePathEntry, StoragePointerWriteAccess};
    use starknet::{ContractAddress, get_caller_address, get_contract_address};
    use openzeppelin::token::erc20::interface::IERC20Dispatcher;

    use crate::verifier::groth16_verifier::{
        IGroth16VerifierBN254Dispatcher, IGroth16VerifierBN254DispatcherTrait,
    };
    use super::PublicOutputImpl;
    use crate::merkle::MerkleTreeComponent;
    use crate::hash;

    component!(path: MerkleTreeComponent, storage: merkle, event: MerkleEvent);


    #[storage]
    struct Storage {
        pub transfer_token: IERC20Dispatcher,
        pub verifier_contract: IGroth16VerifierBN254Dispatcher,
        pub nullifier_hashes: Map<u256, bool>,
        pub min_fee: u256,
        #[substorage(v0)]
        merkle: MerkleTreeComponent::Storage,
    }

    #[event]
    #[derive(Drop, starknet::Event)]
    enum Event {
        MerkleEvent: MerkleTreeComponent::Event,
    }

    #[constructor]
    fn constructor(
        ref self: ContractState,
        transfer_token: ContractAddress,
        verifier_contract: ContractAddress,
        min_fee: u256,
    ) {
        self.transfer_token.write(IERC20Dispatcher { contract_address: transfer_token });
        self
            .verifier_contract
            .write(IGroth16VerifierBN254Dispatcher { contract_address: verifier_contract });
        self.merkle.initializer(6);
        self.min_fee.write(min_fee);
    }

    #[abi(embed_v0)]
    impl Pool of super::IPool<ContractState> {
        fn deposit(ref self: ContractState, secret_and_nullifier_hash: u256, amount: u256) -> bool {
            let commitment_hash = hash(secret_and_nullifier_hash, amount);
            self.merkle.add_leaf(commitment_hash);
            let caller = get_caller_address();
            let this = get_contract_address();
            self.transfer_token.read().transfer_from(caller, this, amount.into());
            true
        }

        fn withdraw(ref self: ContractState, proof: Span<felt252>) -> bool {
            let verifier_address: ContractAddress = self.verifier_contract.read().contract_address;

            let public_output = IGroth16VerifierBN254Dispatcher {
                contract_address: verifier_address,
            }
                .verify_groth16_proof_bn254(proof)
                .expect('proof-is-valid');
            let public_output = PublicOutputImpl::from_u256_span(public_output);
            assert(
                self.nullifier_hashes.read(public_output.nullifierHash) == false,
                'nullifier-is-zero',
            );
            self.nullifier_hashes.entry(public_output.nullifierHash).write(true);

            assert(self.merkle.roots.read(public_output.root) == true, 'roots-must-match');

            let min_fee: u256 = self.min_fee.read().into();
            assert(min_fee <= public_output.fee.into(), 'insufficient-fee');

            self
                .transfer_token
                .read()
                .transfer(
                    public_output.recipient, (public_output.amount - public_output.fee).into(),
                );

            self.merkle.add_leaf(public_output.refundCommitmentHash);

            true
        }
        fn current_root(self: @ContractState) -> u256 {
            self.merkle.root.read()
        }
    }
}
