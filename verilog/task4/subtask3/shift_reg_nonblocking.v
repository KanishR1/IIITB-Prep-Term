module nBlocking();

reg a,b,c,d;
reg clock;


initial begin
clock=0;

$dumpfile ("nonblocking.vcd"); 
$dumpvars(0,nBlocking);

end

always 
begin
#3 clock=~clock;
end


always @(posedge clock)
begin
//Pick RHS values at time=0,store them in internal variables
// and assign at t=0 to LHS. So, new value of a propagates to c
//after 3 clock cycles.


//non blocking statements
  a <= 1'b1;  
  b <= 1'b0;
  c <= 1'b1;
  d <= 1'b0;
  #10;
  b <= a;
  c <= b;
  d <= c;
  a <= d;
  #10 $finish;


end

//1st cycle: a=1, b=X,c=X
//2nd cycle: a=1, b=1, c=X
//3rd: a,b,c =1

// a = 1'b1;  
//  b = a;
 // c = b;

//1st cycle: a=1, b=1, c =1


endmodule
