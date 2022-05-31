module top_module( 
    input a, 
    input b, 
    output out );

    assign out = ~(a ^ b);
    // or we can use this way:
    //      assign out = a ~^ b;
endmodule
