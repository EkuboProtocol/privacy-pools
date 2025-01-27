// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts for Cairo v0.20.0 (account/account.cairo)
use starknet::ContractAddress;

#[derive(Drop)]
pub struct PublicInput {
    root: u256,
    nullifier_hash: u256,
    recipient: ContractAddress,
    fee: u256,
    refund_commitment_hash: u256,
    amount: u256,
    associated_set_root: u256,
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
    fn withdraw(ref self: TContractState, proof: Span<felt252>) -> bool;
    fn withdraw_fee(ref self: TContractState, recipient: ContractAddress, amount: u256) -> bool;

    fn current_root(self: @TContractState) -> u256;
}

/// # Account Component
///
/// The Account component enables contracts to behave as accounts.
#[starknet::component]
pub mod PoolAccountComponent {
    use starknet::SyscallResultTrait;
    use core::hash::{HashStateExTrait, HashStateTrait};
    use core::num::traits::Zero;
    use core::poseidon::PoseidonTrait;
    use openzeppelin::account::interface;
    use openzeppelin::account::utils::{is_tx_version_valid, is_valid_stark_signature};
    use openzeppelin::introspection::src5::SRC5Component;
    use openzeppelin::introspection::src5::SRC5Component::InternalTrait as SRC5InternalTrait;
    use openzeppelin::introspection::src5::SRC5Component::SRC5Impl;
    use starknet::{account::Call, get_execution_info};
    use starknet::storage::{StoragePointerReadAccess, StoragePointerWriteAccess};

    use super::{PublicInput, PublicInputImpl};
    use crate::hash;

    #[storage]
    pub struct Storage {
        pub Account_public_key: felt252,
    }

    #[event]
    #[derive(Drop, PartialEq, starknet::Event)]
    pub enum Event {
        OwnerAdded: OwnerAdded,
        OwnerRemoved: OwnerRemoved,
    }

    #[derive(Drop, PartialEq, starknet::Event)]
    pub struct OwnerAdded {
        #[key]
        pub new_owner_guid: felt252,
    }

    #[derive(Drop, PartialEq, starknet::Event)]
    pub struct OwnerRemoved {
        #[key]
        pub removed_owner_guid: felt252,
    }

    pub mod Errors {
        pub const INVALID_CALLER: felt252 = 'Account: invalid caller';
        pub const INVALID_SIGNATURE: felt252 = 'Account: invalid signature';
        pub const INVALID_TX_VERSION: felt252 = 'Account: invalid tx version';
        pub const UNAUTHORIZED: felt252 = 'Account: unauthorized';
    }

    const VERIFIER_CLASS_HASH: felt252 =
        0x0260c274f472d42fbda9beef7752d1dfa278a197be04a1e1103b4223bdd51264;

    //
    // External
    //

    #[embeddable_as(SRC6Impl)]
    impl SRC6<
        TContractState,
        +HasComponent<TContractState>,
        +SRC5Component::HasComponent<TContractState>,
        +Drop<TContractState>,
    > of interface::ISRC6<ComponentState<TContractState>> {
        /// Executes a list of calls from the account.
        ///
        /// Requirements:
        ///
        /// - The transaction version must be greater than or equal to `MIN_TRANSACTION_VERSION`.
        /// - If the transaction is a simulation (version >= `QUERY_OFFSET`), it must be
        /// greater than or equal to `QUERY_OFFSET` + `MIN_TRANSACTION_VERSION`.
        fn __execute__(
            self: @ComponentState<TContractState>, calls: Array<Call>,
        ) -> Array<Span<felt252>> {
            // Avoid calls from other contracts
            // https://github.com/OpenZeppelin/cairo-contracts/issues/344
            let sender = starknet::get_caller_address();
            assert(sender.is_zero(), Errors::INVALID_CALLER);
            assert(is_tx_version_valid(), Errors::INVALID_TX_VERSION);

            let exec_info = get_execution_info().unbox();
            let tx_info = exec_info.tx_info.unbox();
            let signature = tx_info.signature;

            let mut verifier_result_serialized = core::starknet::syscalls::library_call_syscall(
                VERIFIER_CLASS_HASH.try_into().unwrap(),
                selector!("verify_groth16_proof_bn254"),
                signature,
            )
                .unwrap_syscall();
            let verifier_result = Serde::<
                Option<Span<u256>>,
            >::deserialize(ref verifier_result_serialized)
                .unwrap();

            if let Option::Some(public_output_serialized) = verifier_result {
                let public_output = PublicInputImpl::from_u256_span(public_output_serialized);
                starknet::VALIDATED;
            } else {
                panic(array!['account/verification-failed']);
            };

            array![]
        }

        /// Verifies the validity of the signature for the current transaction.
        /// This function is used by the protocol to verify `invoke` transactions.
        fn __validate__(self: @ComponentState<TContractState>, calls: Array<Call>) -> felt252 {
            self.validate_transaction()
        }

        /// Verifies that the given signature is valid for the given hash.
        fn is_valid_signature(
            self: @ComponentState<TContractState>, hash: felt252, signature: Array<felt252>,
        ) -> felt252 {
            let mut verifier_result_serialized = core::starknet::syscalls::library_call_syscall(
                VERIFIER_CLASS_HASH.try_into().unwrap(),
                selector!("verify_groth16_proof_bn254"),
                signature.span(),
            )
                .unwrap_syscall();
            let verifier_result = Serde::<
                Option<Span<u256>>,
            >::deserialize(ref verifier_result_serialized)
                .unwrap();
            if let Option::Some(_public_input) = verifier_result {
                starknet::VALIDATED
            } else {
                0
            }
        }
    }

