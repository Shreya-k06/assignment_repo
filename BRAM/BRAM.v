`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2025 13:17:50
// Design Name: 
// Module Name: BRAM
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


module BRAM (
    input clk,
    input we,
    input [9:0] addr,
    input [31:0] din,
    output [31:0] dout
    );
    reg [31:0] mem [0:1023];
    
    always @(posedge clk) begin
    if(we) begin
        mem[addr]<=din;
    end
    end
    assign dout = mem[addr];
endmodule

