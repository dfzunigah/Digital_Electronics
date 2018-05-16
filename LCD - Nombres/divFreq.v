`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:05:37 10/21/2017 
// Design Name: 
// Module Name:    divFreq 
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
module divFreq(clk , clk_out); //Divisor de frecuencia

input clk;
output reg clk_out;
parameter freq = 100000000;
parameter freq_out = 30;
localparam max_count = freq/(2*freq_out);
reg [30:0] count;

initial begin
count='d0;
clk_out=0;
end

always @(posedge clk) begin

	if(count == (max_count)) begin
		clk_out = ~clk_out;
		count = 0;
	end
	else
	count=count+1;
end

endmodule

