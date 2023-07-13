
module upcounter_testbench();
reg clk, reset, enable;
wire [3:0] out;

//create an instance of the design
up_counter dut(out, enable, clk, reset);

initial begin

$dumpfile ("count.vcd"); 
$dumpvars(0,upcounter_testbench);

clk=0;  
enable=0;
reset=1;

#30; 
reset=0;
enable=1; 


end


always 
#5 clk=~clk; 


endmodule 
