//Read from memory and display
`timescale 1ns/1ps

module memory_module;
reg [7:0] data;
reg clk;
reg [7:0] memory[0:7]; //declare an 8-byte memory
reg [2:0] address; //3 bit address
integer file1;

initial begin
  address = 3'b000;
  clk = 1'b0;
end

initial
begin

//read memory file init.dat. address locations given in memory starting with @
$readmemb("init.dat", memory);
file1=$fopen("output.txt");


$dumpfile ("mem_out.vcd"); 
$dumpvars(0,memory_module);

end

always 
#5 clk = ~clk;

always @(posedge clk)
begin

data=memory[address];
//display contents of initialized memory
$display("Memory [%0d] = %b", address, data);
$fdisplay(file1,"Memory [%0d] = %b", address,data);

address=address+3'b001;
end

initial begin
  #20;
  $fclose(file1);
  $stop;
end
endmodule


