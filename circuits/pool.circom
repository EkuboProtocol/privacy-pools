pragma circom 2.2.0;
include "association.circom";

template Pool(levels, associatedSetLevels) {
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

    component withdraw = AssociationChecker(levels);
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

    signal input associatedSetRoot;
    signal input associatedSetPathElements[associatedSetLevels];
    signal input associatedSetPathIndices[associatedSetLevels];
    component associatedSet = AssociationChecker(associatedSetLevels);
    associatedSet.root <== associatedSetRoot;
    associatedSet.nullifierHash <== nullifierHash;
    associatedSet.recipient <== recipient;
    associatedSet.fee <== fee;
    associatedSet.refund <== refund;
    associatedSet.refundCommitmentHash <== refundCommitmentHash;
    associatedSet.commitmentAmount <== commitmentAmount;
    associatedSet.nullifier <== nullifier;
    associatedSet.secret <== secret;
    associatedSet.amount <== amount;
    for (var i = 0; i < associatedSetLevels; i++) {
        associatedSet.pathElements[i] <== associatedSetPathElements[i];
        associatedSet.pathIndices[i] <== associatedSetPathIndices[i];
    }
}

component main {public [root, nullifierHash, recipient, fee, amount, refundCommitmentHash, associatedSetRoot]} = Pool(24, 24);
