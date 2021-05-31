`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.02.2021 13:10:47
// Design Name: 
// Module Name: ksa8bit_tb
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


module ksa8bit_tb();
reg [7:0] A,B;
reg c_in;
wire [7:0] sum;
wire c_out;

ksa8bit dut(.a(A),.b(B),.Cin(c_in),.s(sum),.Cout(c_out));
initial begin
A = 8'b10010101; B = 8'b11100100; c_in = 0;
end
endmodule
