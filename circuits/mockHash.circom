pragma circom 2.2.0;
include "./circomlib/poseidon.circom";

template MockHash() {
    signal input inputs[2];
    signal output out;

    component poseidon = Poseidon(2);
    poseidon.inputs <== inputs;
    out <== poseidon.out;
}

template MockHashOne() {
    signal input in;
    signal output out;

    out <== MockHash()([in, in]);
}
