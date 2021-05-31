`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.03.2021 16:15:45
// Design Name: 
// Module Name: rcadder4_bhv_tb
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


module rcadder4_bhv_tb();
reg [3:0] a,b;
reg cin;
wire [3:0] s;
wire cout;

rcadder4_bhv dut(.a(a),.b(b),.s(s),.cin(cin),.cout(cout));

initial begin
a = 4'b1111; b = 4'b1111;
cin = 0;
end
endmodule
