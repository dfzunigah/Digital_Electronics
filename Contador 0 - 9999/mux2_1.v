`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:        Universidad Nacional de Colombia
// Engineer:       Harold Vallejo 
// 
// Create Date:    14:17:34 09/24/2010 
// Design Name:    Multiplexor 2 a 1
// Module Name:    mux2_1 
// Project Name:   Contador 0 a 9999
// Target Devices: Xilinx Spartan-3E FPGA
// Tool versions: 
// Description:    Multiplexor de 2 entradas 1 salida
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module mux2_1
	#(parameter ancho = 4)
				 (input  [ancho-1:0] i0,i1,
				  input  s,
				  output [ancho-1:0] y);
				  
	assign y=s?i1:i0;


endmodule
