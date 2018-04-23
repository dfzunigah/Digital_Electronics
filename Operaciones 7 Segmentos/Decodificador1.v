`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:54:18 04/10/2018 
// Design Name: 
// Module Name:    Decodificador1 
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
module Decodificador1(
    input [3:0] bin,
    output[6:0] display
    );
	 
assign display= (bin==4'b0000) ? 7'b0110111://0
				    (bin==4'b0001) ? 7'b1001111://1
				    (bin==4'b0010) ? 7'b0010010://2
				    (bin==4'b0011) ? 7'b0000110://3
				    (bin==4'b0100) ? 7'b1001100://4
				    (bin==4'b0101) ? 7'b0100100://5
				    (bin==4'b0110) ? 7'b0100000://6
				    (bin==4'b0111) ? 7'b0001111://7
				    (bin==4'b1000) ? 7'b0000000://8
				    (bin==4'b1001) ? 7'b0000100://9
				    (bin==4'b1010) ? 7'b0001000://A
				    (bin==4'b1011) ? 7'b0000011://B
				    (bin==4'b1100) ? 7'b0110001://C
				    (bin==4'b1101) ? 7'b0000110://D
				    (bin==4'b1110) ? 7'b0110000://E
				    (bin==4'b1111) ? 7'b0110000://f
				    7'b0000000;
				
			
				
					
endmodule