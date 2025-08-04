`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.06.2024 10:41:26
// Design Name: 
// Module Name: tb_fulladder
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


module tb_fulladder();
reg a,b,cin;
wire c,s;
full_adder uut (.a(a), .b(b), .cin(cin) ,.c(c),.s(s));
initial
begin
a=1'b0;b=1'b0;cin=1'b0;
#2 a=1'b0; b=1'b0; cin=1'b1;
#2 a=1'b0; b=1'b1; cin=1'b0;
#2 a=1'b0;b=1'b1;cin=1'b1;
#2 a=1'b1;b=1'b0;cin=1'b0;
#2 a=1'b1;b=1'b0;cin=1'b1;
#2 a=1'b1;b=1'b1;cin=1'b0;
#2 a=1'b1;b=1'b1;cin=1'b1;
$finish;
end
endmodule
