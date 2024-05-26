pragma circom 2.0.0;

template Circuit() {
    // Signal inputs
    signal input a;
    signal input b;

    // Signal outputs
    signal output q;

    // Internal signals
    signal x;
    signal y;

    // Component instantiation
    component andGate = AND();
    component notGate = NOT();
    component orGate = OR();

    // Logic wiring
    andGate.x <== a;
    andGate.y <== b;
    x <== andGate.out;

    notGate.in <== b;
    y <== notGate.out;

    orGate.x <== x;
    orGate.y <== y;
    q <== orGate.out;
}

template AND() {
    signal input x;
    signal input y;
    signal output out;

    // AND gate logic
    out <== x * y;
}

template NOT() {
    signal input in;
    signal output out;

    // NOT gate logic
    out <== 1 + in - 2 * in;
}

template OR() {
    signal input x;
    signal input y;
    signal output out;

    // OR gate logic
    out <== x + y - x * y;
}

component main = Circuit();
