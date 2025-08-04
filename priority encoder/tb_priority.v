`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.07.2024 15:45:12
// Design Name: 
// Module Name: tb_priority
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


module tb_priority();
    reg [7:0] in;
    wire [2:0] out;
    priority_encoder uut (.out(out) , .in(in));
    initial begin 
   in = 8'b00000001;
        #2 in = 8'b00000011;
        #2 in = 8'b00000101;
        #2 in = 8'b00001000;
        #2 in = 8'b00010000;
        #2 in = 8'b00110000;
        #2 in = 8'b01010000;
        #2 in = 8'b10000000;
     end 
     initial #10 $finish;
         
    
endmodule
