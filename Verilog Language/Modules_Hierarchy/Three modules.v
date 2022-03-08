// module my_dff ( input clk, input d, output q );

module top_module ( input clk, input d, output q );

    reg q1, q2;

    my_dff my_dff_inst1 (clk, d , q1);
    my_dff my_dff_inst2 (clk, q1, q2);
    my_dff my_dff_inst3 (clk, q2, q );

endmodule
