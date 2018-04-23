`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:53:00 04/10/2018 
// Design Name: 
// Module Name:    Comparador 
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
module Comparador(
    input [2:0] A,
    input [2:0] B,
    output [2:0] OUT
	 );
	 
	 reg [2:0] M;
	 
	 always @(A, B, M)begin
	 if(A > B) 
	 	 assign M=A;
	 
	
	 else if(B > A) 
	 	 assign M=B; 
	 
	 
	 else if(B==A) 
	 	 assign M=0;
	 end
	  
	assign OUT=M;

endmodule