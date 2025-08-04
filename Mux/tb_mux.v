`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.07.2024 10:00:47
// Design Name: 
// Module Name: tb_mux
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


module tb_mux();
    reg [1:0] in;
    reg s;
    wire out;
    mux uut (.out(out) , .in(in) , .s(s));
    initial begin 
    in = 2'b00;
    s = 0;
    end 
    always #2 s = s + 1;
     always #1 in = in +1;
     initial #10 $finish; 
endmodule
