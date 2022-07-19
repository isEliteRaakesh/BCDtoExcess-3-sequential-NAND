`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.07.2022 11:46:54
// Design Name: 
// Module Name: jk_ff
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module jk_ff(input j,k,clk,rst,output reg Q);
initial begin
Q=0;
end
always @(negedge clk or negedge rst)
begin
if(rst==0) Q=0;
else begin
case({j,k})
2'b00:begin Q<=Q;end
2'b01:begin Q<=0; end
2'b10:begin Q<=1;end
2'b11:begin Q<=!Q;end
endcase
end
end
endmodule
