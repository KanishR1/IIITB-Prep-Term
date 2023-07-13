
module tb;
reg clk, reset, enable, up_down;
wire [3:0] out;


updown_counter dut(out, enable, clk, reset, up_down);

initial begin



$dumpfile ("count.vcd"); 
$dumpvars(0,tb);

clk=0; 
enable=0;  
reset=1;

#20; 
reset=0;
enable=1;
up_down = 1;

#80; 
reset=0;
enable=1;
up_down = 0;

#100; 
reset=0;
enable=1;
up_down = 1;


#50
$finish;
end


always 
#5 clk=~clk;  // toggle or negate the clk input every 5 units of time


endmodule 
