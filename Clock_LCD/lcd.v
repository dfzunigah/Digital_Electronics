`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:42:21 05/24/2018 
// Design Name: 
// Module Name:    lcd 
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
module lcd(clk,reset,miles,centenas,data,jugador,enable,clktemp,mil,cen,dec,uni);

input clk;
input reset;
input jugador;
input[2:0] miles;
input[2:0] centenas;
output [8:0] data;
output enable;
reg [8:0] data0;
reg [4:0] char;
reg[8:0] rom [0:18];
output clktemp;
output  [3:0] mil;
output  [3:0] cen;
output  [3:0] dec;
output  [3:0] uni;

reg [3:0] min1;
reg [3:0] min2;
reg [3:0] min3;
reg [3:0] min4;

reg [3:0] minuto1;
reg [3:0] minuto2;

divfrec divfrec(clk,enable);


initial begin
  if(jugador == 1'b0)
		begin
		 min1 <= miles;
		 min2 <= centenas;
		end 
 else 
		begin
		min3 <= miles;
		min4 <= centenas;	
		end
end



always @ (posedge enable)
begin
	case(jugador)
   1'b0:
	begin
	minuto1 <= min1;
	minuto2 <= min2;
	end
	
	1'b1:
	begin
	minuto1 <= min3;
	minuto2 <= min4;
	end
 endcase	

end

temp temp (clk,reset,minuto1,jugador,minuto2,mil,cen,dec,uni,clktemp);


//Para la pantalla LCD

//Comandos
parameter es = 9'b100100000; parameter cl = 9'b000111000;
parameter c2 = 9'b000001110; parameter clear = 9'b000000001; parameter enter = 9'b011000000;

//Numeros y letras
parameter A = 9'b101000001;  parameter B = 9'b101000010;
parameter theta = 9'b111110010;

//lo que muestra
initial begin
 rom[0] = cl; rom[1] = c2; rom[2] = clear; //comandos de inicialización
 rom[3] = es;
 rom[4] = theta;
 rom[5] = es; 
 rom[6] = 9'b100110001; //min1
 rom[7] = 9'b100110010; //min2
 rom[8] = 9'b100111010; //dos puntos 
 rom[9] = 9'b100110011; //seg1
 rom[10] = 9'b100110000; //seg2
 rom[11] = es; rom[12] = es;
 char = 0; data0 = 0;
 end
 

always @ (posedge enable)
begin
case(jugador)
   1'b0: 
	begin
	rom[4] <= A;
	
	end
	
	1'b1:
	begin
	rom[4] <= B;
	
	end
endcase	

case (mil)//asigno los valores del contador a valores para mostrar en la LCD
			4'b0000: rom[6] <= 9'b100110000;
			4'b0001: rom[6] <= 9'b100110001;
			4'b0010: rom[6] <= 9'b100110010;
			4'b0011: rom[6] <= 9'b100110011;
			4'b0100: rom[6] <= 9'b100110100;
			4'b0101: rom[6] <= 9'b100110101;
			4'b0110: rom[6] <= 9'b100110110;
			4'b0111: rom[6] <= 9'b100110111;
			4'b1000: rom[6] <= 9'b100111000;
			4'b1001: rom[6] <= 9'b100111001;
	endcase
	
	case (cen) //asigno los valores del contador a valores para mostrar en la LCD
			4'b0000: rom[7] <= 9'b100110000;
			4'b0001: rom[7] <= 9'b100110001;
			4'b0010: rom[7] <= 9'b100110010;
			4'b0011: rom[7] <= 9'b100110011;
			4'b0100: rom[7] <= 9'b100110100;
			4'b0101: rom[7] <= 9'b100110101;
			4'b0110: rom[7] <= 9'b100110110;
			4'b0111: rom[7] <= 9'b100110111;
			4'b1000: rom[7] <= 9'b100111000;
			4'b1001: rom[7] <= 9'b100111001;
	endcase
	
	case (dec) //asigno los valores del contador a valores para mostrar en la LCD
			4'b0000: rom[9] <= 9'b100110000;
			4'b0001: rom[9] <= 9'b100110001;
			4'b0010: rom[9] <= 9'b100110010;
			4'b0011: rom[9] <= 9'b100110011;
			4'b0100: rom[9] <= 9'b100110100;
			4'b0101: rom[9] <= 9'b100110101;
			4'b0110: rom[9] <= 9'b100110110;
			4'b0111: rom[9] <= 9'b100110111;
			4'b1000: rom[9] <= 9'b100111000;
			4'b1001: rom[9] <= 9'b100111001;
	endcase
	
   case (uni)//asigno los valores del contador a valores para mostrar en la LCD
			4'b0000: rom[10] <= 9'b100110000;
			4'b0001: rom[10] <= 9'b100110001;
			4'b0010: rom[10] <= 9'b100110010;
			4'b0011: rom[10] <= 9'b100110011;
			4'b0100: rom[10] <= 9'b100110100;
			4'b0101: rom[10] <= 9'b100110101;
			4'b0110: rom[10] <= 9'b100110110;
			4'b0111: rom[10] <= 9'b100110111;
			4'b1000: rom[10] <= 9'b100111000;
			4'b1001: rom[10] <= 9'b100111001;
	endcase

end 
 
	
always @(posedge enable)
	begin	
	
	data0 <= rom[char];
	
	if (char < 'd18)
		begin
			char = char +1;
		end
		else
    		begin
			char = 0;
			data0 <= clear;
			end
	end//end enable
	
	
	
/////////////

assign data = data0;
//cases


endmodule
