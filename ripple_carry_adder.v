`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.03.2021 21:42:27
// Design Name: 
// Module Name: ripple_carry_adder
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


module ripple_carry_adder(A,B,S,C,Cout);
input [3:0] A,B;
input C;
output [3:0] S;
output Cout;
wire W1,W2,W3;

full_adder F1(A[0],B[0],C,W1,S[0]);
full_adder F2(A[1],B[1],W1,W2,S[1]);
full_adder F3(A[2],B[2],W2,W3,S[2]);
full_adder F4(A[3],B[3],W3,Cout,S[3]);

endmodule
