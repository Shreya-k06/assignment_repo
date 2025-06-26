`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2025 15:08:44
// Design Name: 
// Module Name: BRAM_50k
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


   module BRAM_50K #(
    parameter WIDTH = 32,
    parameter DEPTH = 1600,
    parameter ADDR_WIDTH = 11
)(
    input clk,
    input we,
    input [ADDR_WIDTH-1:0] addr,
    input [WIDTH-1:0] din,
    output [WIDTH-1:0] dout
);

    reg [WIDTH-1:0] mem [0:DEPTH-1];

    always @(posedge clk) begin
        if (we)
            mem[addr] <= din;
    end

    assign dout = mem[addr];

endmodule

