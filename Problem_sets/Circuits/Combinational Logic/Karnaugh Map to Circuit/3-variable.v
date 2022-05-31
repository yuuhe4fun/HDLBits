module top_module(
    input a,
    input b,
    input c,
    output out  ); 

    assign out = a&(~c) | b&(~c) | c;
endmodule
 /*
    out = (a&(~c) | b&(~c) | c) = (a | b | c);
 */