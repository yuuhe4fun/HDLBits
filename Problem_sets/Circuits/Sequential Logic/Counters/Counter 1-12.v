module top_module (
    input clk,
    input reset,     // Synchronous active-high reset that forces the counter to 1
    input enable,    // Set high for the counter to run
    output [3:0] Q,
    output c_enable, // Control signals going to the provided 4-bit counter,
    output c_load,   //  so correct operation can be verified.
    output [3:0] c_d
); //
    assign c_enable = enable;
    assign c_load   = reset | ((Q == 4'd12) && enable == 1'b1);
    assign c_d      = c_load ? 4'd1 : 4'd0;
    count4 the_counter (clk, c_enable, c_load, c_d, Q);

endmodule

/*
*  参考链接：
*  https://blog.csdn.net/wangkai_2019/article/details/106266007
*
*/