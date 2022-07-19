`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.07.2022 01:31:10
// Design Name: 
// Module Name: bcd_ex3_nand
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


module bcd_ex3_nand(input clk,output wire [3:0] q, output wire w,x,y,z );
wire rst,j,k;
assign j=1;
assign k=1;
nand #(0.001) n0(rst,q[3],q[1]);
jk_ff j1(j,k,clk,rst,q[0]);
jk_ff j2(j,k,q[0],rst,q[1]);
jk_ff j3(j,k,q[1],rst,q[2]);
jk_ff j4(j,k,q[2],rst,q[3]);

wire ah,bh,ch,dh;
wire x1,x2,x3,x4,x5,x6,x7,x8,x9;
not n1(ah,q[3]);
not n2(bh,q[2]);
not n3(ch,q[1]);
not n4(dh,q[0]);

nand(x1,q[2],q[0]);
nand(x2,q[3],q[0]);
nand(x3,q[3],bh);
nand(x4,q[2],q[1]);

nand(w,x1,x2,x3,x4);

nand(x5,q[2],ch,dh);
nand(x6,bh,q[0]);
nand(x7,bh,q[1]);

nand(x,x5,x6,x7);

nand(x8,ch,dh);
nand(x9,q[1],q[0]);

nand(y,x8,x9);

assign z=dh;

endmodule
