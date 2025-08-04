`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.06.2024 11:34:15
// Design Name: 
// Module Name: fulladder_instantiate
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


module fulladder_instantiate(
    input a,b,cin,
    output sum,cout
    );
    wire x,z;
    half a1 (x,c,a,b);
    half a2 (sum,z,x,cin);
    or (cout,z,c);
endmodule

module half(s,c,a,b);
input a,b;
output s,c;
assign s = a^b;
assign c= a&b;
endmodule
