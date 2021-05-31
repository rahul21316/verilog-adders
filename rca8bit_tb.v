`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.03.2021 23:42:38
// Design Name: 
// Module Name: rca8bit_tb
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


module rca8bit_tb();
reg [7:0] a,b;
reg carry;
wire [7:0] sum;
wire COUT,carrout;
rca8bit dut(.A(a),.B(b),.C(carry),.S(sum),.cout(COUT),.Cout(carrout));

initial begin
a[7] = 1; a[6] = 0; a[5] = 0; a[4] = 0; a[3] = 1; a[2] = 0; a[1] = 1; a[0] = 1;
b[7] = 0; b[6] = 1; b[5] = 1; b[4] = 1; b[3] = 0; b[2] = 0; b[1] = 0; b[0] = 1;
carry = 0;
end
endmodule
