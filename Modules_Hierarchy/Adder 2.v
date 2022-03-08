// module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );
// module add1 ( input a, input b, input cin, output sum, output cout );

module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);//
    reg cin, cout;

    add16 add16_inst1 (a[15:0 ], b[15:0 ], 1'b0, sum[15:0 ], cin);
    add16 add16_inst2 (a[31:16], b[31:16], cin , sum[31:16], cout);

endmodule

// add1 — A 1-bit full adder module
module add1 ( input a, input b, input cin,   output sum, output cout );

    // Full adder module here
    assign sum  = a ^ b ^ cin        ;
    assign cout = a&b | a&cin | b&cin;

endmodule
