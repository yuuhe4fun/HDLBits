module top_module (
    input in1,
    input in2,
    input in3,
    output out);

    reg nor_a;

    nor U1 (nor_a, in1, in2);
    xor
endmodule
