`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:05:19 04/16/2018 
// Design Name: 
// Module Name:    clk3 
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
module clk3(
	 input  clk,
	 output reg clk1s
    );
	 
	 reg [49:0] cont;
	 
	 initial
	 begin
	 
		cont = 0;
		clk1s = 0;
		
	end
		
	 
	always @(posedge clk)
		if(cont < 50'd50000000)
		
			cont <= cont + 1;
			
		else
		begin
		
			cont <= 0;
			clk1s <= ~clk1s;
			
		end

endmodule 
