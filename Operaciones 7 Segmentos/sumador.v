`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:58:07 04/10/2018 
// Design Name: 
// Module Name:    Sumador 
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

module Sumador(S, Cout, A, B, Cin);
		
	 output [2:0] S;
    output Cout;
    input [2:0] A, B;
    input Cin;
    wire c1, c2;
	 
	 Suma Suma1(S[0], c1, A[0], B[0], Cin);
    Suma Suma2(S[1], c2, A[1], B[1], c1);
    Suma Suma3(S[2], Cout, A[2], B[2], c2);
	 

endmodule

module Suma(s, cout, a, b, cin);
    output s, cout;
    input a, b, cin;

 
    assign s = a ^ b ^ cin;
    assign cout = (a&b) | ((a^b)&cin);
 
endmodule
