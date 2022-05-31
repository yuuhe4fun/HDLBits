module top_module( 
    input [2:0] in,
    output [1:0] out );
    assign out[1:0] = in[0] + in[1] + in[2];
endmodule

// This is a function of 3 inputs. One method is to use a 8-entry truth table:
// in[2:0] out[1:0]
// 000      00
// 001      01
// 010      01
// 011      10
// 100      01
// 101      10
// 110      10
// 111      11