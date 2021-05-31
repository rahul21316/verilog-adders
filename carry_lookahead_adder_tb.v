`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.03.2021 16:39:50
// Design Name: 
// Module Name: carry_lookahead_adder_tb
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


module carry_lookahead_adder_tb();
reg [3:0] A,B;
reg cin;
wire [3:0] S;
wire cout;

carry_lookahead_adder dut(.A(A),.B(B),.S(S),.cin(cin),.cout(cout));

initial begin
A = 4'b1111;
B = 4'b1111;
cin = 0;
end
endmodule
