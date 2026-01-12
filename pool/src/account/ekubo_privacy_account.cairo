// SPDX-License-Identifier: MIT
// Ekubo Privacy Account - Integrates Privacy Pools with Ekubo AMM
use starknet::ContractAddress;
use starknet::account::Call;

/// Public inputs for swap operations
#[derive(Drop, Copy, Serde)]
pub struct SwapPublicInput {
    pub root: u256,
    pub nullifier_hash: u256,
    pub token_in: ContractAddress,
    pub token_out: ContractAddress,
    pub amount_in: u256,
    pub min_amount_out: u256,
    pub new_balance_commitment: u256,
}

#[generate_trait]
pub impl SwapPublicInputImpl of SwapPublicInputTrait {
    fn from_u256_span(span: Span<u256>) -> SwapPublicInput {
        let token_in: felt252 = (*span[2]).try_into().unwrap();
        let token_out: felt252 = (*span[3]).try_into().unwrap();
        SwapPublicInput {
            root: *span[0],
            nullifier_hash: *span[1],
            token_in: token_in.try_into().unwrap(),
            token_out: token_out.try_into().unwrap(),
            amount_in: *span[4],
            min_amount_out: *span[5],
            new_balance_commitment: *span[6],
        }
    }
}

/// Pool key structure matching Ekubo's PoolKey
#[derive(Drop, Copy, Serde, Hash, starknet::Store)]
pub struct PoolKey {
    pub token0: ContractAddress,
    pub token1: ContractAddress,
    pub fee: u128,
    pub tick_spacing: u128,
    pub extension: ContractAddress,
}

/// Signed 129-bit integer (matching Ekubo's i129)
#[derive(Drop, Copy, Serde, starknet::Store)]
pub struct i129 {
    pub mag: u128,
    pub sign: bool,
}

/// Swap parameters matching Ekubo's SwapParameters
#[derive(Drop, Copy, Serde, starknet::Store)]
pub struct SwapParameters {
    pub amount: i129,
    pub is_token1: bool,
    pub sqrt_ratio_limit: u256,
    pub skip_ahead: u128,
}

/// Delta type for swap results
#[derive(Drop, Copy, Serde)]
pub struct Delta {
    pub amount0: i129,
    pub amount1: i129,
}

#[starknet::interface]
pub trait IEkuboPrivacyAccount<TContractState> {
    /// Deposit tokens with a commitment hash (inherits from PoolAccount)
    fn deposit(ref self: TContractState, secret_and_nullifier_hash: u256, amount: u256) -> bool;

    /// Withdraw tokens with a ZK proof (inherits from PoolAccount)
    fn withdraw(ref self: TContractState, public_inputs: Span<u256>);

    /// Execute a private swap on Ekubo
    /// The caller provides a ZK proof that they have sufficient balance
    fn private_swap(
        ref self: TContractState,
        proof: Array<felt252>,
        pool_key: PoolKey,
        sqrt_ratio_limit: u256,
        skip_ahead: u128,
    );

    /// Get shielded balance commitment for a user
    fn get_balance_commitment(self: @TContractState, commitment: u256) -> u256;

    /// Account abstraction functions
    fn __execute__(ref self: TContractState, calls: Array<Call>) -> Array<Span<felt252>>;
    fn __validate__(self: @TContractState, calls: Array<Call>) -> felt252;
    fn is_valid_signature(
        self: @TContractState, hash: felt252, signature: Array<felt252>,
    ) -> felt252;
}

/// Interface for Ekubo Core (subset needed for swaps)
#[starknet::interface]
pub trait IEkuboCore<TContractState> {
    fn lock(ref self: TContractState, data: Span<felt252>) -> Span<felt252>;
    fn swap(ref self: TContractState, pool_key: PoolKey, params: SwapParameters) -> Delta;
    fn withdraw(
        ref self: TContractState,
        token_address: ContractAddress,
        recipient: ContractAddress,
        amount: u128,
    );
    fn pay(ref self: TContractState, token_address: ContractAddress);
}

/// Interface for the locker callback from Ekubo Core
#[starknet::interface]
pub trait ILocker<TContractState> {
    fn locked(ref self: TContractState, id: u32, data: Span<felt252>) -> Span<felt252>;
}

