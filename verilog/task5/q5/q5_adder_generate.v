
module adder_1bit(co, sum, a0, a1, ci);
input a0, a1, ci;
output reg co, sum;
always @* begin
{co, sum} = a0 + a1 + ci;
end
endmodule


module adder_2bit(co, sum, a0, a1, ci);
input [1:0] a0, a1;
input ci;
output reg [1:0] sum;
output reg co;
always @* begin
	{co, sum} = a0 + a1 + ci;	
end



endmodule


module generate_adder #(parameter N = 1) (co, sum, a0, a1, ci);
input [N-1:0] a0, a1;
input ci;
output [N-1:0] sum;
output co;
generate
case (N)
1: adder_1bit adder1(co, sum, a0, a1, ci);
2: adder_2bit adder2(co, sum, a0, a1, ci); 

endcase
endgenerate

endmodule





module q2_tb();

reg a0, a1;
reg cai;

reg [1:0] b0, b1;
reg cbi;

reg [2:0] c0, c1;
reg cci;

wire cao, cbo, cco;
wire s_a;
wire [1:0] s_b;
wire [2:0] s_c;


generate_adder #(.N(1)) uut1(.co(cao), .sum(s_a), .a0(a0), .a1(a1), .ci(cai));
//generate_adder #(.N(2)) uut2(cbo, s_b, b0, b1, cbi);



initial begin
	$dumpfile("q2_out.vcd");
	$dumpvars(0, q2_tb);	

	a0 = 0; a1 = 0; cai = 0; #10;
	a0 = 1; a1 = 0; cai = 0; #10;
	a0 = 0; a1 = 1; cai = 1; #10;
end

initial begin
	b0 = 2'b00; b1 = 2'b01; cbi = 0; #10;
	b0 = 2'b01; b1 = 2'b01; cbi = 1; #10;
	b0 = 2'b11; b1 = 2'b11; cbi = 0; #10;
end



endmodule
