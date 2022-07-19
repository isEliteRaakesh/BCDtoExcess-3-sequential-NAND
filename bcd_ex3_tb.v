`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.07.2022 01:42:08
// Design Name: 
// Module Name: bcd_ex3_tb
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


module bcd_ex3_tb();
reg clk;
wire [3:0] q;
wire w,x,y,z;
bcd_ex3_nand n(clk,q,w,x,y,z);
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
#150 $finish;
end
endmodule
