//`timescale 10ns/1ps
`include "mux2x1.v"
module mux4x1(
    input [3:0] I,
    input [1:0] S,
    output Y
);

wire [1:0]w;

mux2x1 M1(.I(I[1:0]), .S(S[0]), .Y(w[0]));
mux2x1 M2(.I(I[3:2]), .S(S[0]), .Y(w[1]));
mux2x1 M3(.I(w), .S(S[1]), .Y(Y));
    
endmodule