`timescale 1ns / 1
ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:51:46 04/10/2018 
// Design Name: 
// Module Name:    Bitparidad 
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
module Bitparidad(
		input [2:0] A,
		input [2:0] B,
		output  BP
    );
	 
		wire  BG;


		assign BG = A[2]^A[1]^A[0]^B[2]^B[1]^B[0];


		assign BP = BG;


endmodule
