pragma circom 2.2.0;
include "./circomlib/poseidon.circom";

template Hash() {
    signal input inputs[2];
    signal output out;

    component poseidon = Poseidon(2);
    poseidon.inputs <== inputs;
    out <== poseidon.out;
}

template HashOne() {
    signal input in;
    signal output out;

    out <== Hash()([in, in]);
}
