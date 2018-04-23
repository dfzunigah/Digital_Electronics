`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:53:39 11/27/2010 
// Design Name: 
// Module Name:    antirebote 
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
module antirebote( 
   input reset, clk, senout,
   output reg sen);

   parameter delay = 10000;

   reg [20:0] count;
   reg kk;

   always @(posedge clk)
     if (reset) begin 
	  kk <= senout; 
	  sen <= senout; 
	  count <= 0;
	  end
     else if (senout != kk) begin
	  kk <= senout;
	  count <= 0;
	  end
     else if (count == delay) sen <= kk;
     else count <= count+1;

endmodule
