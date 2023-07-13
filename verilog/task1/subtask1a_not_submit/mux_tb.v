//`include "mux_struct.v"
`timescale 1ns/1ps
module mux_tb;
    reg [1:0]I;
    reg S;
    wire Y;

    mux_rtl M1(.I(I), .S(S), .Y(Y));

    task delay;
    begin
      #10;
    end
    endtask

    task stimulus (input [1:0]a, input select);
    begin
        I = a;
        S = select;
    end
    endtask

    task initialize;
    begin
      I = 2'b00;
      S = 1'b0;
    end
    endtask

    integer i,j;
    initial begin
        $dumpfile("mux_rtl.vcd");
        $dumpvars(0,mux_tb);

        initialize;
        delay;

        for(i=0 ; i<4; i=i+1) begin
          for(j=0; j<2; j=j+1) begin
            stimulus(i,j);
            delay;
          end
        end

        $finish;
    end

    initial $monitor($time,"ns S = %b, I1 = %b, I0 = %b, Y = %b",S, I[1], I[0], Y);


endmodule