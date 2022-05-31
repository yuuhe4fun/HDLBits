/*
A single-output digital system with four inputs (a,b,c,d) generates a logic-1 when 2, 7, or 15 appears on the inputs, and a logic-0 when 0, 1, 4, 5, 6, 9, 10, 13, or 14 appears. The input conditions for the numbers 3, 8, 11, and 12 never occur in this system. For example, 7 corresponds to a,b,c,d being set to 0,1,1,1, respectively.

Determine the output out_sop in minimum SOP form, and the output out_pos in minimum POS form. 
*/

//  Decimal a b c d output
//     0    0 0 0 0    o
//     1    0 0 0 1    o
//     2    0 0 1 0    1
//     3    0 0 1 1    x
//     4    0 1 0 0    o
//     5    0 1 0 1    o
//     6    0 1 1 0    0
//     7    0 1 1 1    1
//     8    1 0 0 0    x
//     9    1 0 0 1    o
//     10   1 0 1 0    o
//     11   1 0 1 1    x
//     12   1 1 0 0    x
//     13   1 1 0 1    o
//     14   1 1 1 0    o
//     15   1 1 1 1    1

//     cd|ab 00 01 11 10
//     00    0  0  x  x
//     01    0  0  0  0
//     11    x  1  1  x
//     10    1  0  0  0

module top_module (
    input a,
    input b,
    input c,
    input d,
    output out_sop,
    output out_pos
); 

    assign out_pos = ((~a)&(~b)&c) | (c&d);
    assign out_sop = c & ((~b)|(~c)|d) & ((~a)|(~c)|d);
endmodule
