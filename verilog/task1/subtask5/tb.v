//`include "mux_struct.v"
`timescale 1ns/1ps
module tb;
    reg [15:0]I0,I1;
    reg S;
    wire [15:0]Y;

    mux M1(.I0(I0), .I1(I1), .S(S), .Y(Y));

    task delay;
    begin
      #10;
    end
    endtask

    task stimulus (input [15:0]a,b, input select);
    begin
        I0 = a;
        I1 = b;
        S = select;
    end
    endtask

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0,tb);
        stimulus(16'hAF,16'hFA,1'b0);
        delay;
        stimulus(16'hAF,16'hFA,1'b1);
        $finish;
    end

    initial $monitor($time,"ns S = %b, I1 = %h, I0 = %h, Y = %h",S, I1, I0, Y);


endmodule