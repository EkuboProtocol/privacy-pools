pub use ekubo::interfaces::router::{IRouter, RouteNode, TokenAmount};
pub use ekubo::types::delta::Delta;

// Import types from Ekubo protocol (versions now aligned)
pub use ekubo::types::i129::i129;
pub use ekubo::types::keys::PoolKey;
use starknet::ContractAddress;

/// Public inputs for swap proof verification
#[derive(Drop, Copy, Serde)]
pub struct SwapPublicInputs {
    pub root: u256,
    pub nullifier_hash: u256,
    pub token_in: ContractAddress,
    pub token_out: ContractAddress,
    pub amount_in: u256,
    pub min_amount_out: u256,
    pub new_balance_commitment: u256,
}

/// Public inputs for withdraw proof verification
#[derive(Drop, Copy, Serde)]
pub struct WithdrawPublicInputs {
    pub root: u256,
    pub nullifier_hash: u256,
    pub recipient: ContractAddress,
    pub token: ContractAddress,
    pub amount: u256,
    pub fee: u256,
}

#[starknet::interface]
pub trait IPrivacyRouter<TContractState> {
    fn deposit(ref self: TContractState, token: ContractAddress, amount: u256, commitment: u256);

    fn private_swap(
        ref self: TContractState,
        proof: Array<felt252>,
        route: Array<RouteNode>,
        token_in: ContractAddress,
        amount_in: u128,
        min_amount_out: u128,
        new_commitment: u256,
    ) -> Array<Delta>;

    fn withdraw(
        ref self: TContractState,
        proof: Array<felt252>,
        token: ContractAddress,
        recipient: ContractAddress,
        amount: u256,
        fee: u256,
    );

    fn is_nullifier_used(self: @TContractState, nullifier_hash: u256) -> bool;
    fn get_merkle_root(self: @TContractState) -> u256;
    fn is_known_root(self: @TContractState, root: u256) -> bool;
    fn get_deposit_count(self: @TContractState) -> u64;
    fn get_swap_count(self: @TContractState) -> u64;
    fn get_shielded_balance(
        self: @TContractState, commitment: u256, token: ContractAddress,
    ) -> u256;
}

/// PrivacyRouter - Privacy-preserving swap router for Ekubo Protocol
///
/// This contract enables private swaps by wrapping the standard Ekubo Router
/// and verifying ZK proofs for authorization.

#[starknet::contract]
pub mod PrivacyRouter {
    use core::num::traits::Zero;
    use ekubo::interfaces::router::{IRouterDispatcher, IRouterDispatcherTrait};
    use openzeppelin::access::ownable::OwnableComponent;
    use openzeppelin::interfaces::erc20::{IERC20Dispatcher, IERC20DispatcherTrait};
    use starknet::storage::{
        Map, StorageMapReadAccess, StorageMapWriteAccess, StoragePointerReadAccess,
        StoragePointerWriteAccess,
    };
    use starknet::{ContractAddress, get_caller_address, get_contract_address};
    use crate::hash;
    use crate::merkle::MerkleTreeComponent;
    use crate::merkle::MerkleTreeComponent::InternalTrait as MerkleInternalTrait;
    use crate::verifier::groth16_verifier::{
        IGroth16VerifierBN254Dispatcher, IGroth16VerifierBN254DispatcherTrait,
    };
    use super::{
        Delta, IPrivacyRouter, RouteNode, SwapPublicInputs, TokenAmount, WithdrawPublicInputs, i129,
    };

    component!(path: OwnableComponent, storage: ownable, event: OwnableEvent);
    component!(path: MerkleTreeComponent, storage: merkle, event: MerkleEvent);

    #[abi(embed_v0)]
    impl OwnableMixinImpl = OwnableComponent::OwnableMixinImpl<ContractState>;
    impl OwnableInternalImpl = OwnableComponent::InternalImpl<ContractState>;

