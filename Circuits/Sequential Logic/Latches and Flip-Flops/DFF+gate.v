module top_module (
    input clk,
    input in, 
    output out);

    wire interValue;
    assign interValue = in ^ out;
    always @(posedge clk) begin
        out <= interValue;
    end
endmodule
