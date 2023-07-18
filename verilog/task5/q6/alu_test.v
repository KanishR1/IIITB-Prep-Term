`timescale 1ns/1ps
module alu_test;

reg [39:0]a,b;
reg clk;
reg [4:0]s;
wire [39:0]out;

alu uut (.a(a), .b(b), .s(s), .clk(clk), .out(out));

initial begin
$dumpfile("alua.vcd");
$dumpvars(0, alu_test);
a= 40'h000000000b;
b= 40'h0000000003;
clk=0;
s= 5'b00101;
end

always
begin
#3 clk=~clk;
end

initial
begin
#10 s = 5'b00111;
#10 s = 5'b00110;
#10 s = 5'b01000;
#10 s = 5'b01011;
#10 s = 5'b01100;
#10 s = 5'b10100;
$finish;
end


endmodule