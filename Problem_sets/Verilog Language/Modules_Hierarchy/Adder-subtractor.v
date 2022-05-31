// You are provided with a 16-bit adder module, which you need to instantiate twice:
// module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout ); 

module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    
    reg [31:0]   xor_b_sub;
    always @(sub, b) begin
        case (sub)
            1'b0: xor_b_sub = b ;
            1'b1: xor_b_sub = ~b;
        endcase
    end

    reg              cin ;
    reg              cout;
    add16 add_inst_l (a[15:0] , xor_b_sub[15:0] , sub, sum[15:0] , cin) ;
    add16 add_inst_h (a[31:16], xor_b_sub[31:16], cin, sum[31:16], cout);

endmodule


/* ATTENTION

An XOR gate can also be viewed as a programmable inverter, where one input controls whether the other should be inverted.

*/