`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.06.2024 12:08:06
// Design Name: 
// Module Name: full_subractor
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


module full_subractor(
    input a,b,bin,
    output d,bout
    );
    assign d = a^b^bin;
    assign bout = ((~a)& b) | (~(a^b)& bin);
endmodule
