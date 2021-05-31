`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.03.2021 16:25:57
// Design Name: 
// Module Name: carry_lookahead_adder
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


module carry_lookahead_adder(A,B,S,cin,cout);
parameter N = 4;
input [N-1:0] A,B;
output [N-1:0] S;
input cin;
output cout;

wire [N-1:0] P,G,C;

assign C[0] = cin;

genvar i;

for(i = 0; i < N; i = i+1) 
begin
  assign P[i] = A[i]^B[i];
  assign G[i] = A[i]&B[i];
  assign C[i+1] = G[i]|P[i]&C[i];
  assign S[i] = P[i]^C[i];
end

assign cout = C[N-1];

endmodule
