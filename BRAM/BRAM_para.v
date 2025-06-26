`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2025 14:03:26
// Design Name: 
// Module Name: BRAM_para
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


module BRAM_para #(
    parameter WIDTH = 32,           
    parameter DEPTH = 1024,         
    parameter ADDR_WIDTH = 10    
)(
    input clk,
    input we,
    input [ADDR_WIDTH-1:0] addr,
    input [WIDTH-1:0] din,
    output [WIDTH-1:0] dout
);

    
    reg [WIDTH-1:0] mem [0:DEPTH-1];

  
    always @(posedge clk) begin
        if (we) begin
            mem[addr] <= din;
        end
    end

   
    assign dout = mem[addr];

endmodule

