//if select line s=00101, out=a+b
//if s=00111, out = a + mod b
//if s=00110, out= a-b;
//if s=01000, a*b
//01011 --> a/b
//01100 --> a <<2
//10100 --> a>>2

module alu (a,b,s,clk,out);
input [39:0]a,b;
input [4:0]s;
input clk;
reg [39:0]c,d;
output [39:0]out;
reg out;
reg i;
always @ (posedge clk)
begin
if (s==5'b00101)
out = a+b;
else if (s==5'b00111)
begin
if (b>0)
out = a + b;
else
out = a-b;
end
else if (s==5'b00110)
out = a-b;
else if (s==5'b01000)
out = a&&b;
else if (s==5'b01011)
out = a||b;
else if (s==5'b01100)
begin
for(i=0; i<40; i++)
begin
c[i]= a[i+2];
c[38] = 0;
c[39] =0;
end

out = c;
end
else if (s==5'b10100)
begin
for(i=0; i<40; i++)
begin
d[i+2]= a[i];
d[0] = 0;
d[1] = 0;
end

out = d;
end
end
endmodule


`timescale 1ns/1ps
module alu_test;
reg [39:0]a,b;
reg clk;
reg [4:0]s;
wire [39:0]out;
alu uut (.a(a), .b(b), .s(s), .clk(clk), .out(out));
initial
begin
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

always
begin

s = 5'b00111;
#10 s = 5'b00110;
#10 s = 5'b01000;
#10 s = 5'b01011;
#10 s = 5'b01100;
#10 s = 5'b10100;
end

initial    #2000 $stop;

endmodule
