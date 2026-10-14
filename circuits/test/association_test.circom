pragma circom 2.2.0;
include "../association.circom";

// Single-level instance of the withdrawal relation used by association.test.mjs.
component main {public [root, nullifierHash, recipient, fee, amount, refundCommitmentHash]} = AssociationChecker(1);
