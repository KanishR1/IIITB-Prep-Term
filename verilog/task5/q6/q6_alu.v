module alu (a,b,s,clk,out);
    input [39:0]a,b;
    input [4:0]s;
    input clk;
    
    reg [39:0]c,d;

    output [39:0]out;
    reg [39:0]out;
    
    integer i;
    always @ (posedge clk) begin
    
        if (s==5'b00101)
            out = a+b;
        else if (s==5'b00111) begin
            if (b>0)
                out = a + b;
            else
                out = a-b;
            end
        else if (s==5'b00110)
            out = a-b;
        else if (s==5'b01000)
            out = a*b;
        else if (s==5'b01011)
            out = a/b;
        else if (s==5'b10100) begin
            for(i=0; i<38; i++) begin
                c[i]= a[i+2];
                c[38] = 0;
                c[39] =0;   
            end

            out = c;
        end
        else if (s==5'b01100) begin
            for(i=0; i<38; i++) begin
                d[i+2]= a[i];
                d[0] = 0;
                d[1] = 0;
            end

            out = d;
        end
    end
endmodule