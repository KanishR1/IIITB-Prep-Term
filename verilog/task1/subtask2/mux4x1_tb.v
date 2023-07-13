
`timescale 1ns/1ps
module mux4x1_tb;
    reg [3:0]I;
    reg [1:0]S;
    wire Y;

    mux4x1 M1(.I(I), .S(S), .Y(Y));

    task delay;
    begin
      #10;
    end
    endtask

    task stimulus (input [3:0]a, input [1:0]select);
    begin
        I = a;
        S = select;
    end
    endtask

    task initialize;
    begin
      I = 4'b0000;
      S = 2'b00;
    end
    endtask

    integer i,j;
    initial begin
        $dumpfile("mux4x1.vcd");
        $dumpvars(0,mux4x1_tb);

        initialize;
        delay;

        for(i=0 ; i<16; i=i+1) begin
          for(j=0; j<4; j=j+1) begin
            stimulus(i,j);
            delay;
          end
        end

        $finish;
    end

    initial $monitor($time,"ns S = %b, I = %b, Y = %b",S, I, Y);


endmodule