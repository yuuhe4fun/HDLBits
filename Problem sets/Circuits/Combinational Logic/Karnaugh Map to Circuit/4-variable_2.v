module top_module(
    input a,
    input b,
    input c,
    input d,
    output out  ); 

    // ATTENTION to the ds in the K Maps!
    // always @(*) begin
    //     case (d)
    //     1'b0: out = (b&c) | (a&c) | (a&(~d));
    //     1'b1: out = (a|(~b)|c) & (a|c|(~d)) & (a|b|(~c)) & (a&b&(~d));
    //     endcase
    // end

    assign out = ((~a)|d)) & ((~a)|(~c)) & (b&(~c));
endmodule
