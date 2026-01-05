// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts for Cairo ^0.20.0
use starknet::account::Call;
use starknet::ContractAddress;

#[derive(Drop)]
pub struct PublicInput {
    pub root: u256,
    pub nullifier_hash: u256,
    pub recipient: ContractAddress,
    pub fee: u256,
    pub refund_commitment_hash: u256,
    pub amount: u256,
    pub associated_set_root: u256,
}

#[generate_trait]
pub impl PublicInputImpl of PublicInputTrait {
    fn from_u256_span(span: Span<u256>) -> PublicInput {
        let recipient: felt252 = (*span[2]).try_into().unwrap();
        PublicInput {
            root: *span[0],
            nullifier_hash: *span[1],
            recipient: recipient.try_into().unwrap(),
            fee: *span[3],
            refund_commitment_hash: *span[4],
            amount: *span[5],
            associated_set_root: *span[6],
        }
    }
}

#[starknet::interface]
trait IPoolAccount<TContractState> {
    fn deposit(ref self: TContractState, secret_and_nullifier_hash: u256, amount: u256) -> bool;
    fn withdraw(ref self: TContractState, public_inputs: Span<u256>);

    fn __execute__(ref self: TContractState, calls: Array<Call>) -> Array<Span<felt252>>;
    fn __validate__(self: @TContractState, calls: Array<Call>) -> felt252;
    fn is_valid_signature(
        self: @TContractState, hash: felt252, signature: Array<felt252>,
    ) -> felt252;
}

#[starknet::contract(account)]
mod PoolAccount {
    use openzeppelin::account::extensions::SRC9Component;
    use openzeppelin::introspection::src5::SRC5Component;
    use openzeppelin::upgrades::UpgradeableComponent;
    use openzeppelin::{
        access::ownable::OwnableComponent,
        token::erc20::interface::{IERC20Dispatcher, IERC20DispatcherTrait},
    };
    use starknet::{
        ClassHash, ContractAddress, get_caller_address, get_contract_address, account::Call,
        event::EventEmitter, storage::{Map, StoragePointerWriteAccess, StoragePointerReadAccess, StorageMapReadAccess, StoragePathEntry},
    };
    use crate::hash;

    use crate::account::utils::{execute_calls, is_valid};
    use crate::merkle::MerkleTreeComponent;
    use crate::merkle::MerkleTreeComponent::InternalTrait;
    use super::PublicInputImpl;

    component!(path: SRC5Component, storage: src5, event: SRC5Event);
    component!(path: SRC9Component, storage: src9, event: SRC9Event);
    component!(path: UpgradeableComponent, storage: upgradeable, event: UpgradeableEvent);

    component!(path: OwnableComponent, storage: ownable, event: OwnableEvent);
    component!(path: MerkleTreeComponent, storage: merkle, event: MerkleEvent);

    // External
    #[abi(embed_v0)]
    impl OutsideExecutionV2Impl =
        SRC9Component::OutsideExecutionV2Impl<ContractState>;

    // Internal
    impl OutsideExecutionInternalImpl = SRC9Component::InternalImpl<ContractState>;
    impl UpgradeableInternalImpl = UpgradeableComponent::InternalImpl<ContractState>;
    impl OwnableInternalImpl = OwnableComponent::InternalImpl<ContractState>;
    impl MerkleTreeInternalImpl = MerkleTreeComponent::InternalImpl<ContractState>;

    #[storage]
    struct Storage {
        #[substorage(v0)]
        src5: SRC5Component::Storage,
        #[substorage(v0)]
        src9: SRC9Component::Storage,
        #[substorage(v0)]
        upgradeable: UpgradeableComponent::Storage,
        #[substorage(v0)]
        ownable: OwnableComponent::Storage,
        #[substorage(v0)]
        merkle: MerkleTreeComponent::Storage,
        token: IERC20Dispatcher,
        verifier: ContractAddress,
        verifier_class_hash: ClassHash,
        nullifier_hashes: Map<u256, bool>,
        min_fee: u256,
        total_fee: u256,
    }

