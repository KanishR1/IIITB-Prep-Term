`timescale 1ns/1ps
module test;
reg [7:0] memory[0:7]; //declare an 8-byte memory
reg clk;
reg [7:0]data;
reg [2:0]address;
integer i;

initial begin
  clk = 1'b0;
  forever #5 clk = !clk;
end

initial begin
  $readmemb("init.dat", memory);
  $dumpfile("dump.vcd");
  $dumpvars(0,test);
  address = 3'b000;
end

always @(posedge clk) begin
data = memory[address];
$display("Memory [%0d] = %b", address, data);
address  = address + 3'b001;
end


initial #100 $finish; 

endmodule
