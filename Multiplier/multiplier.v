`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/30/2025 10:21:15 AM
// Design Name: 
// Module Name: multiplier
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


module multiplier(input [1:0] a, b, output [3:0] p );
 wire c1, c2;
    assign c1 = (a[1] & b[0]) & (a[0] & b[1]);
    assign c2 = c1 & (a[1] & b[1]);
    assign p[0] = a[0] & b[0];
    assign p[1] = (a[1] & b[0]) ^ (a[0] & b[1]);
    assign p[2] = c1 ^ (a[1] & b[1]);
    assign p[3] = c2;
endmodule

