`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:54:43 04/10/2018 
// Design Name: 
// Module Name:    Instancias 
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

module Instacias(
   input [2:0] IN_A,
    input [2:0] IN_B,
	 input [1:0] Selector,
    output [3:0] OUTS, OUTR,
	 //output COUTR,
    output [2:0] OUTC,
    output [7:0]Salida,
	 output B_P
	 
    );

wire Cout0;
wire [2:0]RS;

 /////////////Instanciación Suma/////////////////

Sumador instancia_1( // Suma  
.A(IN_A),
.B(IN_B),
.Cin(1'b0),
.S(RS),
.Cout(Cout0)
    );
	 
assign OUTS={Cout0,RS[2:0]}; // Se Concatena Resultado
 
/////////////////Instanciación Resta/////////////////
wire Coutr0;
wire [2:0]RR;

Restador Instancia_2( //Resta 
    .A(IN_A),
    .B(IN_B),
    .Cin(1'b0),
    .R(RR),
    .Cout(Coutr0)
    );
	 

assign OUTR={Coutr0,RR[2:0]}; // Se Concatena Resultado Resta 

/////////////////Instanciación Comparador/////////////////

Comparador Instancia(
    .A(IN_A),
    .B(IN_B),
    .OUT(OUTC)
    );

/////////////////Instanciación Bit_Paridad/////////////////

Bitparidad InstanciaBP(
    .A(IN_A),
    .B(IN_B),
    .BP(B_P)
    );
 

/////////////////Instancia Decodificador /////////////////
wire [7:0] MuxS, MuxB, MuxR, MuxC;



Decodificador DecoSuma(

	.bin(OUTS),
	.display(MuxS)
	);
	
Decodificador DecoResta(
 //wire CarryR
 //assign CarryR = OUTR[3];
	.bin({0,OUTR[2:0]}),
	.display(MuxR[6:0])
	);

assign MuxR={OUTR[3],MuxR[6:0]};

Decodificador DecoParidad(

	.bin(B_P),
	.display(MuxB)
	);
	
Decodificador1 DecoCommparador(

	.bin(OUTC),
	.display(MuxC)
	);
	

Multiplexor Multiplex(

	.a(MuxS),
	.b(MuxR),
	.c(MuxB),
	.d(MuxC),
	.s(Selector),
	.x(Salida)
	);
	
	 
	
endmodule
