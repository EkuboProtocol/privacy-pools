use starknet::SyscallResultTrait;
use starknet::account::Call;
use starknet::{ClassHash, ContractAddress};
use crate::verifier::groth16_verifier::{IGroth16VerifierBN254Dispatcher, IGroth16VerifierBN254DispatcherTrait};

const INVALID_PROOF: felt252 = 'Pool: invalid proof';

// is_valid is called from __validate__ which runs in validation mode
// Only library calls are allowed in validation mode, so we must use verifier_class_hash
pub fn is_valid(calls: Span<Call>, verifier_class_hash: ClassHash) -> felt252 {
    for call in calls {
        // For library calls, pass the entire calldata as-is
        // The verifier's deserialize_full_proof_with_hints_bn254 will handle the format
        let mut output_serialized = core::starknet::syscalls::library_call_syscall(
            verifier_class_hash,
            selector!("verify_groth16_proof_bn254"),
            *call.calldata,
        )
            .unwrap_syscall();
        Serde::<Option<Span<felt252>>>::deserialize(ref output_serialized).unwrap().unwrap();
    };
    starknet::VALIDATED
}

// execute_calls is called from __execute__ which runs in execution mode
// Regular contract calls are allowed, so we can use verifier_address
pub fn execute_calls(calls: Span<Call>, verifier_address: ContractAddress) -> Array<Span<felt252>> {
    let mut res = array![];
    for call in calls {
        // calldata is [len, proof_0, proof_1, ...] (Cairo array serialization)
        // Extract the proof by skipping the length prefix
        let calldata_span = *call.calldata;
        let mut proof_array: Array<felt252> = array![];
        let mut i: u32 = 1;
        while i < calldata_span.len() {
            proof_array.append(*calldata_span[i]);
            i += 1;
        };
        
        // Verify the proof and get public inputs
        let public_input_serialized_opt = IGroth16VerifierBN254Dispatcher {
            contract_address: verifier_address,
        }
            .verify_groth16_proof_bn254(proof_array.span());
        
        // Check that proof is valid
        let public_input_serialized = public_input_serialized_opt.expect(INVALID_PROOF);

        // Serialize public inputs and execute the call with them
        let mut calldata = array![];
        Serde::serialize(@public_input_serialized, ref calldata);
        let call = Call { to: *call.to, selector: *call.selector, calldata: calldata.span() };
        res.append(execute_single_call(@call))
    };
    res
}

fn execute_single_call(call: @Call) -> Span<felt252> {
    let Call { to, selector, calldata } = *call;
    starknet::syscalls::call_contract_syscall(to, selector, calldata).unwrap_syscall()
}
