module top_module (input x, input y, output z);
    wire z1, z2, z3, z4, z12, z34;

    assign z1 = (x ^ y) & x;
    assign z2 = (~x * ~y) | (x * y);
    assign z3 = (x ^ y) & x;
    assign z4 = (~x * ~y) | (x * y);

    or  U1 (z12, z1, z2);
    and U2 (z34, z3, z4);

    xor U3 (z, z12, z34);

endmodule