// mod_a
module mod_a ( input in1, input in2, output out );
    // Module body
    // When connecting modules, only the ports on the module are important. You do not need to know the code inside the module.
endmodule

// top_module
module top_module ( input a, input b, output out );
    
    mod_a instance1 (a, b, out);

endmodule
