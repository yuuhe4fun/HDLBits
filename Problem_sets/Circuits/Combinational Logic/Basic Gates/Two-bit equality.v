module top_module ( input [1:0] A, input [1:0] B, output z ); 
    assign z = (A[1:0] == B[1:0]) ? 1 : 0;
endmodule

// Warning (10230): Verilog HDL assignment warning at top_module.v(2): truncated value with size 32 to match size of target (1) File: /home/h/work/hdlbits.4343493/top_module.v Line: 2