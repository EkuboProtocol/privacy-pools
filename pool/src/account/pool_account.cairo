use starknet::ContractAddress;

#[starknet::interface]
trait IPoolAccount<TContractState> {
    fn deposit(ref self: TContractState, secret_and_nullifier_hash: u256, amount: u256) -> bool;
    fn withdraw(ref self: TContractState, proof: Span<felt252>) -> bool;
    fn withdraw_fee(ref self: TContractState, recipient: ContractAddress, amount: u256) -> bool;

    fn current_root(self: @TContractState) -> u256;
}


#[starknet::contract(account)]
mod PoolAccount {
    use openzeppelin::account::extensions::SRC9Component;
    use openzeppelin::introspection::src5::SRC5Component;
    use openzeppelin::upgrades::interface::IUpgradeable;
    use openzeppelin::upgrades::UpgradeableComponent;
    use openzeppelin::access::ownable::OwnableComponent;
    use openzeppelin::token::erc20::interface::{IERC20Dispatcher, IERC20DispatcherTrait};
    use starknet::ClassHash;

    use crate::account::account_mixin::PoolAccountComponent;
    use crate::hash;
    use crate::merkle::{MerkleTreeComponent, MerkleTreeComponent::InternalTrait};

    const VERIFIER_CLASS_HASH: felt252 =
        0x01de9feeaaf8f479d7736efb1f8c782ca7b18cd549d30d987c9b4290520c776a;

    component!(path: PoolAccountComponent, storage: account, event: AccountEvent);
    component!(path: SRC5Component, storage: src5, event: SRC5Event);
    component!(path: SRC9Component, storage: src9, event: SRC9Event);
    component!(path: UpgradeableComponent, storage: upgradeable, event: UpgradeableEvent);

    component!(path: OwnableComponent, storage: ownable, event: OwnableEvent);
    component!(path: MerkleTreeComponent, storage: merkle, event: MerkleEvent);

    // External
    #[abi(embed_v0)]
    impl AccountMixinImpl = PoolAccountComponent::AccountMixinImpl<ContractState>;
    #[abi(embed_v0)]
    impl OutsideExecutionV2Impl =
        SRC9Component::OutsideExecutionV2Impl<ContractState>;

    #[abi(embed_v0)]
    impl OwnableMixinImpl = OwnableComponent::OwnableMixinImpl<ContractState>;

    // Internal
    impl AccountInternalImpl = PoolAccountComponent::InternalImpl<ContractState>;
    impl OutsideExecutionInternalImpl = SRC9Component::InternalImpl<ContractState>;
    impl UpgradeableInternalImpl = UpgradeableComponent::InternalImpl<ContractState>;

    impl OwnableInternalImpl = OwnableComponent::InternalImpl<ContractState>;

    #[storage]
    struct Storage {
        #[substorage(v0)]
        account: PoolAccountComponent::Storage,
        #[substorage(v0)]
        src5: SRC5Component::Storage,
        #[substorage(v0)]
        src9: SRC9Component::Storage,
        #[substorage(v0)]
        upgradeable: UpgradeableComponent::Storage,

        pub token: IERC20Dispatcher,
        pub verifier: ContractAddress,
        pub nullifier_hashes: Map<u256, bool>,
        pub min_fee: u256,
        pub total_fee: u256,
        #[substorage(v0)]
        ownable: OwnableComponent::Storage,
        #[substorage(v0)]
        merkle: MerkleTreeComponent::Storage,
    }

    #[event]
    #[derive(Drop, starknet::Event)]
    enum Event {
        #[flat]
        AccountEvent: PoolAccountComponent::Event,
        #[flat]
        SRC5Event: SRC5Component::Event,
        #[flat]
        SRC9Event: SRC9Component::Event,
        #[flat]
        UpgradeableEvent: UpgradeableComponent::Event,

