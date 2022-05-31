`default_nettype none
// `default_nettype 用以指定隐含声明线网的类型。
// 类型可以为 none/wire/wand/wor/tri/triand/trior/tri0/tri1
// `default_nettype 只能在模块外部使用，多次使用则以最新定义为准，默认是wire
// `default_nettype none 表明所有线网必须清晰声明否则报错
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 

    wire aAndB;
    wire cAndD;

    assign aAndB = a & b;
    assign cAndD = c & d;
    assign out = aAndB | cAndD;
    assign out_n = ~out;
endmodule
