module test (
    input clk,
    input reset,
    input [31:0] in,
    output [31:0] out
);
    reg [31:0] in_reg;

    always @(posedge clk) begin
        in_reg <= in;

        if (reset) begin
            out_temp <= 32'b0;
        end else begin
            out_temp <= ~in & in_reg | out; 
            // 1to0 -------> in_reg = 1, in = 0 ----> (~in) & in_reg
            // remain 1 ---> out = 0 ---------------> out
            // therefore: out <= ~in & in_reg | out;
        end
    end
endmodule