        Deposit: Deposit,
        Withdrawal: Withdrawal,
        FeeWithdrawal: FeeWithdrawal,
        #[flat]
        OwnableEvent: OwnableComponent::Event,
        #[flat]
        MerkleEvent: MerkleTreeComponent::Event,
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

    pub mod Errors {
        pub const INVALID_PROOF: felt252 = 'Pool: invalid proof';
        pub const NULLIFIER_ALREADY_USED: felt252 = 'Pool: nullifier already used';
        pub const INVALID_ROOT: felt252 = 'Pool: invalid root';
        pub const INSUFFICIENT_FEE: felt252 = 'Pool: insufficient fee';
        pub const INSUFFICIENT_TOTAL_FEE: felt252 = 'Pool: insufficient total fee';
    }

    #[constructor]
    fn constructor(
        ref self: ContractState,
        public_key: felt252,
        owner: ContractAddress,
        token: ContractAddress,
        verifier: ContractAddress,
        min_fee: u256,
    ) {
        self.account.initializer(public_key);
        self.src9.initializer();
        self.ownable.initializer(owner);
        self.token.write(IERC20Dispatcher { contract_address: token });
        self.verifier.write(verifier);
        self.merkle.initializer();
        self.min_fee.write(min_fee);
        self.total_fee.write(0);
    }

    //
    // Upgradeable
    //

    #[abi(embed_v0)]
    impl UpgradeableImpl of IUpgradeable<ContractState> {
        fn upgrade(ref self: ContractState, new_class_hash: ClassHash) {
            self.account.assert_only_self();
            self.upgradeable.upgrade(new_class_hash);
        }
    }

    #[abi(embed_v0)]
    impl Pool of super::IPool<ContractState> {
        fn deposit(ref self: ContractState, secret_and_nullifier_hash: u256, amount: u256) -> bool {
            let commitment_hash = hash(secret_and_nullifier_hash, amount);
            self.merkle.add_leaf(commitment_hash);
            let caller = get_caller_address();
            let this = get_contract_address();
            self.token.read().transfer_from(caller, this, amount.into());
            self.emit(Deposit { caller, secret_and_nullifier_hash, amount });

            true
        }

        fn withdraw(ref self: ContractState, proof: Span<felt252>) -> bool {
            let mut verifier_result_serialized = library_call_syscall(
                VERIFIER_CLASS_HASH.try_into().unwrap(),
                selector!("verify_groth16_proof_bn254"),
                proof,
            )
                .unwrap_syscall();

            let public_input_serialized = Serde::<
                Option<Span<u256>>,
            >::deserialize(ref verifier_result_serialized)
                .unwrap();

            let public_input = PublicInputImpl::from_u256_span(public_input_serialized.unwrap());
            assert(
                self.nullifier_hashes.read(public_input.nullifier_hash) == false,
                Errors::NULLIFIER_ALREADY_USED,
            );
            self.nullifier_hashes.entry(public_input.nullifier_hash).write(true);

            assert(self.merkle.roots.read(public_input.root) == true, Errors::INVALID_ROOT);

            let min_fee: u256 = self.min_fee.read().into();
            assert(min_fee <= public_input.fee.into(), Errors::INSUFFICIENT_FEE);
            self.total_fee.write(self.total_fee.read() + public_input.fee);

            self
                .token
                .read()
                .transfer(public_input.recipient, (public_input.amount - public_input.fee).into());

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

            true
        }

        fn withdraw_fee(ref self: ContractState, recipient: ContractAddress, amount: u256) -> bool {
            self.ownable.assert_only_owner();
            assert(amount <= self.total_fee.read(), Errors::INSUFFICIENT_TOTAL_FEE);
            self.total_fee.write(self.total_fee.read() - amount);
            self.token.read().transfer(recipient, amount);
            self.emit(FeeWithdrawal { recipient: recipient, amount: amount });

            true
        }

        fn current_root(self: @ContractState) -> u256 {
            self.merkle.root.read()
        }
    }
}
