`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2025 15:51:06
// Design Name: 
// Module Name: BRAM_2
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
module BRAM_2 #(
    parameter WIDTH = 32,
    parameter DEPTH = 1600,
    parameter ADDR_WIDTH = 11
)(
    input clk,
    input we,
    input [ADDR_WIDTH-1:0] addr,
    input [WIDTH-1:0] din,
    output reg [WIDTH-1:0] dout  
);

    (* ram_style = "block" *) 
    reg [WIDTH-1:0] mem [0:DEPTH-1];

    always @(posedge clk) begin
        if (we) begin
            mem[addr] <= din;  
        end
        dout <= mem[addr];      
    end

endmodule


