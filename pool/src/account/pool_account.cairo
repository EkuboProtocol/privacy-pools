// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts for Cairo ^0.20.0
use starknet::account::Call;

#[starknet::interface]
trait IPoolAccount<TContractState> {
    fn deposit(ref self: TContractState, secret_and_nullifier_hash: u256, amount: u256) -> bool;
    fn withdraw(self: @TContractState, data: Array<felt252>);

    fn __execute__(self: @TContractState, calls: Array<Call>) -> Array<Span<felt252>>;
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
        ContractAddress, get_caller_address, get_contract_address, account::Call,
        event::EventEmitter, storage::{Map, StoragePointerWriteAccess, StoragePointerReadAccess},
    };
    use crate::hash;

    use crate::account::utils::{execute_calls, is_valid};
    use crate::merkle::MerkleTreeComponent;

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
        min_fee: u256,
    ) {
        self.ownable.initializer(owner);
        self.token.write(IERC20Dispatcher { contract_address: token });
        self.verifier.write(verifier);
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
        fn withdraw(self: @ContractState, data: Array<felt252>) {}

        fn __execute__(self: @ContractState, calls: Array<Call>) -> Array<Span<felt252>> {
            execute_calls(calls.span())
        }

        fn __validate__(self: @ContractState, calls: Array<Call>) -> felt252 {
            is_valid(calls.span())
        }

        fn is_valid_signature(
            self: @ContractState, hash: felt252, signature: Array<felt252>,
        ) -> felt252 {
            starknet::VALIDATED
        }
    }
}
