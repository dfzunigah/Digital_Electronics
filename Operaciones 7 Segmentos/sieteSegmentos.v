`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:15:58 03/20/2018 
// Design Name: 
// Module Name:    sieteSegmentos 
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
module sieteSegmentos(
    input [3:0] in,
    output [7:0] an,
	 output [6:0] a_to_g
   
    );
	 //Tabla para realizar la decodificacion de hex a 7-seg.
assign a_to_g= (in==0)? 	7'b000_0001:
               (in==1)? 	7'b100_1111:
               (in==2)? 	7'b001_0010:
               (in==3)? 	7'b000_0110:
               (in==4)? 	7'b100_1100:
               (in==5)? 	7'b010_0100:
               (in==6)? 	7'b010_0000:
               (in==7)? 	7'b000_1111:
               (in==8)? 	7'b000_0000:
               (in==9)? 	7'b000_0100:
               (in=='hA)?	7'b000_1000:
               (in=='hB)?	7'b110_0000:
               (in=='hC)?	7'b011_0001:
               (in=='hD)?	7'b100_0010:
               (in=='hE)?	7'b011_0000:
									7'b011_1000;
assign an= 8'b1111_1111;  //se encenderan todos los display.
endmodule 



