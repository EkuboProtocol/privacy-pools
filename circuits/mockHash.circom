pragma circom 2.2.0;

template MockHash() {
    signal input inputs[2];
    signal output out;

    out <== (inputs[0] + 1) * 2 + inputs[1] + 2;
}

template MockHashOne() {
    signal input in;
    signal output out;

    out <== (in + 1) * 2;
}
