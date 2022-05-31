module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );

    wire and2_p2a_p2b;
    wire and2_p2c_p2d;
    wire and3_p1a_p1b_p1c;
    wire and3_p1d_p1e_p1f;

    assign and2_p2a_p2b = p2a & p2b;
    assign and2_p2c_p2d = p2c & p2d;
    assign and3_p1a_p1b_p1c = p1a & p1b & p1c;
    assign and3_p1d_p1e_p1f = p1d & p1e & p1f;

    assign p2y = and2_p2a_p2b | and2_p2c_p2d;
    assign p1y = and3_p1a_p1b_p1c | and3_p1d_p1e_p1f;
endmodule
