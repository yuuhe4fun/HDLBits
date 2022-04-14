module top_module (
    input clk,
    input slowena,
    input reset,
    output [3:0] q);

    always @(posedge clk) begin
        if (reset) begin
            q <= 4'b0;
        end else if (!slowena) begin
            q <= q;
        end else if (q == 4'b1001) begin
            q <= 4'b0;
        end else begin
            q <= q + 1;
        end
    end
endmodule