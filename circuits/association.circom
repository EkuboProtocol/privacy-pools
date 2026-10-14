pragma circom 2.2.0;
include "hash.circom";
include "merkle_tree.circom";
include "./circomlib/bitify.circom";
include "./circomlib/comparators.circom";

// computes Pedersen(nullifier + secret)
template CommitmentHasher() {
    signal input nullifier;
    signal input secret;
    signal input amount;
    signal output commitment;
    signal output nullifierHash;
    signal temp;
    temp <== Hash()([secret, nullifier]);
    commitment <== Hash()([temp, amount]);
    nullifierHash <== HashOne()(nullifier);
}

// Verifies that commitment that corresponds to given secret and nullifier is included in the merkle tree of deposits
template AssociationChecker(levels) {
    signal input root;
    signal input nullifierHash;
    signal input recipient; // not taking part in any computations
    signal input fee;      // not taking part in any computations
    signal input refund;   
    signal input refundCommitmentHash;
    signal input refundSecret;
    signal input refundNullifier;
    signal input commitmentAmount; 
    signal input nullifier;
    signal input secret;
    signal input pathElements[levels];
    signal input pathIndices[levels];
    signal input amount;
    amount === commitmentAmount - refund;

    // LessThan(n) is only sound when both inputs are below 2^n: a wrapped field
    // element such as p - k otherwise compares as the small negative number -k.
    // Range check every value fed into a comparison. 2^252 < p on BN254, so the
    // Num2Bits(252) decomposition is unique and amount is bounded as a result.
    var AMOUNT_BITS = 252;
    component refundBits = Num2Bits(AMOUNT_BITS);
    refundBits.in <== refund;
    component feeBits = Num2Bits(AMOUNT_BITS);
    feeBits.in <== fee;
    component commitmentAmountBits = Num2Bits(AMOUNT_BITS);
    commitmentAmountBits.in <== commitmentAmount;

    component compare = LessThan(AMOUNT_BITS);
    compare.in <== [refund, commitmentAmount];
    compare.out === 1;

    component compare2 = LessThan(AMOUNT_BITS);
    compare2.in <== [fee, commitmentAmount];
    compare2.out === 1;

    // The pool inserts refundCommitmentHash as a new deposit leaf, so it must
    // commit to exactly the refund amount that was subtracted from this
    // withdrawal. When there is no refund this is a commitment to amount 0.
    component refundHasher = CommitmentHasher();
    refundHasher.nullifier <== refundNullifier;
    refundHasher.secret <== refundSecret;
    refundHasher.amount <== refund;
    refundHasher.commitment === refundCommitmentHash;

    component hasher = CommitmentHasher();
    hasher.nullifier <== nullifier;
    hasher.secret <== secret;
    hasher.amount <== commitmentAmount;
    hasher.nullifierHash === nullifierHash;

    component tree = MerkleTreeChecker(levels);
    tree.leaf <== hasher.commitment;
    tree.root <== root;
    for (var i = 0; i < levels; i++) {
        tree.pathElements[i] <== pathElements[i];
        tree.pathIndices[i] <== pathIndices[i];
    }

    // Add hidden signals to make sure that tampering with recipient or fee will invalidate the snark proof
    // Most likely it is not required, but it's better to stay on the safe side and it only takes 2 constraints
    // Squares are used to prevent optimizer from removing those constraints
    signal recipientSquare;
    signal feeSquare;
    recipientSquare <== recipient * recipient;
    feeSquare <== fee * fee;
}
