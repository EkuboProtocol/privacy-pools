// ****
// Auto-generated by cainome do not edit.
// ****

#![allow(clippy::all)]
#![allow(warnings)]

#[derive(Debug, Clone)]
pub struct Pool<A: starknet::accounts::ConnectedAccount + Sync> {
    pub address: starknet::core::types::Felt,
    pub account: A,
    pub block_id: starknet::core::types::BlockId,
}
impl<A: starknet::accounts::ConnectedAccount + Sync> Pool<A> {
    pub fn new(address: starknet::core::types::Felt, account: A) -> Self {
        Self {
            address,
            account,
            block_id: starknet::core::types::BlockId::Tag(
                starknet::core::types::BlockTag::Pending,
            ),
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
#[derive(Debug, Clone)]
pub struct PoolReader<P: starknet::providers::Provider + Sync> {
    pub address: starknet::core::types::Felt,
    pub provider: P,
    pub block_id: starknet::core::types::BlockId,
}
impl<P: starknet::providers::Provider + Sync> PoolReader<P> {
    pub fn new(address: starknet::core::types::Felt, provider: P) -> Self {
        Self {
            address,
            provider,
            block_id: starknet::core::types::BlockId::Tag(
                starknet::core::types::BlockTag::Pending,
            ),
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
#[derive(Debug, PartialEq)]
pub struct Deposit {
    pub caller: cainome::cairo_serde::ContractAddress,
    pub secret_and_nullifier_hash: cainome::cairo_serde::U256,
    pub amount: cainome::cairo_serde::U256,
}
impl cainome::cairo_serde::CairoSerde for Deposit {
    type RustType = Self;
    const SERIALIZED_SIZE: std::option::Option<usize> = None;
    #[inline]
    fn cairo_serialized_size(__rust: &Self::RustType) -> usize {
        let mut __size = 0;
        __size
            += cainome::cairo_serde::ContractAddress::cairo_serialized_size(
                &__rust.caller,
            );
        __size
            += cainome::cairo_serde::U256::cairo_serialized_size(
                &__rust.secret_and_nullifier_hash,
            );
        __size += cainome::cairo_serde::U256::cairo_serialized_size(&__rust.amount);
        __size
    }
    fn cairo_serialize(__rust: &Self::RustType) -> Vec<starknet::core::types::Felt> {
        let mut __out: Vec<starknet::core::types::Felt> = vec![];
        __out
            .extend(
                cainome::cairo_serde::ContractAddress::cairo_serialize(&__rust.caller),
            );
        __out
            .extend(
                cainome::cairo_serde::U256::cairo_serialize(
                    &__rust.secret_and_nullifier_hash,
                ),
            );
        __out.extend(cainome::cairo_serde::U256::cairo_serialize(&__rust.amount));
        __out
    }
    fn cairo_deserialize(
        __felts: &[starknet::core::types::Felt],
        __offset: usize,
    ) -> cainome::cairo_serde::Result<Self::RustType> {
        let mut __offset = __offset;
        let caller = cainome::cairo_serde::ContractAddress::cairo_deserialize(
            __felts,
            __offset,
        )?;
        __offset
            += cainome::cairo_serde::ContractAddress::cairo_serialized_size(&caller);
        let secret_and_nullifier_hash = cainome::cairo_serde::U256::cairo_deserialize(
            __felts,
            __offset,
        )?;
        __offset
            += cainome::cairo_serde::U256::cairo_serialized_size(
                &secret_and_nullifier_hash,
            );
        let amount = cainome::cairo_serde::U256::cairo_deserialize(__felts, __offset)?;
        __offset += cainome::cairo_serde::U256::cairo_serialized_size(&amount);
        Ok(Deposit {
            caller,
            secret_and_nullifier_hash,
            amount,
        })
    }
}
impl Deposit {
    pub fn event_selector() -> starknet::core::types::Felt {
        starknet::core::utils::get_selector_from_name("Deposit").unwrap()
    }
    pub fn event_name() -> &'static str {
        "Deposit"
    }
}
#[derive(Debug, PartialEq)]
pub struct Withdrawal {
    pub caller: cainome::cairo_serde::ContractAddress,
    pub recipient: cainome::cairo_serde::ContractAddress,
    pub amount: cainome::cairo_serde::U256,
    pub associated_set_root: cainome::cairo_serde::U256,
}
impl cainome::cairo_serde::CairoSerde for Withdrawal {
    type RustType = Self;
    const SERIALIZED_SIZE: std::option::Option<usize> = None;
    #[inline]
    fn cairo_serialized_size(__rust: &Self::RustType) -> usize {
        let mut __size = 0;
        __size
            += cainome::cairo_serde::ContractAddress::cairo_serialized_size(
                &__rust.caller,
            );
        __size
            += cainome::cairo_serde::ContractAddress::cairo_serialized_size(
                &__rust.recipient,
            );
        __size += cainome::cairo_serde::U256::cairo_serialized_size(&__rust.amount);
        __size
            += cainome::cairo_serde::U256::cairo_serialized_size(
                &__rust.associated_set_root,
            );
        __size
    }
    fn cairo_serialize(__rust: &Self::RustType) -> Vec<starknet::core::types::Felt> {
        let mut __out: Vec<starknet::core::types::Felt> = vec![];
        __out
            .extend(
                cainome::cairo_serde::ContractAddress::cairo_serialize(&__rust.caller),
            );
        __out
            .extend(
                cainome::cairo_serde::ContractAddress::cairo_serialize(&__rust.recipient),
            );
        __out.extend(cainome::cairo_serde::U256::cairo_serialize(&__rust.amount));
        __out
            .extend(
                cainome::cairo_serde::U256::cairo_serialize(&__rust.associated_set_root),
            );
        __out
    }
    fn cairo_deserialize(
        __felts: &[starknet::core::types::Felt],
        __offset: usize,
    ) -> cainome::cairo_serde::Result<Self::RustType> {
        let mut __offset = __offset;
        let caller = cainome::cairo_serde::ContractAddress::cairo_deserialize(
            __felts,
            __offset,
        )?;
        __offset
            += cainome::cairo_serde::ContractAddress::cairo_serialized_size(&caller);
        let recipient = cainome::cairo_serde::ContractAddress::cairo_deserialize(
            __felts,
            __offset,
        )?;
        __offset
            += cainome::cairo_serde::ContractAddress::cairo_serialized_size(&recipient);
        let amount = cainome::cairo_serde::U256::cairo_deserialize(__felts, __offset)?;
        __offset += cainome::cairo_serde::U256::cairo_serialized_size(&amount);
        let associated_set_root = cainome::cairo_serde::U256::cairo_deserialize(
            __felts,
            __offset,
        )?;
        __offset
            += cainome::cairo_serde::U256::cairo_serialized_size(&associated_set_root);
        Ok(Withdrawal {
            caller,
            recipient,
            amount,
            associated_set_root,
        })
    }
}
impl Withdrawal {
    pub fn event_selector() -> starknet::core::types::Felt {
        starknet::core::utils::get_selector_from_name("Withdrawal").unwrap()
    }
    pub fn event_name() -> &'static str {
        "Withdrawal"
    }
}
#[derive(Debug, PartialEq)]
pub enum Event {
    MerkleEvent(MerkleTreeEvent),
    Withdrawal(Withdrawal),
    Deposit(Deposit),
}
impl cainome::cairo_serde::CairoSerde for Event {
    type RustType = Self;
    const SERIALIZED_SIZE: std::option::Option<usize> = std::option::Option::None;
    #[inline]
    fn cairo_serialized_size(__rust: &Self::RustType) -> usize {
        match __rust {
            Event::MerkleEvent(val) => MerkleTreeEvent::cairo_serialized_size(val) + 1,
            Event::Withdrawal(val) => Withdrawal::cairo_serialized_size(val) + 1,
            Event::Deposit(val) => Deposit::cairo_serialized_size(val) + 1,
            _ => 0,
        }
    }
    fn cairo_serialize(__rust: &Self::RustType) -> Vec<starknet::core::types::Felt> {
        match __rust {
            Event::MerkleEvent(val) => {
                let mut temp = vec![];
                temp.extend(usize::cairo_serialize(&0usize));
                temp.extend(MerkleTreeEvent::cairo_serialize(val));
                temp
            }
            Event::Withdrawal(val) => {
                let mut temp = vec![];
                temp.extend(usize::cairo_serialize(&1usize));
                temp.extend(Withdrawal::cairo_serialize(val));
                temp
            }
            Event::Deposit(val) => {
                let mut temp = vec![];
                temp.extend(usize::cairo_serialize(&2usize));
                temp.extend(Deposit::cairo_serialize(val));
                temp
            }
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
            0usize => {
                Ok(
                    Event::MerkleEvent(
                        MerkleTreeEvent::cairo_deserialize(__felts, __offset + 1)?,
                    ),
                )
            }
            1usize => {
                Ok(
                    Event::Withdrawal(
                        Withdrawal::cairo_deserialize(__felts, __offset + 1)?,
                    ),
                )
            }
            2usize => {
                Ok(Event::Deposit(Deposit::cairo_deserialize(__felts, __offset + 1)?))
            }
            _ => {
                return Err(
                    cainome::cairo_serde::Error::Deserialize(
                        format!("Index not handle for enum {}", "Event"),
                    ),
                );
            }
        }
    }
}
impl TryFrom<&starknet::core::types::EmittedEvent> for Event {
    type Error = String;
    fn try_from(
        event: &starknet::core::types::EmittedEvent,
    ) -> Result<Self, Self::Error> {
        use cainome::cairo_serde::CairoSerde;
        if event.keys.is_empty() {
            return Err("Event has no key".to_string());
        }
        let selector = event.keys[0];
        if selector
            == starknet::core::utils::get_selector_from_name("MerkleEvent")
                .unwrap_or_else(|_| panic!("Invalid selector for {}", "MerkleEvent"))
        {}
        let selector = event.keys[0];
        if selector
            == starknet::core::utils::get_selector_from_name("Withdrawal")
                .unwrap_or_else(|_| panic!("Invalid selector for {}", "Withdrawal"))
        {
            let mut key_offset = 0 + 1;
            let mut data_offset = 0;
            let caller = match cainome::cairo_serde::ContractAddress::cairo_deserialize(
                &event.keys,
                key_offset,
            ) {
                Ok(v) => v,
                Err(e) => {
                    return Err(
                        format!(
                            "Could not deserialize field {} for {}: {:?}", "caller",
                            "Withdrawal", e
                        ),
                    );
                }
            };
            key_offset
                += cainome::cairo_serde::ContractAddress::cairo_serialized_size(&caller);
            let recipient = match cainome::cairo_serde::ContractAddress::cairo_deserialize(
                &event.keys,
                key_offset,
            ) {
                Ok(v) => v,
                Err(e) => {
                    return Err(
                        format!(
                            "Could not deserialize field {} for {}: {:?}", "recipient",
                            "Withdrawal", e
                        ),
                    );
                }
            };
            key_offset
                += cainome::cairo_serde::ContractAddress::cairo_serialized_size(
                    &recipient,
                );
            let amount = match cainome::cairo_serde::U256::cairo_deserialize(
                &event.data,
                data_offset,
            ) {
                Ok(v) => v,
                Err(e) => {
                    return Err(
                        format!(
                            "Could not deserialize field {} for {}: {:?}", "amount",
                            "Withdrawal", e
                        ),
                    );
                }
            };
            data_offset += cainome::cairo_serde::U256::cairo_serialized_size(&amount);
            let associated_set_root = match cainome::cairo_serde::U256::cairo_deserialize(
                &event.data,
                data_offset,
            ) {
                Ok(v) => v,
                Err(e) => {
                    return Err(
                        format!(
                            "Could not deserialize field {} for {}: {:?}",
                            "associated_set_root", "Withdrawal", e
                        ),
                    );
                }
            };
            data_offset
                += cainome::cairo_serde::U256::cairo_serialized_size(
                    &associated_set_root,
                );
            return Ok(
                Event::Withdrawal(Withdrawal {
                    caller,
                    recipient,
                    amount,
                    associated_set_root,
                }),
            );
        }
        let selector = event.keys[0];
        if selector
            == starknet::core::utils::get_selector_from_name("Deposit")
                .unwrap_or_else(|_| panic!("Invalid selector for {}", "Deposit"))
        {
            let mut key_offset = 0 + 1;
            let mut data_offset = 0;
            let caller = match cainome::cairo_serde::ContractAddress::cairo_deserialize(
                &event.keys,
                key_offset,
            ) {
                Ok(v) => v,
                Err(e) => {
                    return Err(
                        format!(
                            "Could not deserialize field {} for {}: {:?}", "caller",
                            "Deposit", e
                        ),
                    );
                }
            };
            key_offset
                += cainome::cairo_serde::ContractAddress::cairo_serialized_size(&caller);
            let secret_and_nullifier_hash = match cainome::cairo_serde::U256::cairo_deserialize(
                &event.keys,
                key_offset,
            ) {
                Ok(v) => v,
                Err(e) => {
                    return Err(
                        format!(
                            "Could not deserialize field {} for {}: {:?}",
                            "secret_and_nullifier_hash", "Deposit", e
                        ),
                    );
                }
            };
            key_offset
                += cainome::cairo_serde::U256::cairo_serialized_size(
                    &secret_and_nullifier_hash,
                );
            let amount = match cainome::cairo_serde::U256::cairo_deserialize(
                &event.data,
                data_offset,
            ) {
                Ok(v) => v,
                Err(e) => {
                    return Err(
                        format!(
                            "Could not deserialize field {} for {}: {:?}", "amount",
                            "Deposit", e
                        ),
                    );
                }
            };
            data_offset += cainome::cairo_serde::U256::cairo_serialized_size(&amount);
            return Ok(
                Event::Deposit(Deposit {
                    caller,
                    secret_and_nullifier_hash,
                    amount,
                }),
            );
        }
        Err(format!("Could not match any event from keys {:?}", event.keys))
    }
}
impl TryFrom<&starknet::core::types::Event> for Event {
    type Error = String;
    fn try_from(event: &starknet::core::types::Event) -> Result<Self, Self::Error> {
        use cainome::cairo_serde::CairoSerde;
        if event.keys.is_empty() {
            return Err("Event has no key".to_string());
        }
        let selector = event.keys[0];
        if selector
            == starknet::core::utils::get_selector_from_name("MerkleEvent")
                .unwrap_or_else(|_| panic!("Invalid selector for {}", "MerkleEvent"))
        {}
        let selector = event.keys[0];
        if selector
            == starknet::core::utils::get_selector_from_name("Withdrawal")
                .unwrap_or_else(|_| panic!("Invalid selector for {}", "Withdrawal"))
        {
            let mut key_offset = 0 + 1;
            let mut data_offset = 0;
            let caller = match cainome::cairo_serde::ContractAddress::cairo_deserialize(
                &event.keys,
                key_offset,
            ) {
                Ok(v) => v,
                Err(e) => {
                    return Err(
                        format!(
                            "Could not deserialize field {} for {}: {:?}", "caller",
                            "Withdrawal", e
                        ),
                    );
                }
            };
            key_offset
                += cainome::cairo_serde::ContractAddress::cairo_serialized_size(&caller);
            let recipient = match cainome::cairo_serde::ContractAddress::cairo_deserialize(
                &event.keys,
                key_offset,
            ) {
                Ok(v) => v,
                Err(e) => {
                    return Err(
                        format!(
                            "Could not deserialize field {} for {}: {:?}", "recipient",
                            "Withdrawal", e
                        ),
                    );
                }
            };
            key_offset
                += cainome::cairo_serde::ContractAddress::cairo_serialized_size(
                    &recipient,
                );
            let amount = match cainome::cairo_serde::U256::cairo_deserialize(
                &event.data,
                data_offset,
            ) {
                Ok(v) => v,
                Err(e) => {
                    return Err(
                        format!(
                            "Could not deserialize field {} for {}: {:?}", "amount",
                            "Withdrawal", e
                        ),
                    );
                }
            };
            data_offset += cainome::cairo_serde::U256::cairo_serialized_size(&amount);
            let associated_set_root = match cainome::cairo_serde::U256::cairo_deserialize(
                &event.data,
                data_offset,
            ) {
                Ok(v) => v,
                Err(e) => {
                    return Err(
                        format!(
                            "Could not deserialize field {} for {}: {:?}",
                            "associated_set_root", "Withdrawal", e
                        ),
                    );
                }
            };
            data_offset
                += cainome::cairo_serde::U256::cairo_serialized_size(
                    &associated_set_root,
                );
            return Ok(
                Event::Withdrawal(Withdrawal {
                    caller,
                    recipient,
                    amount,
                    associated_set_root,
                }),
            );
        }
        let selector = event.keys[0];
        if selector
            == starknet::core::utils::get_selector_from_name("Deposit")
                .unwrap_or_else(|_| panic!("Invalid selector for {}", "Deposit"))
        {
            let mut key_offset = 0 + 1;
            let mut data_offset = 0;
            let caller = match cainome::cairo_serde::ContractAddress::cairo_deserialize(
                &event.keys,
                key_offset,
            ) {
                Ok(v) => v,
                Err(e) => {
                    return Err(
                        format!(
                            "Could not deserialize field {} for {}: {:?}", "caller",
                            "Deposit", e
                        ),
                    );
                }
            };
            key_offset
                += cainome::cairo_serde::ContractAddress::cairo_serialized_size(&caller);
            let secret_and_nullifier_hash = match cainome::cairo_serde::U256::cairo_deserialize(
                &event.keys,
                key_offset,
            ) {
                Ok(v) => v,
                Err(e) => {
                    return Err(
                        format!(
                            "Could not deserialize field {} for {}: {:?}",
                            "secret_and_nullifier_hash", "Deposit", e
                        ),
                    );
                }
            };
            key_offset
                += cainome::cairo_serde::U256::cairo_serialized_size(
                    &secret_and_nullifier_hash,
                );
            let amount = match cainome::cairo_serde::U256::cairo_deserialize(
                &event.data,
                data_offset,
            ) {
                Ok(v) => v,
                Err(e) => {
                    return Err(
                        format!(
                            "Could not deserialize field {} for {}: {:?}", "amount",
                            "Deposit", e
                        ),
                    );
                }
            };
            data_offset += cainome::cairo_serde::U256::cairo_serialized_size(&amount);
            return Ok(
                Event::Deposit(Deposit {
                    caller,
                    secret_and_nullifier_hash,
                    amount,
                }),
            );
        }
        Err(format!("Could not match any event from keys {:?}", event.keys))
    }
}
#[derive(Debug, PartialEq)]
pub enum MerkleTreeEvent {}
impl cainome::cairo_serde::CairoSerde for MerkleTreeEvent {
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
                return Err(
                    cainome::cairo_serde::Error::Deserialize(
                        format!("Index not handle for enum {}", "MerkleTreeEvent"),
                    ),
                );
            }
        }
    }
}
impl TryFrom<&starknet::core::types::EmittedEvent> for MerkleTreeEvent {
    type Error = String;
    fn try_from(
        event: &starknet::core::types::EmittedEvent,
    ) -> Result<Self, Self::Error> {
        use cainome::cairo_serde::CairoSerde;
        if event.keys.is_empty() {
            return Err("Event has no key".to_string());
        }
        Err(format!("Could not match any event from keys {:?}", event.keys))
    }
}
impl TryFrom<&starknet::core::types::Event> for MerkleTreeEvent {
    type Error = String;
    fn try_from(event: &starknet::core::types::Event) -> Result<Self, Self::Error> {
        use cainome::cairo_serde::CairoSerde;
        if event.keys.is_empty() {
            return Err("Event has no key".to_string());
        }
        Err(format!("Could not match any event from keys {:?}", event.keys))
    }
}
impl<A: starknet::accounts::ConnectedAccount + Sync> Pool<A> {
    #[allow(clippy::ptr_arg)]
    #[allow(clippy::too_many_arguments)]
    pub fn current_root(
        &self,
    ) -> cainome::cairo_serde::call::FCall<A::Provider, cainome::cairo_serde::U256> {
        use cainome::cairo_serde::CairoSerde;
        let mut __calldata = vec![];
        let __call = starknet::core::types::FunctionCall {
            contract_address: self.address,
            entry_point_selector: starknet::macros::selector!("current_root"),
            calldata: __calldata,
        };
        cainome::cairo_serde::call::FCall::new(__call, self.provider())
    }
    #[allow(clippy::ptr_arg)]
    #[allow(clippy::too_many_arguments)]
    pub fn deposit_getcall(
        &self,
        secret_and_nullifier_hash: &cainome::cairo_serde::U256,
        amount: &cainome::cairo_serde::U256,
    ) -> starknet::core::types::Call {
        use cainome::cairo_serde::CairoSerde;
        let mut __calldata = vec![];
        __calldata
            .extend(
                cainome::cairo_serde::U256::cairo_serialize(secret_and_nullifier_hash),
            );
        __calldata.extend(cainome::cairo_serde::U256::cairo_serialize(amount));
        starknet::core::types::Call {
            to: self.address,
            selector: starknet::macros::selector!("deposit"),
            calldata: __calldata,
        }
    }
    #[allow(clippy::ptr_arg)]
    #[allow(clippy::too_many_arguments)]
    pub fn deposit(
        &self,
        secret_and_nullifier_hash: &cainome::cairo_serde::U256,
        amount: &cainome::cairo_serde::U256,
    ) -> starknet::accounts::ExecutionV1<A> {
        use cainome::cairo_serde::CairoSerde;
        let mut __calldata = vec![];
        __calldata
            .extend(
                cainome::cairo_serde::U256::cairo_serialize(secret_and_nullifier_hash),
            );
        __calldata.extend(cainome::cairo_serde::U256::cairo_serialize(amount));
        let __call = starknet::core::types::Call {
            to: self.address,
            selector: starknet::macros::selector!("deposit"),
            calldata: __calldata,
        };
        self.account.execute_v1(vec![__call])
    }
    #[allow(clippy::ptr_arg)]
    #[allow(clippy::too_many_arguments)]
    pub fn withdraw_getcall(
        &self,
        proof: &Vec<starknet::core::types::Felt>,
    ) -> starknet::core::types::Call {
        use cainome::cairo_serde::CairoSerde;
        let mut __calldata = vec![];
        __calldata.extend(Vec::<starknet::core::types::Felt>::cairo_serialize(proof));
        starknet::core::types::Call {
            to: self.address,
            selector: starknet::macros::selector!("withdraw"),
            calldata: __calldata,
        }
    }
    #[allow(clippy::ptr_arg)]
    #[allow(clippy::too_many_arguments)]
    pub fn withdraw(
        &self,
        proof: &Vec<starknet::core::types::Felt>,
    ) -> starknet::accounts::ExecutionV1<A> {
        use cainome::cairo_serde::CairoSerde;
        let mut __calldata = vec![];
        __calldata.extend(Vec::<starknet::core::types::Felt>::cairo_serialize(proof));
        let __call = starknet::core::types::Call {
            to: self.address,
            selector: starknet::macros::selector!("withdraw"),
            calldata: __calldata,
        };
        self.account.execute_v1(vec![__call])
    }
}
impl<P: starknet::providers::Provider + Sync> PoolReader<P> {
    #[allow(clippy::ptr_arg)]
    #[allow(clippy::too_many_arguments)]
    pub fn current_root(
        &self,
    ) -> cainome::cairo_serde::call::FCall<P, cainome::cairo_serde::U256> {
        use cainome::cairo_serde::CairoSerde;
        let mut __calldata = vec![];
        let __call = starknet::core::types::FunctionCall {
            contract_address: self.address,
            entry_point_selector: starknet::macros::selector!("current_root"),
            calldata: __calldata,
        };
        cainome::cairo_serde::call::FCall::new(__call, self.provider())
    }
}
