`timescale 1ns/1ns

module tb; 
  reg [3:0]a,b;
  reg cin;
  wire [3:0]sum;
  wire cout;

  rca4 M0(.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));

  task delay;
    begin
      #10;
    end
    endtask

    task stimulus (input [3:0]a1,b1,input c1);
    begin
        a = a1;
        b = b1;
        cin = c1;
    end
    endtask

  integer i,j,k;
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,tb);

    for(i=0;i<2;i=i+1) begin
      for(j=0;j<16;j=j+1) begin
        for(k=0;k<16;k=k+1) begin
            stimulus(j,k,i);
            delay;
      end
    end
  end
  $finish;
  end

  initial $monitor($time," ns A = %b, B = %b, Cin = %b, Cout = %b, Sum = %b",a,b,cin,cout,sum);

endmodule