`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.07.2024 11:25:18
// Design Name: 
// Module Name: mux
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

module mux2to1 (
    output out,
    input [1:0] in,
    input s
);
    assign out = (s) ? in[1] : in[0];
endmodule

module mux (
    output out,
    input [7:0] in,
    input [2:0] s
);
    wire [5:0] w;
    
    // Level 1
    mux2to1 m1 (w[0], in[1:0], s[0]);
    mux2to1 m2 (w[1], in[3:2], s[0]);
    mux2to1 m3 (w[2], in[5:4], s[0]);
    mux2to1 m4 (w[3], in[7:6], s[0]);
    
    // Level 2
    mux2to1 m5 (w[4], {w[1], w[0]}, s[1]);
    mux2to1 m6 (w[5], {w[3], w[2]}, s[1]);
    
    // Level 3
    mux2to1 m7 (out, {w[5], w[4]}, s[2]);
endmodule




