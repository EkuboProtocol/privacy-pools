pragma circom 2.2.0;
include "withdraw.circom";

template Pool(levels) {
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

    component withdraw = Withdraw(levels);
    withdraw.root <== root;
    withdraw.nullifierHash <== nullifierHash;
    withdraw.recipient <== recipient;
    withdraw.fee <== fee;
    withdraw.refund <== refund;
    withdraw.refundCommitmentHash <== refundCommitmentHash;
    withdraw.commitmentAmount <== commitmentAmount;
    withdraw.nullifier <== nullifier;
    withdraw.secret <== secret;
    withdraw.amount <== amount;
    for (var i = 0; i < levels; i++) {
        withdraw.pathElements[i] <== pathElements[i];
        withdraw.pathIndices[i] <== pathIndices[i];
    }
}

component main {public [root, nullifierHash, recipient, fee, amount, refundCommitmentHash]} = Pool(5);
