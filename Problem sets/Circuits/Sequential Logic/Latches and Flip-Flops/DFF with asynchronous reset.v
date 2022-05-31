module top_module(
    input clk,
    input areset,            // Asynchronous reset
    input [7:0] d,
    output [7:0] q
);
    always @(posedge clk or posedge areset) begin
        // why posedge areset?
        if (areset)
            q <= 0;
        else
        	q <= d;
    end

endmodule
