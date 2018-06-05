`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:28:03 05/24/2018 
// Design Name: 
// Module Name:    clk1seg 
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
module clk1seg(
	input clk,
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
