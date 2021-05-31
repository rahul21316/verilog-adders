`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.03.2021 21:19:49
// Design Name: 
// Module Name: full_adder
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


module full_adder(x,y,z,c,s);
input x,y,z;
output c,s;
wire W1,W2,W3;

xor G1(W1,x,y);
and G2(W2,x,y);
xor G3(s,W1,z);
and G4(W3,W1,z);
or G5(c,W2,W3);

endmodule