    #[embeddable_as(DeclarerImpl)]
    impl Declarer<
        TContractState,
        +HasComponent<TContractState>,
        +SRC5Component::HasComponent<TContractState>,
        +Drop<TContractState>,
    > of interface::IDeclarer<ComponentState<TContractState>> {
        /// Verifies the validity of the signature for the current transaction.
        /// This function is used by the protocol to verify `declare` transactions.
        fn __validate_declare__(
            self: @ComponentState<TContractState>, class_hash: felt252,
        ) -> felt252 {
            self.validate_transaction()
        }
    }

    #[embeddable_as(DeployableImpl)]
    impl Deployable<
        TContractState,
        +HasComponent<TContractState>,
        +SRC5Component::HasComponent<TContractState>,
        +Drop<TContractState>,
    > of interface::IDeployable<ComponentState<TContractState>> {
        /// Verifies the validity of the signature for the current transaction.
        /// This function is used by the protocol to verify `deploy_account` transactions.
        fn __validate_deploy__(
            self: @ComponentState<TContractState>,
            class_hash: felt252,
            contract_address_salt: felt252,
            public_key: felt252,
        ) -> felt252 {
            self.validate_transaction()
        }
    }

    #[embeddable_as(PublicKeyImpl)]
    impl PublicKey<
        TContractState,
        +HasComponent<TContractState>,
        +SRC5Component::HasComponent<TContractState>,
        +Drop<TContractState>,
    > of interface::IPublicKey<ComponentState<TContractState>> {
        /// Returns the current public key of the account.
        fn get_public_key(self: @ComponentState<TContractState>) -> felt252 {
            self.Account_public_key.read()
        }

        /// Sets the public key of the account to `new_public_key`.
        ///
        /// Requirements:
        ///
        /// - The caller must be the contract itself.
        /// - The signature must be valid for the new owner.
        ///
        /// Emits both an `OwnerRemoved` and an `OwnerAdded` event.
        fn set_public_key(
            ref self: ComponentState<TContractState>,
            new_public_key: felt252,
            signature: Span<felt252>,
        ) {
            self.assert_only_self();

            let current_owner = self.Account_public_key.read();
            self.assert_valid_new_owner(current_owner, new_public_key, signature);

            self.emit(OwnerRemoved { removed_owner_guid: current_owner });
            self._set_public_key(new_public_key);
        }
    }

    /// Adds camelCase support for `ISRC6`.
    #[embeddable_as(SRC6CamelOnlyImpl)]
    impl SRC6CamelOnly<
        TContractState,
        +HasComponent<TContractState>,
        +SRC5Component::HasComponent<TContractState>,
        +Drop<TContractState>,
    > of interface::ISRC6CamelOnly<ComponentState<TContractState>> {
        fn isValidSignature(
            self: @ComponentState<TContractState>, hash: felt252, signature: Array<felt252>,
        ) -> felt252 {
            SRC6::is_valid_signature(self, hash, signature)
        }
    }

