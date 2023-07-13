//`timescale 10ns/1ps
module mux_rtl(
    input [1:0]I,
    input S,
    output Y
);
    assign Y = S ? I[1]: I[0];
    
endmodule