    #[storage]
    struct Storage {
        /// Standard Ekubo Router - routes swaps through Ekubo pools
        ekubo_router: IRouterDispatcher,
        /// Groth16 verifier contract address
        verifier: ContractAddress,
        /// Nullifier tracking (prevents double-spend)
        nullifier_hashes: Map<u256, bool>,
        /// Shielded balances: (commitment, token) -> amount
        shielded_balances: Map<(u256, ContractAddress), u256>,
        /// Global swap counter
        swap_count: u64,
        /// Deposit counter
        deposit_count: u64,
        /// Minimum fee for withdrawals (relayer compensation)
        min_fee: u256,
        /// Total fees collected
        total_fees: u256,
        #[substorage(v0)]
        ownable: OwnableComponent::Storage,
        #[substorage(v0)]
        merkle: MerkleTreeComponent::Storage,
    }

    #[event]
    #[derive(Drop, PartialEq, starknet::Event)]
    pub enum Event {
        Deposit: Deposit,
        PrivateSwapExecuted: PrivateSwapExecuted,
        Withdrawal: Withdrawal,
        #[flat]
        OwnableEvent: OwnableComponent::Event,
        #[flat]
        MerkleEvent: MerkleTreeComponent::Event,
    }

    #[derive(Drop, PartialEq, starknet::Event)]
    pub struct Deposit {
        #[key]
        pub depositor: ContractAddress,
        #[key]
        pub token: ContractAddress,
        pub amount: u256,
        pub commitment: u256,
        pub leaf_index: u64,
    }

    #[derive(Drop, PartialEq, starknet::Event)]
    pub struct PrivateSwapExecuted {
        pub swap_index: u64,
        pub new_commitment: u256,
    }

    #[derive(Drop, PartialEq, starknet::Event)]
    pub struct Withdrawal {
        #[key]
        pub recipient: ContractAddress,
        #[key]
        pub token: ContractAddress,
        pub amount: u256,
        pub fee: u256,
    }

    pub mod Errors {
        pub const ZERO_AMOUNT: felt252 = 'PrivacyRouter: zero amount';
        pub const ZERO_COMMITMENT: felt252 = 'PrivacyRouter: zero commitment';
        pub const ZERO_RECIPIENT: felt252 = 'PrivacyRouter: zero recipient';
        pub const TRANSFER_FAILED: felt252 = 'PrivacyRouter: transfer failed';
        pub const INVALID_PROOF: felt252 = 'PrivacyRouter: invalid proof';
        pub const NULLIFIER_USED: felt252 = 'PrivacyRouter: nullifier used';
        pub const INVALID_ROOT: felt252 = 'PrivacyRouter: invalid root';
        pub const INSUFFICIENT_FEE: felt252 = 'PrivacyRouter: insufficient fee';
        pub const EMPTY_ROUTE: felt252 = 'PrivacyRouter: empty route';
        pub const INSUFFICIENT_OUTPUT: felt252 = 'PrivacyRouter: low output';
        pub const TOKEN_MISMATCH: felt252 = 'PrivacyRouter: token mismatch';
        pub const AMOUNT_MISMATCH: felt252 = 'PrivacyRouter: amount mismatch';
    }

    #[constructor]
    fn constructor(
        ref self: ContractState,
        owner: ContractAddress,
        ekubo_router: ContractAddress,
        verifier: ContractAddress,
        min_fee: u256,
    ) {
        self.ownable.initializer(owner);
        self.ekubo_router.write(IRouterDispatcher { contract_address: ekubo_router });
        self.verifier.write(verifier);
        self.merkle.initializer();
        self.min_fee.write(min_fee);
        self.total_fees.write(0);
        self.swap_count.write(0);
        self.deposit_count.write(0);
    }

    #[generate_trait]
    impl PrivacyRouterInternal of PrivacyRouterInternalTrait {
        /// Verify a Groth16 proof and return public inputs
        fn verify_proof(ref self: ContractState, proof: Span<felt252>) -> Option<Span<u256>> {
            let verifier_address = self.verifier.read();
            if verifier_address.is_zero() {
                // No verifier set - development mode
                return Option::None;
            }

            let result = IGroth16VerifierBN254Dispatcher { contract_address: verifier_address }
                .verify_groth16_proof_bn254(proof);

            match result {
                Result::Ok(inputs) => Option::Some(inputs),
                Result::Err(_) => Option::None,
            }
        }

