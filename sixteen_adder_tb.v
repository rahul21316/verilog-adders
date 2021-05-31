`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2021 09:57:39
// Design Name: 
// Module Name: sixteen_adder_tb
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


module sixteen_adder_tb();
reg [15:0] a,b;
reg cin;
wire [15:0] s;
wire cout;

sixteen_adder dut(.A(a),.B(b),.Cin(cin),.S(s),.Cout(cout));

initial begin
a[15] = 1; a[14] = 0; a[13] = 0; a[12] = 1; a[11] = 0; a[10] = 1; a[9] = 1; a[8] = 0; a[7] = 1; a[6] = 1; a[5] = 0; a[4] = 1; a[3] = 1; a[2] = 0; a[1] = 0; a[0] = 1;
b[15] = 1; b[14] = 1; b[13] = 1; b[12] = 1; b[11] = 0; b[10] = 1; b[9] = 1; b[8] = 1; b[7] = 1; b[6] = 1; b[5] = 0; b[4] = 1; b[3] = 1; b[2] = 1; b[1] = 1; b[0] = 0;
cin = 0;
end
endmodule
