[toc]

# Basic Gates
## Two-bit equality

> Create a circuit that has two 2-bit inputs `A[1:0]` and `B[1:0]`, and produces an output `z`. The value of `z` should be 1 if `A = B`, otherwise `z` should be 0.

```verilog
module top_module ( 
    input [1:0] A, 
    input [1:0] B, 
    output z 
); 
    assign z = (A[1:0] == B[1:0]) ? 1 : 0;
endmodule
```

Attention: 

> Truncating values occur when the right side of an assignment is wider than the left side and the upper bits are cut off. This can indicate a  bug if there is a truncation you didn't expect, so check these  carefully. The most common case where this *isn't* a bug is when you're using literals without a width (32 bits is implied), e.g., using `assign a[1:0] = 1;` instead of `assign a[1:0] = 2'd1;`.

So, we can change the codes:

```verilog
module top_module ( 
    input [1:0] A, 
    input [1:0] B, 
    output [1:0] z; 
); 
    assign z = (A[1:0] == B[1:0]) ? 2'b1 : 2'b0;
endmodule
```



## Combine circuits A and B

```verilog
module top_module(
	input x,
	input y,
	output z);

	wire o1, o2, o3, o4;
	
	A ia1 (x, y, o1);
	B ib1 (x, y, o2);
	A ia2 (x, y, o3);
	B ib2 (x, y, o4);
	
	assign z = (o1 | o2) ^ (o3 & o4);

	// Or you could simplify the circuit including the sub-modules:
	// assign z = x|~y;
	
endmodule

module A (
	input x,
	input y,
	output z);

	assign z = (x^y) & x;
	
endmodule

module B (
	input x,
	input y,
	output z);

	assign z = ~(x^y);

endmodule
```

