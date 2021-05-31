`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2021 16:45:08
// Design Name: 
// Module Name: carry_select_adder_tb
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


module carry_select_adder_tb();
reg [7:0] a;
reg [7:0] b;
reg C_in;
wire [7:0] s;
wire cout;

carry_select_adder dut(.A(a),.B(b),.Cin(C_in),.Cout(cout),.S(s));

initial begin
a[7] = 1; a[6] = 0; a[5] = 0; a[4] = 1; a[3] = 0; a[2] = 1; a[1] = 1; a[0] = 0;
b[7] = 0; b[6] = 1; b[5] = 1; b[4] = 1; b[3] = 1; b[2] = 0; b[1] = 0; b[0] = 1;
C_in = 0;
end
endmodule
