`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:        Universidad Nacional de Colombia
// Engineer:       Harold Vallejo
// 
// Create Date:    20:44:58 09/24/2010 
// Design Name:    Decimal a siete segmentos
// Module Name:    Siete_segs 
// Project Name:   Contador 0 a 9999
// Target Devices: Xilinx Spartan-3E FPGA
// Tool versions: 
// Description:   Traductor decimal a siete segmentos
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Siete_segs(input [3:0] num,
					   output reg [6:0] segs);
						
//La variable num de 4 bits lee el número que será codificado
//La variable segs contiene los valores lógicos que se entrgarán al 7 segmentos
					 
	always @(*)
	
	//Utilizamos un case para evaluar los difierentes casos en la variable de entrada y asignarle valores 
	//a la variable de salida
		case (num)
		
			//		     abcdefg
			0: segs=7'b0000001;
			1: segs=7'b1001111;
			2: segs=7'b0010010;
			3: segs=7'b0000110;
			4: segs=7'b1001100;
			5: segs=7'b0100100;
			6: segs=7'b0100000;
			7: segs=7'b0001111;
			8: segs=7'b0000000;
			9: segs=7'b0000100;
			10:segs=7'b0001000;
			11:segs=7'b1100000;
			12:segs=7'b0110001;
			13:segs=7'b1000010;
			14:segs=7'b0110000;
			15:segs=7'b0111000;
			
		endcase

endmodule
