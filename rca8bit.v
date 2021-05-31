`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.03.2021 22:58:51
// Design Name: 
// Module Name: rsa8bit
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


module rca8bit(A,B,C,S,Cout,cout);
input [7:0] A,B;
input C;
output [7:0] S;
output Cout;
output cout;

ripple_carry_adder R1(A[3:0],B[3:0],S[3:0],C,cout);
ripple_carry_adder R2(A[7:4],B[7:4],S[7:4],cout,Cout);

endmodule
