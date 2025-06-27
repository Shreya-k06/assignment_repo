`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2025 21:00:35
// Design Name: 
// Module Name: singleport_BRAM
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


module singleport_BRAM(
    input clk,
    input we,
    input [10:0] addr,          
    input [15:0] din,
    output reg [15:0] dout
);

    
    (* ram_style = "block" *)  
    reg [15:0] mem [0:2047];     

    always @(posedge clk) begin
        if (we) begin
            mem[addr] <= din;
        end
        dout <= mem[addr];      
    end

endmodule

