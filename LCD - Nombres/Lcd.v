`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:05:09 05/31/2017 
// Design Name: 
// Module Name:    Lccd 
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

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

module rom_module(clk, data, enable, sel, selec);
input clk;
input [1:0] sel;
input selec;
wire [8:0] dataM;
wire [8:0] dataF;
output[8:0] data;
output enable;
reg [8:0] rom  [0:63];
reg [8:0] rom1 [0:68];
reg [8:0] rom2 [0:64];
reg [8:0] rom3 [0:21];
reg [8:0] rom4 [0:35];
reg [8:0] rom5 [0:35];
reg [8:0] data0;
reg [8:0] data1;
reg [8:0] data2;
reg [8:0] data3;
reg [8:0] data4;
reg [8:0] data5;
reg [5:0] init; 
reg [5:0] init1;
reg [5:0] init2;
reg [4:0] char;
reg [4:0] char1;
reg [4:0] char2;
reg [4:0] char3;
reg [4:0] char4;
reg [4:0] char5;

divFreq d1(clk, enable);

//Letras mayusculas
parameter A = 9'b101000001;  parameter B = 9'b101000010;  parameter C = 9'b101000011;  parameter D = 9'b101000100;
parameter E = 9'b101000101;  parameter F = 9'b101000110;  parameter G = 9'b101000111;  parameter H = 9'b101001000;
parameter I = 9'b101001001;  parameter J = 9'b101001010;  parameter K = 9'b101001011;  parameter L = 9'b101001100;
parameter M = 9'b101001101;  parameter N = 9'b101001110;  parameter O = 9'b101001111;  parameter P = 9'b101010000;
parameter Q = 9'b101010001;  parameter R = 9'b101010010;  parameter S = 9'b101010011;  parameter T = 9'b101010100;
parameter U = 9'b101010101;  parameter V = 9'b101010110;  parameter W = 9'b101010111;  parameter X = 9'b101011000;
parameter Y = 9'b101011001;  parameter Z = 9'b101011010;
//Letras minusculas
parameter a = 9'b101100001;  parameter b = 9'b101100010;  parameter c = 9'b101100011;  parameter d = 9'b101100100;
parameter e = 9'b101100101;  parameter f = 9'b101100110;  parameter g = 9'b101100111;  parameter h = 9'b101101000;
parameter i = 9'b101101001;  parameter j = 9'b101101010;  parameter k = 9'b101101011;  parameter l = 9'b101101100;
parameter m = 9'b101101101;  parameter n = 9'b101101110;  parameter o = 9'b101101111;  parameter p = 9'b101110000;
parameter q = 9'b101110001;  parameter r = 9'b101110010;  parameter s = 9'b101110011;  parameter t = 9'b101110100;
parameter u = 9'b101110101;  parameter v = 9'b101110110;  parameter w = 9'b101110111;  parameter x = 9'b101111000;
parameter y = 9'b101111001;  parameter z = 9'b101111010;
//caracteres curiosos
parameter alpha = 9'b111100000; parameter omega = 9'b111110100; parameter theta = 9'b111110010; parameter hashtag = 9'b100100011;
parameter pi = 9'b111110111; parameter kanji = 9'b110110111; parameter emoji = 9'b111101111;
//comandos para LCD
parameter es = 9'b100100000; parameter c1 = 9'b000111000;
parameter c2 = 9'b000001110; parameter clear = 9'b000000001; parameter enter = 9'b011000000;

//////////////////////////nombre_móvil_1

initial begin
    rom[0] = c1; rom[1] = c2; rom[2] = clear; //comandos de inicialización
	 rom[3] = es; rom[4] = es; rom[5] = es; rom[6] = es; rom[7] = es; rom[8] = es; rom[9] = es; rom[10] = es; // 8 ESPACIOS
	 rom[11] = P; rom[12] = r; rom[13] = i; rom[14] = m; rom[15] = e; rom[16] = r; rom[17] = o; rom[18] = es;
	 rom[19] = S; rom[20] = e; rom[21] = g; rom[22] = u; rom[23] = n; rom[24] = d; rom[25] = o; rom[26] = es;
	 rom[27] = T; rom[28] = e; rom[29] = r; rom[30] = c; rom[31] = e; rom[32] = r; rom[33] = o; rom[34] = es;
	 rom[35] = hashtag; rom[36] = hashtag; rom[37] = hashtag;  rom[38] = hashtag;
	 rom[39] = es; rom[40] = es; rom[41] = es; rom[42] = es; rom[43] = es; rom[44] = es; rom[45] = es; rom[46] = es; // 8 ESPACIOS
	 init = 0; char = 0;  data0 = 0;
end

always @(posedge enable)begin
	data0 <= rom[init+char];
	if (init<'d46)begin
		if (char<'d18)begin
			char = char + 1;
		end 
		else begin
			char = 0;
			init = init + 1;
			data0 <= clear;
		end
	end
	else begin
		init = 0;
	end
end

//////////////////////////nombre_móvil_2

initial begin
    rom1[0] = c1; rom1[1] = c2; rom1[2] = clear; //comandos de inicialización
	 rom1[3] = es; rom1[4] = es; rom1[5] = es; rom1[6] = es; rom1[7] = es; rom1[8] = es; rom1[9] = es; rom1[10] = es; // 8 ESPACIOS
	 rom1[11] = P; rom1[12] = r; rom1[13] = i; rom1[14] = m; rom1[15] = e; rom1[16] = r; rom1[17] = o; rom1[18] = es;
	 rom1[19] = S; rom1[20] = e; rom1[21] = g; rom1[22] = u; rom1[23] = n; rom1[24] = d; rom1[25] = o; rom1[26] = es;
	 rom1[27] = T; rom1[28] = e; rom1[29] = r; rom1[30] = c; rom1[31] = e; rom1[32] = r; rom1[33] = o; rom1[34] = es;
	 rom1[35] = hashtag; rom1[36] = hashtag; rom1[37] = hashtag; rom1[38] = hashtag; rom1[39] = hashtag;
	 rom1[40] = es; rom1[41] = es; rom1[42] = es; rom1[43] = es; rom1[44] = es; rom1[45] = es; rom1[46] = es; rom1[47] = es; //8 ESPACIOS
	 init1 = 0; char1 = 0;  data1 = 0;
end

always @(posedge enable)begin
	data1 <= rom1[init1+char1];
	if (init1<'d40)begin
		if (char1<'d18)begin
			char1 = char1 + 1;
		end 
		else begin
			char1 = 0;
			init1 = init1 + 1;
			data1 <= clear;
		end
	end
	else begin
		init1 = 0;
	end
end

/////////////nombre_móvil_3

initial begin
    rom2[0] = c1; rom2[1] = c2; rom2[2] = clear; //comandos de inicialización
	 rom2[3] = es; rom2[4] = es; rom2[5] = es; rom2[6] = es; rom2[7] = es; rom2[8] = es; rom2[9] = es; rom2[10] = es; // 8 ESPACIOS
	 rom2[11] = P; rom2[12] = r; rom2[13] = i; rom2[14] = m; rom2[15] = e; rom2[16] = r; rom2[17] = o; rom2[18] = es;
	 rom2[19] = S; rom2[20] = e; rom2[21] = g; rom2[22] = u; rom2[23] = n; rom2[24] = d; rom2[25] = o; rom2[26] = es;
	 rom2[27] = T; rom2[28] = e; rom2[29] = r; rom2[30] = c; rom2[31] = e; rom2[32] = r; rom2[33] = o; rom2[34] = es;
	 rom2[35] = hashtag; rom2[36] = hashtag; rom2[37] = hashtag; rom2[38] = hashtag;
	 rom2[39] = es; rom2[40] = es; rom2[41] = es; rom2[42] = es; rom2[43] = es; rom2[44] = es; rom2[45] = es; rom2[46] = es; // 8 ESPACIOS
	 init2 = 0; char2 = 0;  data2 = 0;
end

always @(posedge enable)begin
	data2 <= rom2[init2+char2];
	if (init2<'d46)begin
		if (char2<'d18)begin
			char2 = char2 + 1;
		end 
		else begin
			char2 = 0;
			init2 = init2 + 1;
			data2<=clear;
		end
	end
	else begin
		init2 = 0;
	end
end

//////////////////////////nombre_fijo_1

initial begin
    rom3[0] = c1; rom3[1] = c2; rom3[2] = clear; //comandos de inicialización
	 rom3[3] = A; rom3[4] = r; rom3[5] = r; rom3[6] = i; rom3[7] = b; rom3[8] = a; rom3[9] = es;// PRIMERA FILA
	 rom3[10] = enter; rom3[11] = A; rom3[12] = b; rom3[13] = a; rom3[14] = j; rom3[15] = o; rom3[16] = es;
	 rom3[17] = hashtag; rom3[18] = hashtag; rom3[19] = hashtag; rom3[20] = hashtag; 
	 char3 = 0;  data3 = 0;
end

always @(posedge enable)begin
	data3 <= rom3[char3];
		if (char3<'d20)begin
			char3 = char3 + 1;
		end 
		else begin
			char3 = 0;
			data3<=clear;
		end
	end

//////////////////////////nombre_fijo_2

initial begin
    rom4[0] = c1; rom4[1] = c2; rom4[2] = clear; //comandos de inicialización
	 rom4[3] = A; rom4[4] = r; rom4[5] = r; rom4[6] = i; rom4[7] = b; rom4[8] = a; rom4[9] = es;// PRIMERA FILA
	 rom4[10] = enter; rom4[11] = A; rom4[12] = b; rom4[13] = a; rom4[14] = j; rom4[15] = o; rom4[16] = es; //SEGUNDA FILA
	 rom4[17] = hashtag; rom4[18] = hashtag; 
	 char4 = 0;  data4 = 0;
end

always @(posedge enable)begin
	data4 <= rom4[char4];
		if (char4<'d18)begin
			char4 = char4 + 1;
		end 
		else begin
			char4 = 0;
			data4<=clear;
		end
	end
	
////////////nombre_fijo_3

initial begin
    rom5[0] = c1; rom5[1] = c2; rom5[2] = clear; //comandos de inicialización
	 rom5[3] = A; rom5[4] = r; rom5[5] = r; rom5[6] = i; rom5[7] = b; rom5[8] = a; rom5[9] = es;
	 rom5[10] = enter; rom5[11] = A; rom5[12] = b; rom5[13] = a; rom5[14] = j; rom5[15] = o; rom5[16] = es;
	 char5 = 0;  data5 = 0;
end

always @(posedge enable)begin
	data5 <= rom5[char5];
		if (char5<'d16)begin
			char5 = char5 + 1;
		end 
		else begin
			char5 = 0;
			data5<=clear;
		end
	end
/////////////


assign dataM = (sel == 2'b00) ? data0:
					(sel == 2'b01) ? data1:
					(sel == 2'b10) ? data2:
					data2;

assign dataF = (sel == 2'b00) ? data3:
					(sel == 2'b01) ? data4:
					(sel == 2'b10) ? data5:
					data5;
					
assign data = (selec == 1'b0) ? dataM:
					dataF;



endmodule 	
	
/////////////////////////////////////////
