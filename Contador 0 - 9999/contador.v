`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:44:19 04/13/2018 
// Design Name: 
// Module Name:    contador 
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
module contador(
    input clk,
    input reset,
    output reg [3:0] cont0,
    output reg [3:0] cont1,
    output reg [3:0] cont2,
    output reg [3:0] cont3
    );
	 
	 always @(posedge clk or posedge reset)
	 begin
	 
		if(reset)
		begin
		
			cont0 = 0;
			cont1 = 0;
			cont2 = 0;
			cont3 = 0;
		
		end
		else
			
			if(cont0 < 4'b1001)
			
				cont0 = cont0 + 1; // contador de unidades
				
			else
			begin
			
				cont0 = 0;
				
				if(cont1 < 4'b1001)
				
					cont1 = cont1 + 1;// contador de decenas
					
				else
				begin
				
					cont1 = 0;
					
					if(cont2 < 4'b1001)
					
						cont2 = cont2 + 1;//contador de centenas
						
					else
					begin
					
						cont2 = 0;
						
							if(cont3 < 4'b1001)
					
								cont3 = cont3 + 1; //contador de miles
						
							else
							
								cont3 = 0;
					
					end
				
				end
			
			end
	 
	 end


endmodule
