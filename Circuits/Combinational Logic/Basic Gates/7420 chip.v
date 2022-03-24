module top_module ( 
    input p1a, p1b, p1c, p1d,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );

    nand U1 (p1y, p1a, p1b, p1c, p1d);
    nand U2 (p2y, p2a, p2b, p2c, p2d);

endmodule