#[starknet::contract(account)]
mod EkuboPrivacyAccount {
    use openzeppelin::access::ownable::OwnableComponent;
    use openzeppelin::account::extensions::SRC9Component;
    use openzeppelin::interfaces::erc20::{IERC20Dispatcher, IERC20DispatcherTrait};
    use openzeppelin::introspection::src5::SRC5Component;
    use openzeppelin::upgrades::UpgradeableComponent;
    use starknet::account::Call;
    use starknet::storage::{
        Map, StorageMapReadAccess, StoragePathEntry, StoragePointerReadAccess,
        StoragePointerWriteAccess,
    };
    use starknet::{ClassHash, ContractAddress, get_caller_address, get_contract_address};
    use crate::account::utils::{execute_calls, is_valid};
    use crate::hash;
    use crate::merkle::MerkleTreeComponent;
    use crate::merkle::MerkleTreeComponent::InternalTrait;
    use crate::verifier::groth16_verifier::{
        IGroth16VerifierBN254Dispatcher, IGroth16VerifierBN254DispatcherTrait,
    };
    use super::{
        IEkuboCoreDispatcher, IEkuboCoreDispatcherTrait, ILocker, PoolKey, SwapParameters,
        SwapPublicInputTrait, i129,
    };

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
        // Token for deposits/withdrawals
        token: IERC20Dispatcher,
        // Groth16 verifier address
        verifier: ContractAddress,
        // Groth16 verifier class hash (for validation mode)
        verifier_class_hash: ClassHash,
        // Nullifier tracking to prevent double-spending
        nullifier_hashes: Map<u256, bool>,
        // Minimum fee for withdrawals
        min_fee: u256,
        // Total fees collected
        total_fee: u256,
        // Ekubo Core contract
        ekubo_core: IEkuboCoreDispatcher,
        // Privacy Extension address
        privacy_extension: ContractAddress,
        // Shielded balance commitments (commitment_hash -> balance_commitment)
        shielded_balances: Map<u256, u256>,
        // Pending swap data for locker callback
        pending_swap_pool_key: PoolKey,
        pending_swap_params: SwapParameters,
        pending_swap_recipient: ContractAddress,
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
        PrivateSwap: PrivateSwap,
        BalanceCommitmentUpdated: BalanceCommitmentUpdated,
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
    }

    #[derive(Drop, PartialEq, starknet::Event)]
    pub struct PrivateSwap {
        #[key]
        pub pool_key_hash: felt252,
        pub swap_index: u64,
    }

    #[derive(Drop, PartialEq, starknet::Event)]
    pub struct BalanceCommitmentUpdated {
        #[key]
        pub old_commitment: u256,
        pub new_commitment: u256,
    }

    #[constructor]
    fn constructor(
        ref self: ContractState,
        owner: ContractAddress,
        token: ContractAddress,
        verifier: ContractAddress,
        verifier_class_hash: ClassHash,
        min_fee: u256,
        ekubo_core: ContractAddress,
        privacy_extension: ContractAddress,
    ) {
        self.ownable.initializer(owner);
        self.token.write(IERC20Dispatcher { contract_address: token });
        self.verifier.write(verifier);
        self.verifier_class_hash.write(verifier_class_hash);
        self.merkle.initializer();
        self.min_fee.write(min_fee);
        self.total_fee.write(0);
        self.ekubo_core.write(IEkuboCoreDispatcher { contract_address: ekubo_core });
        self.privacy_extension.write(privacy_extension);
    }

    #[abi(embed_v0)]
    impl EkuboPrivacyAccountImpl of super::IEkuboPrivacyAccount<ContractState> {
        fn deposit(ref self: ContractState, secret_and_nullifier_hash: u256, amount: u256) -> bool {
            let commitment_hash = hash(secret_and_nullifier_hash, amount);
            self.merkle.add_leaf(commitment_hash);
            let caller = get_caller_address();
            let this = get_contract_address();
            self.token.read().transfer_from(caller, this, amount.into());

            // Initialize shielded balance commitment
            self.shielded_balances.entry(commitment_hash).write(commitment_hash);

            self.emit(Deposit { caller, secret_and_nullifier_hash, amount });
            true
        }

        fn withdraw(ref self: ContractState, public_inputs: Span<u256>) {
            // Parse public inputs (same as original PoolAccount)
            let root = *public_inputs[0];
            let nullifier_hash = *public_inputs[1];
            let recipient: felt252 = (*public_inputs[2]).try_into().unwrap();
            let recipient: ContractAddress = recipient.try_into().unwrap();
            let fee = *public_inputs[3];
            let amount = *public_inputs[5];

            // Check nullifier hasn't been used
            assert(self.nullifier_hashes.read(nullifier_hash) == false, 'Nullifier already used');
            self.nullifier_hashes.entry(nullifier_hash).write(true);

            // Check merkle root is valid
            assert(self.merkle.roots.read(root) == true, 'Invalid root');

            // Check fee is sufficient
            let min_fee: u256 = self.min_fee.read().into();
            assert(min_fee <= fee.into(), 'Insufficient fee');
            self.total_fee.write(self.total_fee.read() + fee);

            // Transfer tokens to recipient
            self.token.read().transfer(recipient, (amount - fee).into());

            let caller = get_caller_address();
            self.emit(Withdrawal { caller, recipient, amount });
        }

        fn private_swap(
            ref self: ContractState,
            proof: Array<felt252>,
            pool_key: PoolKey,
            sqrt_ratio_limit: u256,
            skip_ahead: u128,
        ) {
            // Verify the ZK proof and get public inputs
            let public_input_serialized_opt = IGroth16VerifierBN254Dispatcher {
                contract_address: self.verifier.read(),
            }
                .verify_groth16_proof_bn254(proof.span());

            let public_input_serialized = public_input_serialized_opt.expect('Invalid proof');

            // Parse public inputs
            let mut public_inputs: Array<u256> = array![];
            let mut i: u32 = 0;
            while i < public_input_serialized.len() {
                let high: u128 = (*public_input_serialized[i]).try_into().unwrap();
                let low: u128 = (*public_input_serialized[i + 1]).try_into().unwrap();
                public_inputs.append(u256 { high, low });
                i += 2;
            }

            let swap_input = SwapPublicInputTrait::from_u256_span(public_inputs.span());

            // Check nullifier hasn't been used
            assert(
                self.nullifier_hashes.read(swap_input.nullifier_hash) == false,
                'Nullifier already used',
            );
            self.nullifier_hashes.entry(swap_input.nullifier_hash).write(true);

            // Check merkle root is valid
            assert(self.merkle.roots.read(swap_input.root) == true, 'Invalid root');

            // Determine swap direction
            let is_token1 = swap_input.token_in == pool_key.token1;
            let amount: u128 = swap_input.amount_in.try_into().unwrap();

            let swap_params = SwapParameters {
                amount: i129 { mag: amount, sign: false }, is_token1, sqrt_ratio_limit, skip_ahead,
            };

            // Store pending swap data for the locker callback
            self.pending_swap_pool_key.write(pool_key);
            self.pending_swap_params.write(swap_params);
            self.pending_swap_recipient.write(get_caller_address());

            // Execute swap via Ekubo Core lock mechanism
            let mut calldata: Array<felt252> = array![];
            Serde::serialize(@pool_key, ref calldata);
            Serde::serialize(@swap_params, ref calldata);

            self.ekubo_core.read().lock(calldata.span());

            // Update shielded balance commitment
            self.merkle.add_leaf(swap_input.new_balance_commitment);

            self
                .emit(
                    BalanceCommitmentUpdated {
                        old_commitment: swap_input.nullifier_hash, // Using nullifier as reference
                        new_commitment: swap_input.new_balance_commitment,
                    },
                );
        }

        fn get_balance_commitment(self: @ContractState, commitment: u256) -> u256 {
            self.shielded_balances.read(commitment)
        }

        fn __execute__(ref self: ContractState, calls: Array<Call>) -> Array<Span<felt252>> {
            let verifier_address = self.verifier.read();
            execute_calls(calls.span(), verifier_address)
        }

        fn __validate__(self: @ContractState, calls: Array<Call>) -> felt252 {
            let verifier_class_hash = self.verifier_class_hash.read();
            is_valid(calls.span(), verifier_class_hash)
        }

        fn is_valid_signature(
            self: @ContractState, hash: felt252, signature: Array<felt252>,
        ) -> felt252 {
            starknet::VALIDATED
        }
    }

    #[abi(embed_v0)]
    impl LockerImpl of ILocker<ContractState> {
        fn locked(ref self: ContractState, id: u32, data: Span<felt252>) -> Span<felt252> {
            // Deserialize the pool key and swap params from callback data
            let pool_key = self.pending_swap_pool_key.read();
            let swap_params = self.pending_swap_params.read();

            // Approve tokens for the swap
            let token_in = if swap_params.is_token1 {
                pool_key.token1
            } else {
                pool_key.token0
            };

            // Transfer tokens to Core for the swap
            self
                .token
                .read()
                .approve(self.ekubo_core.read().contract_address, swap_params.amount.mag.into());

            // Execute the swap
            let delta = self.ekubo_core.read().swap(pool_key, swap_params);

            // Pay for the input token
            self.ekubo_core.read().pay(token_in);

            // Withdraw output tokens
            let (output_token, output_amount) = if swap_params.is_token1 {
                (pool_key.token0, delta.amount0)
            } else {
                (pool_key.token1, delta.amount1)
            };

            // Withdraw to this contract (for shielded balance tracking)
            if !output_amount.sign && output_amount.mag > 0 {
                self
                    .ekubo_core
                    .read()
                    .withdraw(output_token, get_contract_address(), output_amount.mag);
            }

            // Return empty result
            array![].span()
        }
    }
}

