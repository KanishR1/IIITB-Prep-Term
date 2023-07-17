
module dff(q,d,reset,clk);
output q;
input d,clk,reset;
reg q;
//initial
//q=1'b1;
always@(posedge clk or reset)
begin
	if (reset==1) q=0;
	else q=d;
end
endmodule


//JOHNSON COUNTER
module johnsoncounter(q,reset,clk);
output [3:0]q;
input clk,reset;
wire w;
not(w,q[3]);
dff f1(q[0],w,reset,clk);
dff f2(q[1],q[0],reset,clk);
dff f3(q[2],q[1],reset,clk);
dff f4(q[3],q[2],reset,clk);
endmodule


`timescale 10ns/1ps
module tb_johnson;
    // Inputs
    reg Clock;
     reg Reset;
    // Outputs
    wire [3:0] Count_out;

    // Instantiate the Unit Under Test (UUT)
   johnsoncounter uut (
        .clk(Clock), 
       .reset(Reset),
        .q(Count_out)
    );

    initial begin
	Clock = 0; 
	$dumpfile ("johnson-out.vcd"); 
	$dumpvars(0, tb_johnson);

end
    always #10 Clock = ~Clock; 
       
    //Reset can be given optionally.
    initial begin
    //Apply Reset for 50 ns.
       Reset = 1; //Reset is high
        #50;       //Wait for 50 ns
        Reset = 0; //Reset is low.
//Count_out[0]=1;
     end
      
endmodule


