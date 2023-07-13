/*Important: Once you run ./a.out, it will keep running infinitely, because it is in an always block. You need to hit Ctrl +Z to stop it, else, the vcd will become a large file and will never end.

*/

`timescale 1ns/1ps

module dflipflop(q, d, clk, rst);
output q;
input d;
input rst;
input clk;
reg q;

//behavioral/ sequential designs

always @(posedge clk) // sensitivity list
begin 
if(rst)
q=0;
else
q = d;  // <= is a non-blocking statement
end
endmodule

//Testbench:


