`timescale 10ns/10ps
`default_nettype none

module mux_struct (
    input wire [1:0]I,
    input wire S,
    output wire Y
);
    wire Sbar,w1,w2;
    
    not inv1(Sbar,S);

    and and1(w1, Sbar, I[0]);
    and and2(w2, S, I[1]);

    or or1(Y, w1, w2);

endmodule