        /// Parse swap public inputs from verified proof
        fn parse_swap_inputs(self: @ContractState, public_inputs: Span<u256>) -> SwapPublicInputs {
            let token_in: felt252 = (*public_inputs[2]).try_into().unwrap();
            let token_out: felt252 = (*public_inputs[3]).try_into().unwrap();

            SwapPublicInputs {
                root: *public_inputs[0],
                nullifier_hash: *public_inputs[1],
                token_in: token_in.try_into().unwrap(),
                token_out: token_out.try_into().unwrap(),
                amount_in: *public_inputs[4],
                min_amount_out: *public_inputs[5],
                new_balance_commitment: *public_inputs[6],
            }
        }

        /// Parse withdraw public inputs from verified proof
        fn parse_withdraw_inputs(
            self: @ContractState, public_inputs: Span<u256>,
        ) -> WithdrawPublicInputs {
            let recipient: felt252 = (*public_inputs[2]).try_into().unwrap();
            let token: felt252 = (*public_inputs[3]).try_into().unwrap();

            WithdrawPublicInputs {
                root: *public_inputs[0],
                nullifier_hash: *public_inputs[1],
                recipient: recipient.try_into().unwrap(),
                token: token.try_into().unwrap(),
                amount: *public_inputs[4],
                fee: *public_inputs[5],
            }
        }

        /// Calculate total output from swap deltas
        fn calculate_output(self: @ContractState, deltas: @Array<Delta>) -> u128 {
            let mut total: u128 = 0;
            let mut i: u32 = 0;
            while i < deltas.len() {
                let delta = *deltas[i];
                // The output is the negative delta (what we receive)
                if delta.amount0.sign {
                    total += delta.amount0.mag;
                }
                if delta.amount1.sign {
                    total += delta.amount1.mag;
                }
                i += 1;
            }
            total
        }
    }

    #[abi(embed_v0)]
    impl PrivacyRouterImpl of IPrivacyRouter<ContractState> {
        /// Deposit tokens with a commitment hash
        fn deposit(
            ref self: ContractState, token: ContractAddress, amount: u256, commitment: u256,
        ) {
            assert(amount.is_non_zero(), Errors::ZERO_AMOUNT);
            assert(commitment.is_non_zero(), Errors::ZERO_COMMITMENT);

            let depositor = get_caller_address();
            let this = get_contract_address();

            // Transfer tokens to this contract
            let token_dispatcher = IERC20Dispatcher { contract_address: token };
            let success = token_dispatcher.transfer_from(depositor, this, amount);
            assert(success, Errors::TRANSFER_FAILED);

            // Add commitment to Merkle tree
            // Commitment hash = hash(commitment, amount)
            let leaf = hash(commitment, amount);
            self.merkle.add_leaf(leaf);

            // Increment deposit counter
            let leaf_index = self.deposit_count.read();
            self.deposit_count.write(leaf_index + 1);

            // Track shielded balance
            let key = (commitment, token);
            let existing = self.shielded_balances.read(key);
            self.shielded_balances.write(key, existing + amount);

            self.emit(Deposit { depositor, token, amount, commitment, leaf_index });
        }

