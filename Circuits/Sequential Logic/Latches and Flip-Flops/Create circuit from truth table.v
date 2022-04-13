module top_module (
    input clk,
    input j,
    input k,
    output Q); 

    always @(posedge clk) begin
        if (j == 0) begin
            if (k == 1) begin
                Q <= 1'b0;
            end
        end

        if (j == 1) begin
            if (k == 0) begin
                Q <= 1;
            end else begin
                Q <= !Q;
            end
        end
    end
endmodule
