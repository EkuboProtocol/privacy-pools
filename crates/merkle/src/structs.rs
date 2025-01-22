use cainome::cairo_serde::U256;

#[derive(Debug, Clone, PartialEq)]
pub struct MerklePath {
    pub elements: Vec<U256>,
    //element is right
    pub indices: Vec<bool>,
}
