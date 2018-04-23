`timescale 1ms / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company:        Universidad Nacional de Colombia
// Engineer:       Harold Vallejo
// 
// Create Date:    13:10:35 10/04/2010 
// Design Name:    Siete segmentos simultaneos
// Module Name:    Simult7segs 
// Project Name:   Contador 0 a 9999
// Target Devices: Xilinx Spartan-3E FPGA
// Tool versions: 
// Description:    Encendido simultaneo de cuatro display siete segmentos
//
// Dependencies:   mux4_1,Siete_segs
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Simult7segs(input clk,
						 input  [3:0] A,B,C,D,
						 output [3:0] an,
						 output [6:0] display);
						 
	wire [3:0] num;
	reg  [1:0] S;
	wire clk1;
	
	initial
	
		S = 0;
	
	mux4_1 mux0(A,B,C,D,S,num);
	mux4_1 mux1(4'b0111,4'b1011,4'b1101,4'b1110,S,an);
	
	Siete_segs dis(num,display);
	
	clk_div clkdiv(clk,clk1);
	
	
	always @(posedge clk1)
	
		S = S+1;

endmodule
