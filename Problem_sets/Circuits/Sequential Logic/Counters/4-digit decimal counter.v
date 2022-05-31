module top_module (
    input clk,
    input reset,   // Synchronous active-high reset
    output [3:1] ena,
    output [15:0] q);

    always @(posedge clk) begin
        if (reset) begin
            ena <= 3'b0; // 复位信号的判断
        end else begin
            //----------------------8421BCD编码分析-------------------------------------
            /*
                首先16bit中每4bit一组对应于十进制8421编码的一个digit。
                1. 很明显，从波形图看，第一个decade counter计数9次（q0==8）后一个周期，ena[1]有效；再下一个周期第二个decade counter计数1次；
                2. 第二个decade counter计数10次（q1==9），还需要第一个decade counter计数满10次后，才会再次变化。所以ena[2]有效的时间为满足q1==9，q0==8的下一周期；则再下一周期，第三个decade counter计数一次；
                3. 依次类推。
            */

            if (q[3:0] == 4'd8) begin
                ena[1] <= 1'b1;
            end else begin
                ena[1] <= 1'b0;
            end

            if (q[3:0] == 4'd8 && q[7:4] == 4'd9) begin
                ena[2] <= 1'b1;
            end else begin
                ena[2] <= 1'b0;
            end

            if (q[3:0]==4'd8 && q[7:4]==4'd9 && q[11:8]==4'd9) begin
                ena[3] <= 1'b1;
            end else begin
                ena[3] <= 1'b0;
            end
        end
    end

    decade_cnt cnt0 (.clk(clk), 
                     .reset(reset), 
                     .enable(1'b1), 
                     .q(q[3:0]));

    decade_cnt cnt1 (.clk(clk), 
                     .reset(reset), 
                     .enable(ena[1]), 
                     .q(q[7:4]));

    decade_cnt cnt2 (.clk(clk), 
                     .reset(reset), 
                     .enable(ena[2]), 
                     .q(q[11:8]));

    decade_cnt cnt3 (.clk(clk), 
                     .reset(reset), 
                     .enable(ena[3]), 
                     .q(q[15:12]));

endmodule

// decade_cnt
module decade_cnt (
    input clk,
    input reset,        // Synchronous active-high reset
    input enable,
    output [3:0] q);

    always @(posedge clk) begin
        if (reset) begin
            q <= 4'b0;
        end else if (enable) begin
            if (q == 4'd9) begin
                q <= 4'b0;
            end else begin
                q <= q + 1;
            end
        end
    end
endmodule