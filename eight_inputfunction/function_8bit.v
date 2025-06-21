`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.06.2025 16:16:06
// Design Name: 
// Module Name: function_8bit
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


module function_8bit(
    input  wire a, b, c, d, e, f, g, h,
    input  wire clk,
    output reg y
);

    wire result;

 
    assign result = (a & b) | (c ^ (d & e)) | (f ^ (g & h));

    always @(posedge clk) begin
        y <= result;
    end

endmodule