    #[event]
    #[derive(Drop, starknet::Event)]
    enum Event {
        #[flat]
        SRC5Event: SRC5Component::Event,
        #[flat]
        SRC9Event: SRC9Component::Event,
        #[flat]
        UpgradeableEvent: UpgradeableComponent::Event,
        #[flat]
        OwnableEvent: OwnableComponent::Event,
        #[flat]
        MerkleEvent: MerkleTreeComponent::Event,
        Deposit: Deposit,
        Withdrawal: Withdrawal,
        FeeWithdrawal: FeeWithdrawal,
    }

    #[derive(Drop, PartialEq, starknet::Event)]
    pub struct Deposit {
        #[key]
        pub caller: ContractAddress,
        #[key]
        pub secret_and_nullifier_hash: u256,
        pub amount: u256,
    }

    #[derive(Drop, PartialEq, starknet::Event)]
    pub struct Withdrawal {
        #[key]
        pub caller: ContractAddress,
        #[key]
        pub recipient: ContractAddress,
        pub amount: u256,
        pub associated_set_root: u256,
    }

    #[derive(Drop, PartialEq, starknet::Event)]
    pub struct FeeWithdrawal {
        #[key]
        pub recipient: ContractAddress,
        pub amount: u256,
    }


    #[constructor]
    fn constructor(
        ref self: ContractState,
        owner: ContractAddress,
        token: ContractAddress,
        verifier: ContractAddress,
        verifier_class_hash: ClassHash,
        min_fee: u256,
    ) {
        self.ownable.initializer(owner);
        self.token.write(IERC20Dispatcher { contract_address: token });
        self.verifier.write(verifier);
        self.verifier_class_hash.write(verifier_class_hash);
        self.merkle.initializer();
        self.min_fee.write(min_fee);
        self.total_fee.write(0);
    }

    #[abi(embed_v0)]
    impl PoolAccount of super::IPoolAccount<ContractState> {
        fn deposit(ref self: ContractState, secret_and_nullifier_hash: u256, amount: u256) -> bool {
            let commitment_hash = hash(secret_and_nullifier_hash, amount);
            self.merkle.add_leaf(commitment_hash);
            let caller = get_caller_address();
            let this = get_contract_address();
            self.token.read().transfer_from(caller, this, amount.into());
            self.emit(Deposit { caller, secret_and_nullifier_hash, amount });

            true
        }
        fn withdraw(ref self: ContractState, public_inputs: Span<u256>) {
            let public_input = PublicInputImpl::from_u256_span(public_inputs);
            
            // Check nullifier hasn't been used
            assert(
                self.nullifier_hashes.read(public_input.nullifier_hash) == false,
                'Nullifier already used',
            );
            self.nullifier_hashes.entry(public_input.nullifier_hash).write(true);

            // Check merkle root is valid
            assert(self.merkle.roots.read(public_input.root) == true, 'Invalid root');

            // Check fee is sufficient
            let min_fee: u256 = self.min_fee.read().into();
            assert(min_fee <= public_input.fee.into(), 'Insufficient fee');
            self.total_fee.write(self.total_fee.read() + public_input.fee);

            // Transfer tokens to recipient
            self
                .token
                .read()
                .transfer(public_input.recipient, (public_input.amount - public_input.fee).into());

            // Add refund commitment to merkle tree
            self.merkle.add_leaf(public_input.refund_commitment_hash);

            let caller = get_caller_address();
            self
                .emit(
                    Withdrawal {
                        caller,
                        recipient: public_input.recipient,
                        amount: public_input.amount,
                        associated_set_root: public_input.associated_set_root,
                    },
                );
        }

        fn __execute__(ref self: ContractState, calls: Array<Call>) -> Array<Span<felt252>> {
            // In execution mode, we can use regular contract calls with verifier address
            let verifier_address = self.verifier.read();
            execute_calls(calls.span(), verifier_address)
        }

        fn __validate__(self: @ContractState, calls: Array<Call>) -> felt252 {
            // In validation mode, only library calls are allowed, so we need class hash
            let verifier_class_hash = self.verifier_class_hash.read();
            is_valid(calls.span(), verifier_class_hash)
        }

        fn is_valid_signature(
            self: @ContractState, hash: felt252, signature: Array<felt252>,
        ) -> felt252 {
            starknet::VALIDATED
        }
    }
}