    /// Adds camelCase support for `PublicKeyTrait`.
    #[embeddable_as(PublicKeyCamelImpl)]
    impl PublicKeyCamel<
        TContractState,
        +HasComponent<TContractState>,
        +SRC5Component::HasComponent<TContractState>,
        +Drop<TContractState>,
    > of interface::IPublicKeyCamel<ComponentState<TContractState>> {
        fn getPublicKey(self: @ComponentState<TContractState>) -> felt252 {
            self.Account_public_key.read()
        }

        fn setPublicKey(
            ref self: ComponentState<TContractState>,
            newPublicKey: felt252,
            signature: Span<felt252>,
        ) {
            PublicKey::set_public_key(ref self, newPublicKey, signature);
        }
    }

    #[embeddable_as(AccountMixinImpl)]
    impl AccountMixin<
        TContractState,
        +HasComponent<TContractState>,
        impl SRC5: SRC5Component::HasComponent<TContractState>,
        +Drop<TContractState>,
    > of interface::AccountABI<ComponentState<TContractState>> {
        // ISRC6
        fn __execute__(
            self: @ComponentState<TContractState>, calls: Array<Call>,
        ) -> Array<Span<felt252>> {
            SRC6::__execute__(self, calls)
        }

        fn __validate__(self: @ComponentState<TContractState>, calls: Array<Call>) -> felt252 {
            SRC6::__validate__(self, calls)
        }

        fn is_valid_signature(
            self: @ComponentState<TContractState>, hash: felt252, signature: Array<felt252>,
        ) -> felt252 {
            SRC6::is_valid_signature(self, hash, signature)
        }

        // ISRC6CamelOnly
        fn isValidSignature(
            self: @ComponentState<TContractState>, hash: felt252, signature: Array<felt252>,
        ) -> felt252 {
            SRC6CamelOnly::isValidSignature(self, hash, signature)
        }

        // IDeclarer
        fn __validate_declare__(
            self: @ComponentState<TContractState>, class_hash: felt252,
        ) -> felt252 {
            Declarer::__validate_declare__(self, class_hash)
        }

        // IDeployable
        fn __validate_deploy__(
            self: @ComponentState<TContractState>,
            class_hash: felt252,
            contract_address_salt: felt252,
            public_key: felt252,
        ) -> felt252 {
            Deployable::__validate_deploy__(self, class_hash, contract_address_salt, public_key)
        }

        // IPublicKey
        fn get_public_key(self: @ComponentState<TContractState>) -> felt252 {
            PublicKey::get_public_key(self)
        }

        fn set_public_key(
            ref self: ComponentState<TContractState>,
            new_public_key: felt252,
            signature: Span<felt252>,
        ) {
            PublicKey::set_public_key(ref self, new_public_key, signature);
        }

        // IPublicKeyCamel
        fn getPublicKey(self: @ComponentState<TContractState>) -> felt252 {
            PublicKeyCamel::getPublicKey(self)
        }

        fn setPublicKey(
            ref self: ComponentState<TContractState>,
            newPublicKey: felt252,
            signature: Span<felt252>,
        ) {
            PublicKeyCamel::setPublicKey(ref self, newPublicKey, signature);
        }

        // ISRC5
        fn supports_interface(
            self: @ComponentState<TContractState>, interface_id: felt252,
        ) -> bool {
            let src5 = get_dep_component!(self, SRC5);
            src5.supports_interface(interface_id)
        }
    }

    //
    // Internal
    //

