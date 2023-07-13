`timescale 1ns/1ns

module tb; 
  reg D1, D2, Cin;
  wire Sum_out, Cout;

  Full_Adder M1(.D1(D1), .D2(D2), .Cin(Cin), .Sum_out(Sum_out), .Cout(Cout));

  task delay;
    begin
      #10;
    end
    endtask

    task stimulus (input a,b,c);
    begin
        D1 = a;
        D2 = b;
        Cin = c;
    end
    endtask

  integer i,j,k;
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,tb);

    for(i=0;i<2;i=i+1) begin
      for(j=0;j<2;j=j+1) begin
        for(k=0;k<2;k=k+1) begin
            stimulus(j,k,i);
            delay;
      end
    end
  end
  $finish;
  end

  initial $monitor("D1 = %b, D2 = %b, Cin = %b, Cout = %b, Sum_out = %b",D1,D2,Cin,Cout,Sum_out);

endmodule