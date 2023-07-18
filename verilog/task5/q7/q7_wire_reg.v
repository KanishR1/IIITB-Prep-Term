module wires();

wire [3:0] y; 
wire  [3:0] z; 
assign y=4'b1001;
assign z=4'b1111;

initial
begin
$display("y= %b", y);
$display("z= %b", z);
end
 
endmodule
