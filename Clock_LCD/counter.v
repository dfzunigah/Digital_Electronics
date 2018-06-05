`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:41:16 05/24/2018 
// Design Name: 
// Module Name:    counter 
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
module counter(
	 input clk,
	 input reset,
	 input jugador,
	 input [2:0] miles,//Jugador A 
    input [2:0] centenas,//Jugador B
	 output reg [3:0] m,
	 output reg [3:0] c,
    output reg [3:0] d,
    output reg [3:0] u
    );
	 //Jugador A
	 reg [3:0] j;
	 reg [3:0] l;
	 reg [3:0] k;
	 reg [3:0] t;
	 
	 //Jugador B
	 reg [3:0] i;
	 reg [3:0] o;
	 reg [3:0] e;
	 reg [3:0] g;
	 
	 reg [3:0] min1;
	 reg [3:0] min2;
	 reg [3:0] min3;
	 reg [3:0] min4;
	 
		
		//Jugador A
		always @ (posedge clk)
			begin
			case(miles)
				3'b000:
				begin
				min1 <= 4'b0000;
				min2 <= 4'b0101;
				end
				
				3'b001:
				begin
				min1 <= 4'b0001;
				min2 <= 4'b0000;
				end
				
				3'b010:
				begin
				min1 <= 4'b0001;
				min2 <= 4'b0101;
				end
				
				3'b011:
				begin
				min1 <= 4'b0010;
				min2 <= 4'b0000;
				end
				
				3'b100:
				begin
				min1 <= 4'b0011;
				min2 <= 4'b0000;
				end
			//Esto sería para tiempos adicionales	
				3'b101:
				begin
				min1 <= 4'b0111;
				min2 <= 4'b0000;
				end
				
				3'b110:
				begin
				min1 <= 4'b0111;
				min2 <= 4'b0000;
				end
				
				3'b111:
				begin
				min1 <= 4'b0111;
				min2 <= 4'b0000;
				end
			endcase

		
		//Jugador B 
		 case(centenas)
		 3'b000:
				begin
				min3 <= 4'b0000;
				min4 <= 4'b0101;
				end
				
				3'b001:
				begin
				min3 <= 4'b0001;
				min4 <= 4'b0000;
				end
				
				3'b010:
				begin
				min3 <= 4'b0001;
				min4 <= 4'b0101;
				end
				
				3'b011:
				begin
				min3 <= 4'b0010;
				min4 <= 4'b0000;
				end
				
				3'b100:
				begin
				min3 <= 4'b0011;
				min4 <= 4'b0000;
				end
			//Esto sería para tiempos adicionales	
				3'b101:
				begin
				min3 <= 4'b0111;
				min4 <= 4'b0000;
				end
				
				3'b110:
				begin
				min3 <= 4'b0111;
				min4 <= 4'b0000;
				end
				
				3'b111:
				begin
				min3 <= 4'b0111;
				min4 <= 4'b0000;
				end
		 
		endcase
		

			
	end
		
	
		always @(posedge clk)
		case(jugador)
			1'b0:
			begin
				if (reset)
					begin
					j <= min1;
					l <= min2;
					k <= 4'b0000;
					t <= 4'b0000;
					end
			   else
	
		if(t > 4'b0000)
		t <= t-1; //unidades de los segundos
		else 
		begin
		 t <= 4'b1001;
		 
			if(k > 4'b0000)
			k <= k-1;
			else
				begin
					k <= 4'b0101;
		 
					if ( l > 4'b0000)
					l <= l-1;
					else
					
						begin
							l <= 4'b1001;
							if (j > 4'b0000)
							j <= j - 1;
							else
							j <= 0;
			
						end
				end	
								
		end
		
end


  1'b1:
  begin
       if(reset)
			begin
			i <= min3;
			o <= min4;
			e <= 4'b0000;
			g <= 4'b0000;
			end
		else	
	
		if(g > 4'b0000)
		g <= g-1; //unidades de los segundos
		else 
		begin
		 g <= 4'b1001;
		 
			if(e > 4'b0000)
			e <= e-1;
			else
				begin
					e <= 4'b0101;
		 
					if ( o > 4'b0000)
					o <= o-1;
					else
					
						begin
							o <= 4'b1001;
							if (i > 4'b0000)
							i <= i - 1;
							else
							i <= 0;
			
						end
				end	
								
		end
		
  end
	
endcase	

//asigno salidas

always @(posedge clk)
	begin
	case(jugador)
	1'b0:
		begin
		m <= j;
		c <= l;
		d <= k;
		u <= t;
		end
	1'b1:
		begin
		m <= i;
		c <= o;
		d <= e;
		u <= g;	
		end
	endcase
	end


endmodule
