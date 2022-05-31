module top_module( 
    input x3,
    input x2,
    input x1,  // three inputs
    output f   // one output
);
    assign f = ( ~x3 * x2 * ~x1) | ( ~x3 * x2 * x1) | ( x3 * ~x2 * x1) | ( x3 * x2 * x1);
endmodule

// It can be simplified, by boolean algebra or Karnaugh maps.
// assign f = (~x3 & x2) | (x3 & x1);

// You may then notice that this is actually a 2-to-1 mux, selected by x3:
// assign f = x3 ? x1 : x2;