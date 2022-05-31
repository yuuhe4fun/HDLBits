module top_module (
    input in1,
    input in2,
    output out);

    and U1 (out, in1, ~in2);
endmodule
