`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2021 15:50:00
// Design Name: 
// Module Name: two_one_mux
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


module two_one_mux(A,B,S,Y);
input A,B,S;
output Y;
wire W1,W2,W3;
not G3(W3,S);
and G1(W1,A,W3);
and G2(W2,B,S);
or G4(Y,W1,W2);

endmodule
