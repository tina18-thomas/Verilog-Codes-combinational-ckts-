`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.07.2024 12:15:28
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
    reg [7:0] in;
    reg [2:0] s;
    wire out;
    
    mux uut (.out(out), .in(in), .s(s));
    
    initial begin
        in = 8'b10110110;
        s = 3'b000;
        #2 s = 3'b001;
        #2 s = 3'b010;
        #2 s = 3'b011;
        #2 s = 3'b100;
        #2 s = 3'b101;
        #2 s = 3'b110;
        #2 s = 3'b111;
    end
    
    initial #20 $finish;
endmodule

    

