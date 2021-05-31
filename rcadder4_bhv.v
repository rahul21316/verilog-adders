`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.03.2021 16:09:44
// Design Name: 
// Module Name: rcadder4_bhv
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


module rcadder4_bhv(a,b,s,cin,cout);
input [3:0] a,b;
output [3:0] s;
input cin;
output cout;

reg [3:0] s;
reg cout;

always @ (a or b or cin)
   {cout,s} = a+b+cin;
endmodule
