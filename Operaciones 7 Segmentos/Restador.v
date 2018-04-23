`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:56:40 04/10/2018 
// Design Name: 
// Module Name:    Restador 
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

module Restador(R, Cout, A, B, Cin);
		
	 output [2:0] R;
    output Cout;
    input [2:0] A, B;
    input Cin;
    wire c1, c2;
	 
    Resta Resta1(R[0], c1, A[0], B[0], Cin);
    Resta Resta2(R[1], c2, A[1], B[1], c1);
    Resta Resta3(R[2], Cout, A[2], B[2], c2);
	 

endmodule

module Resta(r, cout, a, b, cin);
    output r, cout;
    input a, b, cin;
	 wire p, g;
	 
	 assign p= a ^ b;
 	 assign g = ~a & b; 
    assign r = p ^ cin;
    assign cout = g | (~p & cin);
 
endmodule
