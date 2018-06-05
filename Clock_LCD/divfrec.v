`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:32:54 05/24/2018 
// Design Name: 
// Module Name:    divfrec 
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
module divfrec(
		clk , 
		clk_out
    );

input clk;
output reg clk_out;
parameter freq = 100000000;
parameter freq_out = 30;
localparam max_count = freq/(2*freq_out);
reg [20:0] count;

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
