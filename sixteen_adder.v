`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2021 09:39:37
// Design Name: 
// Module Name: sixteen_adder
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


module sixteen_adder(A,B,Cin,S,Cout);
input [15:0] A,B;
input Cin;
output [15:0] S;
output Cout;
wire cin,c_in;

ripple_carry_adder R1(A[3:0],B[3:0],S[3:0],Cin,cin);
ksa8bit K(A[11:4],B[11:4],S[11:4],cin,c_in);
ripple_carry_adder R2(A[15:12],B[15:12],S[15:12],c_in,Cout);


endmodule
