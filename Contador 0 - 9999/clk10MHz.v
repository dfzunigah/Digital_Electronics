`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Universidad Nacional de Colombia
// Engineer: Harold Vallejo
// 
// Create Date:    18:59:57 10/05/2010 
// Design Name:    Reloj a 10 MHz
// Module Name:    clk10Mh 
// Project Name:   Contador 0 a 9999
// Target Devices: Xilinx Spartan-3E FPGA
// Tool versions: 
// Description:    Salida de reloj a 10 MHz
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module clk10MHz(
	 input  clk,
	 output reg clk10
    );
	 
	 reg [24:0] cont;
	 
	 initial
	 begin
	 
		cont = 0;
		clk10 = 0;
		
	end
		
	 
	always @(posedge clk)
		if(cont < 25'd2500000)
		
			cont <= cont + 1;
			
		else
		begin
		
			cont <= 0;
			clk10 <= ~clk10;
			
		end

endmodule
