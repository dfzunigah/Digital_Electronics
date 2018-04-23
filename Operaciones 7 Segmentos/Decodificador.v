`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:53:47 04/10/2018 
// Design Name: 
// Module Name:    Decodificador 
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
module Decodificador(
    input [3:0] bin,
    output[7:0] display
    );
	 
assign display= (bin==4'b0000) ? 8'b11000000://0
					 (bin==4'b0001) ? 8'b11111001://1
					 (bin==4'b0010) ? 8'b10100100://2
					 (bin==4'b0011) ? 8'b10110000://3
					 (bin==4'b0100) ? 8'b10011001://4
					 (bin==4'b0101) ? 8'b10010010://5
					 (bin==4'b0110) ? 8'b10000010://6
					 (bin==4'b0111) ? 8'b11111000://7
					 (bin==4'b1000) ? 8'b10000000://8
					 (bin==4'b1001) ? 8'b10010000://9
					 (bin==4'b1010) ? 8'b10001000://a
					 (bin==4'b1011) ? 8'b10000011://B
					 (bin==4'b1100) ? 8'b11000110://C
					 (bin==4'b1101) ? 8'b10100001://D
					 (bin==4'b1110) ? 8'b10000110://E
					 (bin==4'b1111) ? 8'b10000111://F
					7'b0000000;
				
			
				
					
endmodule
