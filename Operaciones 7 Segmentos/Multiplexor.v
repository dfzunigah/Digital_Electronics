`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:55:58 04/10/2018 
// Design Name: 
// Module Name:    Multiplexor 
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
module Multiplexor (x, a, b, c, d, s);
    output [7:0] x;
    input [7:0] a, b, c, d;
    input [1:0] s;
 
    assign x = (s==2'b00) ? a :
               (s==2'b01) ? b :
               (s==2'b10) ? c :
					d ;
               
endmodule
