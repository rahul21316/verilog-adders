`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.02.2021 14:48:39
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb();

reg p,q,r;
wire carry,sum;

full_adder dut(.x(p), .y(q), .z(r), .c(carry), .s(sum));
initial begin
p = 0; q  = 0; r  = 0;
#10
p = 0; q  = 0; r = 1;
#10
p = 0; q  = 1; r  = 0;
#10
p = 0; q  = 1; r  = 1;
#10
p = 1; q  = 0; r  = 0;
#10
p = 1; q  = 0; r  = 1;
#10
p = 1; q  = 1; r  = 0;
#10
p = 1; q  = 1; r  = 1;
#10
$stop;
end
endmodule
