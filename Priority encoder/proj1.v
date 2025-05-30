`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/30/2025 03:08:33 PM
// Design Name: 
// Module Name: proj1
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


module proj1(input[3:0]D, output[1:0]A, output v);
assign A[1] = D[3]|D[2];
assign A[0] = D[3]|(~D[2]&D[1]);
assign v = D[0]|D[1]|D[2]|D[3];
endmodule
