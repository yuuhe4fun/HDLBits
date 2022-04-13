module top_module (
    input clk,
    input [7:0] in,
    output [7:0] anyedge
);
    reg [7:0] d_last; // 定义一个reg存储上一个状态

    // 在时钟信号的上边沿读取输入信号，检测输入信号的双边沿情况
    always @(posedge clk) begin
        d_last <= in;
        anyedge <= d_last ^ in;
    end
endmodule
