`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.06.2024 11:30:45
// Design Name: 
// Module Name: tb_andgate
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


module tb_andgate();
reg a,b;
wire c;
andgate uut(.a(a) ,.b(b) , .c(c));
initial 
begin 
 a = 1'b0;b =1'b0;
 #5 a=1'b0;b=1'b1;
 #5 a =1'b1; b= 1'b0;
 #5 a= 1'b1 ; b=1'b1; 
 #5 $finish;
   end    
endmodule
