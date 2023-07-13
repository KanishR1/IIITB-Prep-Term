module dflipfloptb;

reg d;

reg clk;

wire q;
reg rst;

dflipflop uut (q,d,clk,rst);

initial begin

// Initialize Inputs

$dumpfile ("dff_out.vcd"); 
$dumpvars(0,dflipfloptb);

//These initial statements are very important- without which the next always block
//will not work

d = 0;  //at time=0
clk = 0; //at time=0
rst = 1;
#5
rst = 0;
#5
rst = 1;
#6
rst = 0;
end

always 
#3 clk=~clk; // toggle or negate the clock every 3 units of time.
// ~ is a negation operator

always 
#5 d=~d;  // toggle or negate the D input every 5 units of time
//Alternately:
//always begin
//#5 d =1;
//#15 d=0;
//end

endmodule

