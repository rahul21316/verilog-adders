`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2021 15:43:19
// Design Name: 
// Module Name: carry_select_adder
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


module carry_select_adder(A,B,S,Cin,Cout);
input [7:0] A;
input [7:0] B;
output [7:0] S;
input Cin;
output Cout;
wire r3cout,r4cout;
wire cin;
wire [3:0] M,m;


ripple_carry_adder R1(A[3:0],B[3:0],S[3:0],Cin,cin);

ripple_carry_adder R3(A[7:4],B[7:4],M[3:0],1'b0,r3cout);
ripple_carry_adder R4(A[7:4],B[7:4],m[3:0],1'b1,r4cout);

two_one_mux M4(M[3],m[3],cin,S[7]);
two_one_mux M3(M[2],m[2],cin,S[6]);
two_one_mux M2(M[1],m[1],cin,S[5]);
two_one_mux M1(M[0],m[0],cin,S[4]);

two_one_mux MO(r3cout,r4cout,cin,Cout);
endmodule
