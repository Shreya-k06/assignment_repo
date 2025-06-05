`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2025 20:38:25
// Design Name: 
// Module Name: and_gate_d
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


module and_gate_d(input wire clk,     
    input wire a,     
    input wire b,      
    output reg y       
);

always @(posedge clk) begin
    y <= a & b;        
end

endmodule


