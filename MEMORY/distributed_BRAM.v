`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2025 18:54:11
// Design Name: 
// Module Name: distributed_BRAM
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


module distributed_BRAM (
    input clk,
    input we,
    input [7:0] addr,
    input [31:0] din,
    output reg [31:0] dout       
);
    (* ram_style = "distributed" *) 
    reg [31:0] mem [0:255];

    always @(posedge clk) begin
        if (we)
            mem[addr] <= din;
        dout <= mem[addr];         
    end

endmodule

