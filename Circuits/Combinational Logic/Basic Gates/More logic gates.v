module top_module( 
    input a, b,
    output out_and,
    output out_or,
    output out_xor,
    output out_nand,
    output out_nor,
    output out_xnor,
    output out_anotb
);
    and  U1 (out_and , a, b);
    or   U2 (out_or  , a, b);
    xor  U3 (out_xor , a, b);
    nand U4 (out_nand, a, b);
    nor  U5 (out_nor , a, b);
    xnor U6 (out_xnor, a, b);
    assign out_anotb = a & (~b);
endmodule
