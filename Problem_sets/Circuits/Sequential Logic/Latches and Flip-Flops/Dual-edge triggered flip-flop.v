module top_module (
    input clk,
    input d,
    output q
);
    reg pedge, nedge;

    always @(posedge clk) begin
        pedge <= d;
    end

    always @(negedge clk) begin
        nedge <= d;
    end

    assign q = clk ? pedge : nedge;
endmodule
