module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum); 	// This circuit is a 4-bit ripple-carry adder with carry-out.

    assign sum[4:0] = x[3:0] + y[3:0]; // Verilog addition automatically produces the carry-out bit.
endmodule

	// Verilog quirk: Even though the value of (x+y) includes the carry-out, (x+y) is still considered to be a 4-bit number (The max width of the two operands).
	// This is correct:
	// assign sum = (x+y);
	// But this is incorrect:
	// assign sum = {x+y};	// Concatenation operator: This discards the carry-out