    #[generate_trait]
    pub impl InternalImpl<
        TContractState,
        +HasComponent<TContractState>,
        impl SRC5: SRC5Component::HasComponent<TContractState>,
        +Drop<TContractState>,
    > of InternalTrait<TContractState> {
        /// Initializes the account with the given public key, and registers the ISRC6 interface ID.
        ///
        /// Emits an `OwnerAdded` event.
        fn initializer(ref self: ComponentState<TContractState>, public_key: felt252) {
            let mut src5_component = get_dep_component_mut!(ref self, SRC5);
            src5_component.register_interface(interface::ISRC6_ID);
            self._set_public_key(public_key);
        }

        /// Validates that the caller is the account itself. Otherwise it reverts.
        fn assert_only_self(self: @ComponentState<TContractState>) {
            let caller = starknet::get_caller_address();
            let self = starknet::get_contract_address();
            assert(self == caller, Errors::UNAUTHORIZED);
        }

        /// Validates that `new_owner` accepted the ownership of the contract.
        ///
        /// WARNING: This function assumes that `current_owner` is the current owner of the
        /// contract, and does not validate this assumption.
        ///
        /// Requirements:
        ///
        /// - The signature must be valid for the new owner.
        fn assert_valid_new_owner(
            self: @ComponentState<TContractState>,
            current_owner: felt252,
            new_owner: felt252,
            signature: Span<felt252>,
        ) {
            let message_hash = PoseidonTrait::new()
                .update_with('StarkNet Message')
                .update_with('accept_ownership')
                .update_with(starknet::get_contract_address())
                .update_with(current_owner)
                .finalize();

            let is_valid = is_valid_stark_signature(message_hash, new_owner, signature);
            assert(is_valid, Errors::INVALID_SIGNATURE);
        }

        /// Validates the signature for the current transaction.
        /// Returns the short string `VALID` if valid, otherwise it reverts.
        fn validate_transaction(self: @ComponentState<TContractState>) -> felt252 {
            let tx_info = starknet::get_tx_info().unbox();
            let tx_hash = tx_info.transaction_hash;
            let signature = tx_info.signature;
            assert(self._is_valid_signature(tx_hash, signature), Errors::INVALID_SIGNATURE);
            starknet::VALIDATED
        }

        /// Sets the public key without validating the caller.
        /// The usage of this method outside the `set_public_key` function is discouraged.
        ///
        /// Emits an `OwnerAdded` event.
        fn _set_public_key(ref self: ComponentState<TContractState>, new_public_key: felt252) {
            self.Account_public_key.write(new_public_key);
            self.emit(OwnerAdded { new_owner_guid: new_public_key });
        }

        /// Returns whether the given signature is valid for the given hash
        /// using the account's current public key.
        fn _is_valid_signature(
            self: @ComponentState<TContractState>, hash: felt252, signature: Span<felt252>,
        ) -> bool {
            let mut verifier_result_serialized = core::starknet::syscalls::library_call_syscall(
                VERIFIER_CLASS_HASH.try_into().unwrap(), selector!("msm_g1"), signature.span(),
            )
                .unwrap_syscall();
            let verifier_result = Serde::<
                Option<Span<u256>>,
            >::deserialize(ref verifier_result_serialized)
                .unwrap();
            if let Option::Some(_public_input) = verifier_result {
                true
            } else {
                false
            }
        }

        fn deposit(ref self: ComponentState<TContractState>, secret_and_nullifier_hash: u256, amount: u256) -> bool {
            let commitment_hash = hash(secret_and_nullifier_hash, amount);
            self.merkle.add_leaf(commitment_hash);
            let caller = get_caller_address();
            let this = get_contract_address();
            self.token.read().transfer_from(caller, this, amount.into());
            self.emit(Deposit { caller, secret_and_nullifier_hash, amount });

            true
        }

        fn withdraw(ref self: ComponentState<TContractState>, proof: Span<felt252>) -> bool {
            let verifier_address: ContractAddress = self.verifier.read().contract_address;

            let public_output = IGroth16VerifierBN254Dispatcher {
                contract_address: verifier_address,
            }
                .verify_groth16_proof_bn254(proof)
                .expect(Errors::INVALID_PROOF);

            let public_output = PublicInputImpl::from_u256_span(public_output);
            assert(
                self.nullifier_hashes.read(public_output.nullifier_hash) == false,
                Errors::NULLIFIER_ALREADY_USED,
            );
            self.nullifier_hashes.entry(public_output.nullifier_hash).write(true);

            assert(self.merkle.roots.read(public_output.root) == true, Errors::INVALID_ROOT);

            let min_fee: u256 = self.min_fee.read().into();
            assert(min_fee <= public_output.fee.into(), Errors::INSUFFICIENT_FEE);
            self.total_fee.write(self.total_fee.read() + public_output.fee);

            self
                .token
                .read()
                .transfer(
                    public_output.recipient, (public_output.amount - public_output.fee).into(),
                );

            self.merkle.add_leaf(public_output.refund_commitment_hash);

            let caller = get_caller_address();
            self
                .emit(
                    Withdrawal {
                        caller,
                        recipient: public_output.recipient,
                        amount: public_output.amount,
                        associated_set_root: public_output.associated_set_root,
                    },
                );

            true
        }

        fn current_root(self: @ComponentState<TContractState>) -> u256 {
            self.merkle.root.read()
        }
    }
}
