pragma circom 2.2.0;
include "hash.circom";
include "merkle_tree.circom";
include "./circomlib/comparators.circom";

// computes Pedersen(nullifier + secret)
template CommitmentHasher() {
    signal input nullifier;
    signal input secret;
    signal input amount;
    signal output commitment;
    signal output nullifierHash;
    signal temp;
    temp <== MockHash()([secret, nullifier]);
    commitment <== MockHash()([temp, amount]);
    nullifierHash <== MockHashOne()(nullifier);
}

// Verifies that commitment that corresponds to given secret and nullifier is included in the merkle tree of deposits
template Withdraw(levels) {
    signal input root;
    signal input nullifierHash;
    signal input recipient; // not taking part in any computations
    signal input fee;      // not taking part in any computations
    signal input refund;   
    signal input refundCommitmentHash;
    signal input commitmentAmount; 
    signal input nullifier;
    signal input secret;
    signal input pathElements[levels];
    signal input pathIndices[levels];
    signal input amount;
    amount === commitmentAmount - refund;
    
    component compare = LessThan(252);
    compare.in <== [refund, commitmentAmount];
    compare.out === 1;

    component compare2 = LessThan(252);
    compare2.in <== [fee, commitmentAmount];
    compare2.out === 1;

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
