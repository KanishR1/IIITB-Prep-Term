
//if select line s=00101, out=a+b
//if s=00111, out = a + mod b
//if s=00110, out= a-b;
//if s=01000, a*b
//01011 --> a/b
//01100 --> a <<2
//10100 --> a>>2

module alu (a,b,s,clk,out);
    input [39:0]a,b;
    input [4:0]s;
    input clk;
    
    //reg [39:0]c,d;

    output [39:0]out;
    reg [39:0]out;
    
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
        else if (s==5'b01000) begin
            if (b>0)
                out = a - b;
            else
                out = a+b;
            end
        else if (s==5'b01011)
            out = a*b;
        else if (s==5'b01100)
            out = a/b;
        else if (s==5'b10100)
            out = a<<2;
        else if (s==5'b010101)
            out = a>>2;
    end
endmodule





