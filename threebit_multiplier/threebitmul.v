`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.06.2025 14:40:04
// Design Name: 
// Module Name: threebitmul
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


module halfadder(input a, input b, output sum, output carry);
    assign sum = a ^ b;
    assign carry = a & b;
endmodule

module fulladder(input a, input b, input cin, output sum, output carry);
    assign sum = a ^ b ^ cin;
    assign carry = (a & b) | (b & cin) | (a & cin);
endmodule



module multiplier_3bit (
    input [2:0] a,
    input [2:0] b,
    output [5:0] P
);

 wire x1, x2, x3, x4, x5, x6, x7, x8;
 wire c1, c2, c3, c4, c5, c6;
 wire s1, s2, s3, s4, s5, s6;
 
assign P[0]= a[0] & b[0];
    
    assign x1 = a[1] & b[0];
    assign x2 = a[2] & b[0];
    assign x3 = a[0] & b[1];
    assign x4 = a[1] & b[1];
    assign x5 = a[2] & b[1];
    assign x6 = a[0] & b[2];
    assign x7 = a[1] & b[2];
    assign x8 = a[2] & b[2];
  halfadder ha1(x1, x3, s1, c1);
    assign P[1] = s1;

    fulladder fa1(x2, x4, c1, s2, c2);
    halfadder ha2(x6, s2, s3, c3);
    assign P[2] = s3;

    halfadder ha3(x5, c2, s4, c4);
    fulladder fa2(x7, s4, c3, s5, c5);
    assign P[3] =s5;

    fulladder fa3(x8, c4, c5, s6, c6);
    assign P[4] = s6;
    assign P[5] = c6;
    
endmodule
