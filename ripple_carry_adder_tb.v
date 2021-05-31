`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.03.2021 22:15:14
// Design Name: 
// Module Name: ripple_carry_adder_tb
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


module ripple_carry_adder_tb();
reg [3:0] a,b;
reg carry;
wire [3:0] sum;
wire cout;

ripple_carry_adder dut(.A(a),.B(b),.C(carry),.S(sum),.Cout(cout));

initial begin
a[3] = 1; a[2] = 0; a[1] = 0; a[0] = 1;
b[3] = 0; b[2] = 1; b[1] = 1; b[0] = 1;
carry = 0;
end

endmodule
