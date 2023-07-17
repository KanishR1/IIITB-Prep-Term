module alu(
    input [39:0]a,b,
    input [4:0]sel,
    input clk,
    output [39:0]out
);
reg [39:0]temp;
reg cout;

assign out = temp;

always @(posedge clk ) begin
    case (sel)
        5'h5 : begin 
          {cout,temp} = a+b;
          if(!cout)
            temp = (~temp)+1;
        end
        
        5'h7 : begin
          
          if(b[39])begin
            {cout,temp} = a+ (~(b))+1;
          end
          else begin
            {cout,temp} = a+b;
          end
          if(!cout)
            temp = (~temp)+1;
        end

        5'h6 : begin
            {cout,temp} = a+ (~(b))+1;
            if(!cout)
                temp = (~temp)+1;
        end

        5'h8 : begin
          if(b[39])begin
            {cout,temp} = a+ b;
          end
          else begin
            {cout,temp} = a+ (~b) +1;
          end
          if(!cout)
            temp = (~temp)+1;
        end
        5'hB :
        5'hC :
        5'h14:
        5'h15:
        default : out  = out;
            
    endcase
end
    
endmodule