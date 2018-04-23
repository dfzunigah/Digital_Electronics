`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:        Universidad Nacional de Colombia
// Engineer:       Harold Vallejo 
// 
// Create Date:    14:25:08 09/24/2010 
// Design Name:    Multiplexor 4 a 1
// Module Name:    mux4_1 
// Project Name:   Contador 0 a 9999
// Target Devices: Xilinx Spartan-3E FPGA
// Tool versions: 
// Description:    Multiplexor 4 entradas 1 salida
//
// Dependencies:   mux2_1
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module mux4_1
	#(parameter ancho = 4)
				 (input  [ancho-1:0] i0,i1,i2,i3,
				  input  [1:0] s,
				  output [ancho-1:0]		y);
				  
	wire [ancho-1:0] alto, bajo;
	
	mux2_1 #(ancho) mux_alto(i2,i3,s[0],alto);
	mux2_1 #(ancho) mux_bajo(i0,i1,s[0],bajo);
	mux2_1 #(ancho) mux_final(bajo,alto,s[1],y);


endmodule
