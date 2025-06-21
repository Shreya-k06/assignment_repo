`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2025 16:53:39
// Design Name: 
// Module Name: both_edgedetector
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



module both_edgedetector (
    input  wire clk,
    input  wire signal_in,
    output reg  pos_edge_out,
    output reg  neg_edge_out
);

    reg signal_d;  

    always @(posedge clk) begin
        signal_d     <= signal_in;                
        pos_edge_out <=  signal_in & ~signal_d;   
        neg_edge_out <= ~signal_in &  signal_d;    
    end

endmodule