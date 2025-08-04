`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.06.2024 12:12:37
// Design Name: 
// Module Name: tb_fullsubtractor
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


module tb_fullsubtractor;
reg a,b,bin;
wire d,bout;
full_subractor uut (.a(a), .b(b), .bin(bin), .d(d), .bout(bout));
initial begin
a = 0; b=0; bin=0;
end
always #4 a = a+1'b1;
always #2 b = b+1'b1;
always #1 bin = bin+1'b1;
initial #10 $finish;
endmodule
