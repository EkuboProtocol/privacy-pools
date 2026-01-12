// ECIP (Elliptic Curve Inner Product) operations module
//
// This module provides MSM (Multi-Scalar Multiplication) functionality
// using garaga v1.0.1 API.

use garaga::definitions::G1Point;

#[starknet::interface]
trait IUniversalECIP<TContractState> {
    fn msm_g1(
        self: @TContractState,
        points: Span<G1Point>,
        scalars: Span<u256>,
        curve_index: usize,
        hint: Span<felt252>,
    ) -> G1Point;
}

#[starknet::contract]
mod UniversalECIP {
    use garaga::definitions::G1Point;
    use garaga::ec_ops::msm_g1;

    #[storage]
    struct Storage {}

    #[abi(embed_v0)]
    impl IUniversalECIP of super::IUniversalECIP<ContractState> {
        fn msm_g1(
            self: @ContractState,
            points: Span<G1Point>,
            scalars: Span<u256>,
            curve_index: usize,
            hint: Span<felt252>,
        ) -> G1Point {
            // Use the garaga v1.0.1 msm_g1 function
            msm_g1(points, scalars, curve_index, hint)
        }
    }
}
