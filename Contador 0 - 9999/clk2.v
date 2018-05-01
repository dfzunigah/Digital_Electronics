`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:01:16 04/16/2018 
// Design Name: 
// Module Name:    clk2 
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
module clk2(
	 input  clk,
	 output reg clk10ms
    );
	 
	 reg [24:0] cont;
	 
	 initial
	 begin
	 
		cont = 0;
		clk10ms = 0;
		
	end
		
	 
	always @(posedge clk)
		if(cont < 50'd500000)
		
			cont <= cont + 1;
			
		else
		begin
		
			cont <= 0;
			clk10ms <= ~clk10ms;
			
		end

endmodule 