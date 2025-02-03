use starknet::SyscallResultTrait;
use starknet::account::Call;

const VERIFIER_CLASS_HASH: felt252 =
    0x1de9feeaaf8f479d7736efb1f8c782ca7b18cd549d30d987c9b4290520c776a;

pub fn is_valid(calls: Span<Call>) -> felt252 {
    for call in calls {
        let mut output_serialized = core::starknet::syscalls::library_call_syscall(
            VERIFIER_CLASS_HASH.try_into().unwrap(),
            selector!("verify_groth16_proof_bn254"),
            *call.calldata,
        )
            .unwrap_syscall();
        Serde::<Option<Span<felt252>>>::deserialize(ref output_serialized).unwrap().unwrap();
    };
    starknet::VALIDATED
}

pub fn execute_calls(calls: Span<Call>) -> Array<Span<felt252>> {
    let mut res = array![];
    for call in calls {
        let mut output_serialized = core::starknet::syscalls::library_call_syscall(
            VERIFIER_CLASS_HASH.try_into().unwrap(),
            selector!("verify_groth16_proof_bn254"),
            *call.calldata,
        )
            .unwrap_syscall();
        let output = Serde::<Option<Span<felt252>>>::deserialize(ref output_serialized)
            .unwrap()
            .unwrap();

        let mut calldata = array![];
        Serde::serialize(@output, ref calldata);
        let call = Call { to: *call.to, selector: *call.selector, calldata: calldata.span() };
        res.append(execute_single_call(@call))
    };
    res
}

fn execute_single_call(call: @Call) -> Span<felt252> {
    let Call { to, selector, calldata } = *call;
    starknet::syscalls::call_contract_syscall(to, selector, calldata).unwrap_syscall()
}
