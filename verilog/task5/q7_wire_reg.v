module wires();

wire [3:0] y; 
wire  z[3:0]; 
assign y=4'b1001;
assign z=4'b1111

initial
begin
$display("y= %b", y[0]);
$display("z= %b", z);
end
 
endmodule
