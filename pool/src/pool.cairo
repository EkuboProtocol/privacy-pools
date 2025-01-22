use starknet::ContractAddress;

#[starknet::interface]
trait IPool<TContractState> {
    fn deposit(ref self: TContractState, secret_and_nullifier_hash: u256, amount: u256) -> bool;
    fn withdraw(ref self: TContractState, proof: Span<felt252>) -> bool;
    fn withdraw_fee(ref self: TContractState, recipient: ContractAddress, amount: u256) -> bool;

    fn current_root(self: @TContractState) -> u256;
}

#[derive(Drop)]
struct PublicOutput {
    root: u256,
    nullifier_hash: u256,
    recipient: ContractAddress,
    fee: u256,
    refund_commitment_hash: u256,
    amount: u256,
    associated_set_root: u256,
}

#[generate_trait]
impl PublicOutputImpl of PublicOutputTrait {
    fn from_u256_span(span: Span<u256>) -> PublicOutput {
        let recipient: felt252 = (*span[2]).try_into().unwrap();
        PublicOutput {
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

#[starknet::contract]
mod Pool {
    use openzeppelin::{
        access::ownable::OwnableComponent,
        token::erc20::interface::{IERC20Dispatcher, IERC20DispatcherTrait},
    };
    use starknet::{
        ContractAddress, get_caller_address, get_contract_address,
        storage::{
            Map, StoragePathEntry, StoragePointerWriteAccess, StorageMapReadAccess,
            StoragePointerReadAccess,
        },
    };
    use starknet::event::EventEmitter;

    use super::PublicOutputImpl;
    use crate::hash;
    use crate::merkle::{MerkleTreeComponent, MerkleTreeComponent::InternalTrait};
    use crate::verifier::groth16_verifier::{
        IGroth16VerifierBN254Dispatcher, IGroth16VerifierBN254DispatcherTrait,
    };

    component!(path: OwnableComponent, storage: ownable, event: OwnableEvent);
    component!(path: MerkleTreeComponent, storage: merkle, event: MerkleEvent);

    #[abi(embed_v0)]
    impl OwnableMixinImpl = OwnableComponent::OwnableMixinImpl<ContractState>;

    impl OwnableInternalImpl = OwnableComponent::InternalImpl<ContractState>;

    #[storage]
    struct Storage {
        pub token: IERC20Dispatcher,
        pub verifier: IGroth16VerifierBN254Dispatcher,
        pub nullifier_hashes: Map<u256, bool>,
        pub min_fee: u256,
        pub total_fee: u256,
        #[substorage(v0)]
        ownable: OwnableComponent::Storage,
        #[substorage(v0)]
        merkle: MerkleTreeComponent::Storage,
    }

    #[event]
    #[derive(Drop, PartialEq, starknet::Event)]
    enum Event {
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
        owner: ContractAddress,
        token: ContractAddress,
        verifier: ContractAddress,
        min_fee: u256,
    ) {
        self.ownable.initializer(owner);
        self.token.write(IERC20Dispatcher { contract_address: token });
        self.verifier.write(IGroth16VerifierBN254Dispatcher { contract_address: verifier });
        self.merkle.initializer();
        self.min_fee.write(min_fee);
        self.total_fee.write(0);
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
            let verifier_address: ContractAddress = self.verifier.read().contract_address;

            let public_output = IGroth16VerifierBN254Dispatcher {
                contract_address: verifier_address,
            }
                .verify_groth16_proof_bn254(proof)
                .expect(Errors::INVALID_PROOF);

            let public_output = PublicOutputImpl::from_u256_span(public_output);
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
