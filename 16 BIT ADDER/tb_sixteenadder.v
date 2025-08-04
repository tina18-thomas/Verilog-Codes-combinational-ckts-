`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.06.2024 15:11:51
// Design Name: 
// Module Name: tb_sixteenadder
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


module tb_sixteenadder();
    reg [15:0] a, b;
    reg cin;
    wire [15:0] s;
    wire cout;

    sixteen_adder uut (.s(s), .cout(cout), .a(a), .b(b), .cin(cin));

    initial begin
        a = 16'b0;
        b = 16'b0;
        cin = 1'b0;

        #10 $finish;
    end

    always #4 a = a + 16'b1;
    always #2 b = b + 16'b1;
    always #1 cin = cin + 1'b1;

endmodule
