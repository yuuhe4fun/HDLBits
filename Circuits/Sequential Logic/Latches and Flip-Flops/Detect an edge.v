module top_module (
    input clk,
    input [7:0] in,
    output [7:0] pedge
);
    reg [7:0] signal_r; // 用以存放前一位状态

    always @(posedge clk) begin
        signal_r <= in;
        pedge <= (~signal_r) & in;
    end

    /*
    *   注意这里与下面的区别，体会阻塞与非阻塞语句间的差异:
    *   always @(posedge clk) begin
    *       signal_r <= in;
    *   end
    *   assign pedge = (~signal_r) & in;
    */

endmodule
