module mux(
    input [15:0] I0,I1,
    input S,
    output [15:0]Y

);

assign Y = S ? I1:I0;
    
endmodule