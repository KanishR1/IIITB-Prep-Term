`include "full_adder.v"

module rca4(
    input [3:0]a,b,
    input cin,
    output [3:0]sum,
    output cout
);
wire [2:0]c;

full_Adder M0(.D1(a[0]), .D2(b[0]), .Cin(cin), .Sum_out(sum[0]), .Cout(c[0]));
full_Adder M1(.D1(a[1]), .D2(b[1]), .Cin(c[0]), .Sum_out(sum[1]), .Cout(c[1]));
full_Adder M2(.D1(a[2]), .D2(b[2]), .Cin(c[1]), .Sum_out(sum[2]), .Cout(c[2]));
full_Adder M3(.D1(a[3]), .D2(b[3]), .Cin(c[2]), .Sum_out(sum[3]), .Cout(cout));

    
endmodule