`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.06.2024 14:45:41
// Design Name: 
// Module Name: sixteen_adder
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

module sixteen_adder(a, b, cin, s, cout);
    output reg [15:0] s;
    output reg cout;
    input [15:0] a, b;
    input cin;

    always @(*) begin
        {cout, s} = a + b + cin;
    end
endmodule


