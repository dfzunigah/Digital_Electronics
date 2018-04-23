`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:        Universidad Nacional de Colombia
// Engineer:       Harold Vallejo
// 
// Create Date:    18:11:42 10/05/2010 
// Design Name:    Contador de 0 a 9999
// Module Name:    Cont_0_9999 
// Project Name:   Contador 0 a 9999
// Target Devices: Xilinx Spartan-3E FPGA
// Tool versions: 
// Description:    Contador de 0 a 9999 con reset
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Cont_0_9999(
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
