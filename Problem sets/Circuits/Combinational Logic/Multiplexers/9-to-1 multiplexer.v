// Create a 16-bit wide, 9-to-1 multiplexer. sel=0 chooses a, sel=1 chooses b, etc. For the unused cases (sel=9 to 15), set all output bits to '1'. 

module top_module( 
    input [15:0] a, b, c, d, e, f, g, h, i,
    input [3:0] sel,
    output [15:0] out );

    always @(a, b, c, d, e, f, g, h, i, sel, out) begin

        case (sel)
            4'b0000 : out = a; // 4'h0
            4'b0001 : out = b; // 4'h1 
            4'b0010 : out = c; // 4'h2
            4'b0011 : out = d; // 4'h3
            4'b0100 : out = e; // 4'h4
            4'b0101 : out = f; // 4'h5
            4'b0110 : out = g; // 4'h6
            4'b0111 : out = h; // 4'h7
            4'b1000 : out = i; // 4'h8

            default : out = 16'b1111_1111_1111_1111;
        endcase
    end

endmodule
