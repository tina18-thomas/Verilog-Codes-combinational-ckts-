`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.07.2024 15:12:17
// Design Name: 
// Module Name: tb_encoder
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


module tb_encoder();
    reg [7:0] in;
    wire [2:0] out;
    encoder uut (.out(out), .in(in));
    initial 
    begin 
   in = 8'b00000001; 
        #2 in = 8'b00000010;
        #2 in = 8'b00000100;
        #2 in = 8'b00001000;
        #2 in = 8'b00010000;
        #2 in = 8'b00100000;
        #2 in = 8'b01000000;
        #2 in = 8'b10000000;
    end 
    initial #20 $finish;
endmodule
