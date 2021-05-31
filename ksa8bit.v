`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
// 
// Create Date: 18.02.2021 10:20:00
// Design Name: 
// Module Name: ksa8bit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ksa8bit(a,b,s,Cin,Cout);
input[7:0] a,b;
input Cin;
output[7:0] s;
output Cout;

wire [7:0] G1,P1,G2,P2,G3,P3,G4,P4,G5,P5,C;

assign G1 = a&b;
assign P1 = a^b;

assign G2[0] = G1[0];
assign P2[0] = P1[0];

assign G2[1] = G1[1]|(P1[1]&G1[0]);
assign P2[1] = P1[1]&P1[0];

assign G2[2] = G1[2]|(P1[2]&G1[1]);
assign P2[2] = P1[2]&P1[1];

assign G2[3] = G1[3]|(P1[3]&G1[2]);
assign P2[3] = P1[3]&P1[2];

assign G2[4] = G1[4]|(P1[4]&G1[3]);
assign P2[4] = P1[4]&P1[3];

assign G2[5] = G1[5]|(P1[5]&G1[4]);
assign P2[5] = P1[5]&P1[4];

assign G2[6] = G1[6]|(P1[6]&G1[5]);
assign P2[6] = P1[6]&P1[5];

assign G2[7] = G1[7]|(P1[7]&G1[6]);
assign P2[7] = P1[7]&P1[6];

assign G3[0] = G2[0];
assign P3[0] = P2[0];

assign G3[1] = G2[1];
assign P3[1] = P2[1];

assign G3[2] = (P2[2]&G2[0])|G2[2];
assign P3[2] = P2[2]&P2[0];

assign G3[3] = (P2[3]&G2[1])|(G2[3]);
assign P3[3] = P2[3]&P2[1];

assign G3[4] = (P2[4]&G2[2])|G2[4];
assign P3[4] = P2[4]&P2[2];

assign G3[5] = (P2[5]&G2[3])|G2[5];
assign P3[5] = P2[5]&P2[3];

assign G3[6] = (P2[6]&G2[4])|G2[6];
assign P3[6] = P2[6]&P2[4];

assign G3[7] = (P2[7]&P2[5])|G2[7];
assign P3[7] = P2[7]&P2[5];

assign G4[0] = G3[0];
assign P4[0] = P3[0];

assign G4[1] = G3[1];
assign P4[1] = P3[1];

assign G4[2] = G3[2];
assign P4[2] = P3[2];

assign G4[3] = (P3[3]&G3[0])|G3[3];
assign P4[3] = P3[3]&P3[0];

assign G4[4] = (P3[4]&G3[1])|G3[4];
assign P4[4] = P3[4]&P3[1];

assign G4[5] = (P3[5]&G3[2])|G3[5];
assign P4[5] = P3[5]&P3[2];

assign G4[6] = (P3[6]&G3[3])|G3[6];
assign P4[6] = P3[6]&P3[3];

assign G4[7] = (P3[7]&G3[4])|G3[7];
assign P4[7] = P3[7]&P3[4];

assign G5[0] = G4[0];
assign P5[0] = P4[0];

assign G5[1] = G4[1];
assign P5[1] = P4[1];

assign G5[2] = G4[2];
assign P5[2] = P4[2];

assign G5[3] = G4[3];
assign P5[3] = P4[3];

assign G5[4] = (P4[4]&G4[0])|G4[4];
assign P5[4] = P4[4]&P4[0];

assign G5[5] = (P4[5]&G4[1])|G4[5];
assign P5[5] = P4[5]&P4[1];

assign G5[6] = (P4[6]&G4[2])|G4[6];
assign P5[6] = P4[6]&P4[2];

assign G5[7] = (P4[7]&G4[3])|G4[7];
assign P5[7] = P4[7]&P4[3];

assign C = G5;
assign s[0] = P1[0]^Cin;
assign s[1] = P1[1]^C[0];
assign s[2] = P1[2]^C[1];
assign s[3] = P1[3]^C[2];
assign s[4] = P1[4]^C[3];
assign s[5] = P1[5]^C[4];
assign s[6] = P1[6]^C[5];
assign s[7] = P1[7]^C[6];
assign Cout = C[7];

endmodule
