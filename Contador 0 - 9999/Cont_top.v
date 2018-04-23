`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:        Universidad Nacional de Colombia
// Engineer:       Harold Vallejo
// 
// Create Date:    18:54:05 10/05/2010 
// Design Name:    Contador 0 a 9999
// Module Name:    Cont_top 
// Project Name:   Contador 0 a 9999
// Target Devices: Xilinx Spartan-3E FPGA
// Tool versions: 
// Description:    Modulo superior de un contador manual o automático de 0 a 9999 con reset
//                 montado en una Nexys™2 Spartan-3E FPGA Board
//
// Dependencies:   clk10MHz,mux2_1,Cont_0_9999,Simult7segs,mux4_1,Siete_segs,clk_div
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Cont_top(
    input clk,
    input pulso,
    input sel,
    input reset,
    output [3:0] an,
    output [6:0] segs
    );
	 
	 wire clk10,clkdef;
	 wire [3:0] num0,num1,num2,num3;
	 
	 clk10MHz clk1(clk,clk10);
	 
	 mux2_1 #(1) mux(clk10,pulso,sel,clkdef);
	 
	 Cont_0_9999 cont(clkdef,reset,num0,num1,num2,num3);
	 
	 Simult7segs disp(clk,num0,num1,num2,num3,an,segs);	  	 


endmodule
