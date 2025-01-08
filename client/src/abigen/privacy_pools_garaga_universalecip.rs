#[derive()]
pub struct PrivacyPoolsGaragaUniversalecip<A: starknet::accounts::ConnectedAccount + Sync> {
    pub address: starknet::core::types::Felt,
    pub account: A,
    pub block_id: starknet::core::types::BlockId,
}
impl<A: starknet::accounts::ConnectedAccount + Sync> PrivacyPoolsGaragaUniversalecip<A> {
    pub fn new(address: starknet::core::types::Felt, account: A) -> Self {
        Self {
            address,
            account,
            block_id: starknet::core::types::BlockId::Tag(starknet::core::types::BlockTag::Pending),
        }
    }
    pub fn set_contract_address(&mut self, address: starknet::core::types::Felt) {
        self.address = address;
    }
    pub fn provider(&self) -> &A::Provider {
        self.account.provider()
    }
    pub fn set_block(&mut self, block_id: starknet::core::types::BlockId) {
        self.block_id = block_id;
    }
    pub fn with_block(self, block_id: starknet::core::types::BlockId) -> Self {
        Self { block_id, ..self }
    }
}
#[derive()]
pub struct PrivacyPoolsGaragaUniversalecipReader<P: starknet::providers::Provider + Sync> {
    pub address: starknet::core::types::Felt,
    pub provider: P,
    pub block_id: starknet::core::types::BlockId,
}
impl<P: starknet::providers::Provider + Sync> PrivacyPoolsGaragaUniversalecipReader<P> {
    pub fn new(address: starknet::core::types::Felt, provider: P) -> Self {
        Self {
            address,
            provider,
            block_id: starknet::core::types::BlockId::Tag(starknet::core::types::BlockTag::Pending),
        }
    }
    pub fn set_contract_address(&mut self, address: starknet::core::types::Felt) {
        self.address = address;
    }
    pub fn provider(&self) -> &P {
        &self.provider
    }
    pub fn set_block(&mut self, block_id: starknet::core::types::BlockId) {
        self.block_id = block_id;
    }
    pub fn with_block(self, block_id: starknet::core::types::BlockId) -> Self {
        Self { block_id, ..self }
    }
}
#[derive()]
pub struct DerivePointFromXHint {
    pub y_last_attempt: U384,
    pub g_rhs_sqrt: Vec<U384>,
}
impl cainome::cairo_serde::CairoSerde for DerivePointFromXHint {
    type RustType = Self;
    const SERIALIZED_SIZE: std::option::Option<usize> = None;
    #[inline]
    fn cairo_serialized_size(__rust: &Self::RustType) -> usize {
        let mut __size = 0;
        __size += U384::cairo_serialized_size(&__rust.y_last_attempt);
        __size += Vec::<U384>::cairo_serialized_size(&__rust.g_rhs_sqrt);
        __size
    }
    fn cairo_serialize(__rust: &Self::RustType) -> Vec<starknet::core::types::Felt> {
        let mut __out: Vec<starknet::core::types::Felt> = vec![];
        __out.extend(U384::cairo_serialize(&__rust.y_last_attempt));
        __out.extend(Vec::<U384>::cairo_serialize(&__rust.g_rhs_sqrt));
        __out
    }
    fn cairo_deserialize(
        __felts: &[starknet::core::types::Felt],
        __offset: usize,
    ) -> cainome::cairo_serde::Result<Self::RustType> {
        let mut __offset = __offset;
        let y_last_attempt = U384::cairo_deserialize(__felts, __offset)?;
        __offset += U384::cairo_serialized_size(&y_last_attempt);
        let g_rhs_sqrt = Vec::<U384>::cairo_deserialize(__felts, __offset)?;
        __offset += Vec::<U384>::cairo_serialized_size(&g_rhs_sqrt);
        Ok(DerivePointFromXHint {
            y_last_attempt,
            g_rhs_sqrt,
        })
    }
}
#[derive()]
pub struct FunctionFelt {
    pub a_num: Vec<U384>,
    pub a_den: Vec<U384>,
    pub b_num: Vec<U384>,
    pub b_den: Vec<U384>,
}
impl cainome::cairo_serde::CairoSerde for FunctionFelt {
    type RustType = Self;
    const SERIALIZED_SIZE: std::option::Option<usize> = None;
    #[inline]
    fn cairo_serialized_size(__rust: &Self::RustType) -> usize {
        let mut __size = 0;
        __size += Vec::<U384>::cairo_serialized_size(&__rust.a_num);
        __size += Vec::<U384>::cairo_serialized_size(&__rust.a_den);
        __size += Vec::<U384>::cairo_serialized_size(&__rust.b_num);
        __size += Vec::<U384>::cairo_serialized_size(&__rust.b_den);
        __size
    }
    fn cairo_serialize(__rust: &Self::RustType) -> Vec<starknet::core::types::Felt> {
        let mut __out: Vec<starknet::core::types::Felt> = vec![];
        __out.extend(Vec::<U384>::cairo_serialize(&__rust.a_num));
        __out.extend(Vec::<U384>::cairo_serialize(&__rust.a_den));
        __out.extend(Vec::<U384>::cairo_serialize(&__rust.b_num));
        __out.extend(Vec::<U384>::cairo_serialize(&__rust.b_den));
        __out
    }
    fn cairo_deserialize(
        __felts: &[starknet::core::types::Felt],
        __offset: usize,
    ) -> cainome::cairo_serde::Result<Self::RustType> {
        let mut __offset = __offset;
        let a_num = Vec::<U384>::cairo_deserialize(__felts, __offset)?;
        __offset += Vec::<U384>::cairo_serialized_size(&a_num);
        let a_den = Vec::<U384>::cairo_deserialize(__felts, __offset)?;
        __offset += Vec::<U384>::cairo_serialized_size(&a_den);
        let b_num = Vec::<U384>::cairo_deserialize(__felts, __offset)?;
        __offset += Vec::<U384>::cairo_serialized_size(&b_num);
        let b_den = Vec::<U384>::cairo_deserialize(__felts, __offset)?;
        __offset += Vec::<U384>::cairo_serialized_size(&b_den);
        Ok(FunctionFelt {
            a_num,
            a_den,
            b_num,
            b_den,
        })
    }
}
#[derive()]
pub struct G1Point {
    pub x: U384,
    pub y: U384,
}
impl cainome::cairo_serde::CairoSerde for G1Point {
    type RustType = Self;
    const SERIALIZED_SIZE: std::option::Option<usize> = None;
    #[inline]
    fn cairo_serialized_size(__rust: &Self::RustType) -> usize {
        let mut __size = 0;
        __size += U384::cairo_serialized_size(&__rust.x);
        __size += U384::cairo_serialized_size(&__rust.y);
        __size
    }
    fn cairo_serialize(__rust: &Self::RustType) -> Vec<starknet::core::types::Felt> {
        let mut __out: Vec<starknet::core::types::Felt> = vec![];
        __out.extend(U384::cairo_serialize(&__rust.x));
        __out.extend(U384::cairo_serialize(&__rust.y));
        __out
    }
    fn cairo_deserialize(
        __felts: &[starknet::core::types::Felt],
        __offset: usize,
    ) -> cainome::cairo_serde::Result<Self::RustType> {
        let mut __offset = __offset;
        let x = U384::cairo_deserialize(__felts, __offset)?;
        __offset += U384::cairo_serialized_size(&x);
        let y = U384::cairo_deserialize(__felts, __offset)?;
        __offset += U384::cairo_serialized_size(&y);
        Ok(G1Point { x, y })
    }
}
#[derive()]
pub struct MSMHint {
    pub Q_low: G1Point,
    pub Q_high: G1Point,
    pub Q_high_shifted: G1Point,
    pub SumDlogDivLow: FunctionFelt,
    pub SumDlogDivHigh: FunctionFelt,
    pub SumDlogDivHighShifted: FunctionFelt,
}
impl cainome::cairo_serde::CairoSerde for MSMHint {
    type RustType = Self;
    const SERIALIZED_SIZE: std::option::Option<usize> = None;
    #[inline]
    fn cairo_serialized_size(__rust: &Self::RustType) -> usize {
        let mut __size = 0;
        __size += G1Point::cairo_serialized_size(&__rust.Q_low);
        __size += G1Point::cairo_serialized_size(&__rust.Q_high);
        __size += G1Point::cairo_serialized_size(&__rust.Q_high_shifted);
        __size += FunctionFelt::cairo_serialized_size(&__rust.SumDlogDivLow);
        __size += FunctionFelt::cairo_serialized_size(&__rust.SumDlogDivHigh);
        __size += FunctionFelt::cairo_serialized_size(&__rust.SumDlogDivHighShifted);
        __size
    }
    fn cairo_serialize(__rust: &Self::RustType) -> Vec<starknet::core::types::Felt> {
        let mut __out: Vec<starknet::core::types::Felt> = vec![];
        __out.extend(G1Point::cairo_serialize(&__rust.Q_low));
        __out.extend(G1Point::cairo_serialize(&__rust.Q_high));
        __out.extend(G1Point::cairo_serialize(&__rust.Q_high_shifted));
        __out.extend(FunctionFelt::cairo_serialize(&__rust.SumDlogDivLow));
        __out.extend(FunctionFelt::cairo_serialize(&__rust.SumDlogDivHigh));
        __out.extend(FunctionFelt::cairo_serialize(&__rust.SumDlogDivHighShifted));
        __out
    }
    fn cairo_deserialize(
        __felts: &[starknet::core::types::Felt],
        __offset: usize,
    ) -> cainome::cairo_serde::Result<Self::RustType> {
        let mut __offset = __offset;
        let Q_low = G1Point::cairo_deserialize(__felts, __offset)?;
        __offset += G1Point::cairo_serialized_size(&Q_low);
        let Q_high = G1Point::cairo_deserialize(__felts, __offset)?;
        __offset += G1Point::cairo_serialized_size(&Q_high);
        let Q_high_shifted = G1Point::cairo_deserialize(__felts, __offset)?;
        __offset += G1Point::cairo_serialized_size(&Q_high_shifted);
        let SumDlogDivLow = FunctionFelt::cairo_deserialize(__felts, __offset)?;
        __offset += FunctionFelt::cairo_serialized_size(&SumDlogDivLow);
        let SumDlogDivHigh = FunctionFelt::cairo_deserialize(__felts, __offset)?;
        __offset += FunctionFelt::cairo_serialized_size(&SumDlogDivHigh);
        let SumDlogDivHighShifted = FunctionFelt::cairo_deserialize(__felts, __offset)?;
        __offset += FunctionFelt::cairo_serialized_size(&SumDlogDivHighShifted);
        Ok(MSMHint {
            Q_low,
            Q_high,
            Q_high_shifted,
            SumDlogDivLow,
            SumDlogDivHigh,
            SumDlogDivHighShifted,
        })
    }
}
#[derive()]
pub struct MSMHintSmallScalar {
    pub Q: G1Point,
    pub SumDlogDiv: FunctionFelt,
}
impl cainome::cairo_serde::CairoSerde for MSMHintSmallScalar {
    type RustType = Self;
    const SERIALIZED_SIZE: std::option::Option<usize> = None;
    #[inline]
    fn cairo_serialized_size(__rust: &Self::RustType) -> usize {
        let mut __size = 0;
        __size += G1Point::cairo_serialized_size(&__rust.Q);
        __size += FunctionFelt::cairo_serialized_size(&__rust.SumDlogDiv);
        __size
    }
    fn cairo_serialize(__rust: &Self::RustType) -> Vec<starknet::core::types::Felt> {
        let mut __out: Vec<starknet::core::types::Felt> = vec![];
        __out.extend(G1Point::cairo_serialize(&__rust.Q));
        __out.extend(FunctionFelt::cairo_serialize(&__rust.SumDlogDiv));
        __out
    }
    fn cairo_deserialize(
        __felts: &[starknet::core::types::Felt],
        __offset: usize,
    ) -> cainome::cairo_serde::Result<Self::RustType> {
        let mut __offset = __offset;
        let Q = G1Point::cairo_deserialize(__felts, __offset)?;
        __offset += G1Point::cairo_serialized_size(&Q);
        let SumDlogDiv = FunctionFelt::cairo_deserialize(__felts, __offset)?;
        __offset += FunctionFelt::cairo_serialized_size(&SumDlogDiv);
        Ok(MSMHintSmallScalar { Q, SumDlogDiv })
    }
}
#[derive()]
pub struct U384 {
    pub limb0: starknet::core::types::Felt,
    pub limb1: starknet::core::types::Felt,
    pub limb2: starknet::core::types::Felt,
    pub limb3: starknet::core::types::Felt,
}
impl cainome::cairo_serde::CairoSerde for U384 {
    type RustType = Self;
    const SERIALIZED_SIZE: std::option::Option<usize> = None;
    #[inline]
    fn cairo_serialized_size(__rust: &Self::RustType) -> usize {
        let mut __size = 0;
        __size += starknet::core::types::Felt::cairo_serialized_size(&__rust.limb0);
        __size += starknet::core::types::Felt::cairo_serialized_size(&__rust.limb1);
        __size += starknet::core::types::Felt::cairo_serialized_size(&__rust.limb2);
        __size += starknet::core::types::Felt::cairo_serialized_size(&__rust.limb3);
        __size
    }
    fn cairo_serialize(__rust: &Self::RustType) -> Vec<starknet::core::types::Felt> {
        let mut __out: Vec<starknet::core::types::Felt> = vec![];
        __out.extend(starknet::core::types::Felt::cairo_serialize(&__rust.limb0));
        __out.extend(starknet::core::types::Felt::cairo_serialize(&__rust.limb1));
        __out.extend(starknet::core::types::Felt::cairo_serialize(&__rust.limb2));
        __out.extend(starknet::core::types::Felt::cairo_serialize(&__rust.limb3));
        __out
    }
    fn cairo_deserialize(
        __felts: &[starknet::core::types::Felt],
        __offset: usize,
    ) -> cainome::cairo_serde::Result<Self::RustType> {
        let mut __offset = __offset;
        let limb0 = starknet::core::types::Felt::cairo_deserialize(__felts, __offset)?;
        __offset += starknet::core::types::Felt::cairo_serialized_size(&limb0);
        let limb1 = starknet::core::types::Felt::cairo_deserialize(__felts, __offset)?;
        __offset += starknet::core::types::Felt::cairo_serialized_size(&limb1);
        let limb2 = starknet::core::types::Felt::cairo_deserialize(__felts, __offset)?;
        __offset += starknet::core::types::Felt::cairo_serialized_size(&limb2);
        let limb3 = starknet::core::types::Felt::cairo_deserialize(__felts, __offset)?;
        __offset += starknet::core::types::Felt::cairo_serialized_size(&limb3);
        Ok(U384 {
            limb0,
            limb1,
            limb2,
            limb3,
        })
    }
}
#[derive()]
pub enum Event {}
impl cainome::cairo_serde::CairoSerde for Event {
    type RustType = Self;
    const SERIALIZED_SIZE: std::option::Option<usize> = std::option::Option::None;
    #[inline]
    fn cairo_serialized_size(__rust: &Self::RustType) -> usize {
        match __rust {
            _ => 0,
        }
    }
    fn cairo_serialize(__rust: &Self::RustType) -> Vec<starknet::core::types::Felt> {
        match __rust {
            _ => vec![],
        }
    }
    fn cairo_deserialize(
        __felts: &[starknet::core::types::Felt],
        __offset: usize,
    ) -> cainome::cairo_serde::Result<Self::RustType> {
        let __f = __felts[__offset];
        let __index = u128::from_be_bytes(__f.to_bytes_be()[16..].try_into().unwrap());
        match __index as usize {
            _ => {
                return Err(cainome::cairo_serde::Error::Deserialize(format!(
                    "Index not handle for enum {}",
                    "Event"
                )))
            }
        }
    }
}
impl TryFrom<&starknet::core::types::EmittedEvent> for Event {
    type Error = String;
    fn try_from(event: &starknet::core::types::EmittedEvent) -> Result<Self, Self::Error> {
        use cainome::cairo_serde::CairoSerde;
        if event.keys.is_empty() {
            return Err("Event has no key".to_string());
        }
        Err(format!(
            "Could not match any event from keys {:?}",
            event.keys
        ))
    }
}
impl TryFrom<&starknet::core::types::Event> for Event {
    type Error = String;
    fn try_from(event: &starknet::core::types::Event) -> Result<Self, Self::Error> {
        use cainome::cairo_serde::CairoSerde;
        if event.keys.is_empty() {
            return Err("Event has no key".to_string());
        }
        Err(format!(
            "Could not match any event from keys {:?}",
            event.keys
        ))
    }
}
impl<A: starknet::accounts::ConnectedAccount + Sync> PrivacyPoolsGaragaUniversalecip<A> {
    #[allow(clippy::ptr_arg)]
    #[allow(clippy::too_many_arguments)]
    pub fn msm_g1(
        &self,
        scalars_digits_decompositions: &Option<
            Vec<(
                Vec<starknet::core::types::Felt>,
                Vec<starknet::core::types::Felt>,
            )>,
        >,
        msm_hint: &MSMHint,
        derive_point_from_x_hint: &DerivePointFromXHint,
        points: &Vec<G1Point>,
        scalars: &Vec<cainome::cairo_serde::U256>,
        curve_index: &u32,
    ) -> cainome::cairo_serde::call::FCall<A::Provider, G1Point> {
        use cainome::cairo_serde::CairoSerde;
        let mut __calldata = vec![];
        __calldata.extend(Option::<
            Vec<(
                Vec<starknet::core::types::Felt>,
                Vec<starknet::core::types::Felt>,
            )>,
        >::cairo_serialize(scalars_digits_decompositions));
        __calldata.extend(MSMHint::cairo_serialize(msm_hint));
        __calldata.extend(DerivePointFromXHint::cairo_serialize(
            derive_point_from_x_hint,
        ));
        __calldata.extend(Vec::<G1Point>::cairo_serialize(points));
        __calldata.extend(Vec::<cainome::cairo_serde::U256>::cairo_serialize(scalars));
        __calldata.extend(u32::cairo_serialize(curve_index));
        let __call = starknet::core::types::FunctionCall {
            contract_address: self.address,
            entry_point_selector: starknet::macros::selector!("msm_g1"),
            calldata: __calldata,
        };
        cainome::cairo_serde::call::FCall::new(__call, self.provider())
    }
    #[allow(clippy::ptr_arg)]
    #[allow(clippy::too_many_arguments)]
    pub fn msm_g1_u128(
        &self,
        scalars_digits_decompositions: &Option<
            Vec<(
                Vec<starknet::core::types::Felt>,
                Vec<starknet::core::types::Felt>,
            )>,
        >,
        msm_hint: &MSMHintSmallScalar,
        derive_point_from_x_hint: &DerivePointFromXHint,
        points: &Vec<G1Point>,
        scalars: &Vec<u128>,
        curve_index: &u32,
    ) -> cainome::cairo_serde::call::FCall<A::Provider, G1Point> {
        use cainome::cairo_serde::CairoSerde;
        let mut __calldata = vec![];
        __calldata.extend(Option::<
            Vec<(
                Vec<starknet::core::types::Felt>,
                Vec<starknet::core::types::Felt>,
            )>,
        >::cairo_serialize(scalars_digits_decompositions));
        __calldata.extend(MSMHintSmallScalar::cairo_serialize(msm_hint));
        __calldata.extend(DerivePointFromXHint::cairo_serialize(
            derive_point_from_x_hint,
        ));
        __calldata.extend(Vec::<G1Point>::cairo_serialize(points));
        __calldata.extend(Vec::<u128>::cairo_serialize(scalars));
        __calldata.extend(u32::cairo_serialize(curve_index));
        let __call = starknet::core::types::FunctionCall {
            contract_address: self.address,
            entry_point_selector: starknet::macros::selector!("msm_g1_u128"),
            calldata: __calldata,
        };
        cainome::cairo_serde::call::FCall::new(__call, self.provider())
    }
}
impl<P: starknet::providers::Provider + Sync> PrivacyPoolsGaragaUniversalecipReader<P> {
    #[allow(clippy::ptr_arg)]
    #[allow(clippy::too_many_arguments)]
    pub fn msm_g1(
        &self,
        scalars_digits_decompositions: &Option<
            Vec<(
                Vec<starknet::core::types::Felt>,
                Vec<starknet::core::types::Felt>,
            )>,
        >,
        msm_hint: &MSMHint,
        derive_point_from_x_hint: &DerivePointFromXHint,
        points: &Vec<G1Point>,
        scalars: &Vec<cainome::cairo_serde::U256>,
        curve_index: &u32,
    ) -> cainome::cairo_serde::call::FCall<P, G1Point> {
        use cainome::cairo_serde::CairoSerde;
        let mut __calldata = vec![];
        __calldata.extend(Option::<
            Vec<(
                Vec<starknet::core::types::Felt>,
                Vec<starknet::core::types::Felt>,
            )>,
        >::cairo_serialize(scalars_digits_decompositions));
        __calldata.extend(MSMHint::cairo_serialize(msm_hint));
        __calldata.extend(DerivePointFromXHint::cairo_serialize(
            derive_point_from_x_hint,
        ));
        __calldata.extend(Vec::<G1Point>::cairo_serialize(points));
        __calldata.extend(Vec::<cainome::cairo_serde::U256>::cairo_serialize(scalars));
        __calldata.extend(u32::cairo_serialize(curve_index));
        let __call = starknet::core::types::FunctionCall {
            contract_address: self.address,
            entry_point_selector: starknet::macros::selector!("msm_g1"),
            calldata: __calldata,
        };
        cainome::cairo_serde::call::FCall::new(__call, self.provider())
    }
    #[allow(clippy::ptr_arg)]
    #[allow(clippy::too_many_arguments)]
    pub fn msm_g1_u128(
        &self,
        scalars_digits_decompositions: &Option<
            Vec<(
                Vec<starknet::core::types::Felt>,
                Vec<starknet::core::types::Felt>,
            )>,
        >,
        msm_hint: &MSMHintSmallScalar,
        derive_point_from_x_hint: &DerivePointFromXHint,
        points: &Vec<G1Point>,
        scalars: &Vec<u128>,
        curve_index: &u32,
    ) -> cainome::cairo_serde::call::FCall<P, G1Point> {
        use cainome::cairo_serde::CairoSerde;
        let mut __calldata = vec![];
        __calldata.extend(Option::<
            Vec<(
                Vec<starknet::core::types::Felt>,
                Vec<starknet::core::types::Felt>,
            )>,
        >::cairo_serialize(scalars_digits_decompositions));
        __calldata.extend(MSMHintSmallScalar::cairo_serialize(msm_hint));
        __calldata.extend(DerivePointFromXHint::cairo_serialize(
            derive_point_from_x_hint,
        ));
        __calldata.extend(Vec::<G1Point>::cairo_serialize(points));
        __calldata.extend(Vec::<u128>::cairo_serialize(scalars));
        __calldata.extend(u32::cairo_serialize(curve_index));
        let __call = starknet::core::types::FunctionCall {
            contract_address: self.address,
            entry_point_selector: starknet::macros::selector!("msm_g1_u128"),
            calldata: __calldata,
        };
        cainome::cairo_serde::call::FCall::new(__call, self.provider())
    }
}
