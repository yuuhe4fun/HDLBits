// Create a one-bit wide, 2-to-1 multiplexer. When sel=0, choose a. When sel=1, choose b. 

module top_module( 
    input a, b, sel,
    output out ); 

    assign out = a & (~sel) | b & sel;

endmodule

// Answer 2
/*

module top_module( 
    input a, b, sel,
    output out ); 

    assign out = a && (!sel) || b && sel;
    // assign out = sel ? b : a;

endmodule

*/