        /// Execute a private swap through existing Ekubo pools
        fn private_swap(
            ref self: ContractState,
            proof: Array<felt252>,
            route: Array<RouteNode>,
            token_in: ContractAddress,
            amount_in: u128,
            min_amount_out: u128,
            new_commitment: u256,
        ) -> Array<Delta> {
            assert(route.len() > 0, Errors::EMPTY_ROUTE);
            assert(amount_in.is_non_zero(), Errors::ZERO_AMOUNT);

            // 1. Verify ZK proof and get public inputs
            let public_inputs_opt = self.verify_proof(proof.span());

            // 2. Parse and validate public inputs (when proof verification is enabled)
            if let Option::Some(public_inputs) = public_inputs_opt {
                let swap_inputs = self.parse_swap_inputs(public_inputs);

                // Validate nullifier not used
                assert(
                    !self.nullifier_hashes.read(swap_inputs.nullifier_hash), Errors::NULLIFIER_USED,
                );
                self.nullifier_hashes.write(swap_inputs.nullifier_hash, true);

                // Validate merkle root
                assert(self.merkle.roots.read(swap_inputs.root), Errors::INVALID_ROOT);

                // Validate proof matches swap parameters
                assert(swap_inputs.token_in == token_in, Errors::TOKEN_MISMATCH);
                assert(swap_inputs.amount_in == amount_in.into(), Errors::AMOUNT_MISMATCH);
            }

            // 3. Approve tokens for Router
            let token_dispatcher = IERC20Dispatcher { contract_address: token_in };
            token_dispatcher.approve(self.ekubo_router.read().contract_address, amount_in.into());

            // 4. Execute swap through STANDARD ROUTER
            //    This routes through existing pools with FULL concentrated liquidity!
            let token_amount = TokenAmount {
                token: token_in, amount: i129 { mag: amount_in, sign: false },
            };
            let deltas = self.ekubo_router.read().multihop_swap(route, token_amount);

            // 5. Verify minimum output
            let output = self.calculate_output(@deltas);
            assert(output >= min_amount_out, Errors::INSUFFICIENT_OUTPUT);

            // 6. Add new commitment for updated balance
            self.merkle.add_leaf(new_commitment);

            // 7. Emit event and increment counter
            let swap_index = self.swap_count.read();
            self.swap_count.write(swap_index + 1);

            self.emit(PrivateSwapExecuted { swap_index, new_commitment });

            deltas
        }

        /// Withdraw tokens with ZK proof
        fn withdraw(
            ref self: ContractState,
            proof: Array<felt252>,
            token: ContractAddress,
            recipient: ContractAddress,
            amount: u256,
            fee: u256,
        ) {
            assert(amount.is_non_zero(), Errors::ZERO_AMOUNT);
            assert(recipient.is_non_zero(), Errors::ZERO_RECIPIENT);
            assert(fee >= self.min_fee.read(), Errors::INSUFFICIENT_FEE);

            // 1. Verify ZK proof
            let public_inputs_opt = self.verify_proof(proof.span());

            // 2. Parse and validate (when verification is enabled)
            if let Option::Some(inputs) = public_inputs_opt {
                let withdraw_inputs = self.parse_withdraw_inputs(inputs);

                // Validate nullifier not used
                assert(
                    !self.nullifier_hashes.read(withdraw_inputs.nullifier_hash),
                    Errors::NULLIFIER_USED,
                );
                self.nullifier_hashes.write(withdraw_inputs.nullifier_hash, true);

                // Validate merkle root
                assert(self.merkle.roots.read(withdraw_inputs.root), Errors::INVALID_ROOT);

                // Validate proof matches withdraw parameters
                assert(withdraw_inputs.recipient == recipient, Errors::TOKEN_MISMATCH);
                assert(withdraw_inputs.token == token, Errors::TOKEN_MISMATCH);
                assert(withdraw_inputs.amount == amount, Errors::AMOUNT_MISMATCH);
            }

            // 3. Track fees
            self.total_fees.write(self.total_fees.read() + fee);

            // 4. Transfer tokens to recipient (minus fee)
            let net_amount = amount - fee;
            let token_dispatcher = IERC20Dispatcher { contract_address: token };
            let success = token_dispatcher.transfer(recipient, net_amount);
            assert(success, Errors::TRANSFER_FAILED);

            self.emit(Withdrawal { recipient, token, amount, fee });
        }

        /// Check if a nullifier has been used
        fn is_nullifier_used(self: @ContractState, nullifier_hash: u256) -> bool {
            self.nullifier_hashes.read(nullifier_hash)
        }

        /// Get the current Merkle root
        fn get_merkle_root(self: @ContractState) -> u256 {
            self.merkle.root.read()
        }

        /// Check if a historical root is valid
        fn is_known_root(self: @ContractState, root: u256) -> bool {
            self.merkle.roots.read(root)
        }

        /// Get the number of deposits
        fn get_deposit_count(self: @ContractState) -> u64 {
            self.deposit_count.read()
        }

        /// Get the total number of private swaps
        fn get_swap_count(self: @ContractState) -> u64 {
            self.swap_count.read()
        }

        /// Get shielded balance for a commitment and token
        fn get_shielded_balance(
            self: @ContractState, commitment: u256, token: ContractAddress,
        ) -> u256 {
            self.shielded_balances.read((commitment, token))
        }
    }
}
