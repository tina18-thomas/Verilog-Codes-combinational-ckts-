`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.06.2024 12:02:50
// Design Name: 
// Module Name: tb_fulladderinst
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


module tb_fulladderinst();
reg a,b,cin;
wire sum,cout;
fulladder_instantiate uut ( .sum(sum) , .cout(cout),.a(a), .b(b) ,.cin(cin) );
initial 
begin 
a=1'b0 ; b=1'b0; cin=1'b0;
end
always #4 a= a+1'b1;
always #2 b =b+1'b1;
always #1 cin = cin+1'b1;
initial #10 $finish;
 endmodule
