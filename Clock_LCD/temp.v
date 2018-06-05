`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:33:31 05/24/2018 
// Design Name: 
// Module Name:    temp 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module temp(clk,reset,miles1,jug,centenas1,mil,cen,dec,uni,clkOut);
input clk;
input jug;
input reset;
input [2:0] miles1;
input [2:0] centenas1;

output [3:0] mil;
output [3:0] cen;
output [3:0] dec;
output [3:0] uni;
output clkOut;

clk1seg clk1seg(clk,clkOut);

counter counter(clkOut,reset,jug,miles1,centenas1,mil,cen,dec,uni);

endmodule
