// Truth Table
// too_cold too_hot mode fan_on | heater aircon fan

//    1        0      1             1       0

//    0        1      0             0       1
//    z        z      z             1       1    1
//                          1                    1

module top_module (
    input too_cold,
    input too_hot,
    input mode,
    input fan_on,
    output heater,
    output aircon,
    output fan
); 

endmodule
