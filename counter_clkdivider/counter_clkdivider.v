`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.06.2025 22:38:50
// Design Name: 
// Module Name: counter_clkdivider
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


module couter_clkdivider(
    input wire clk,       
    input wire reset,     
    output wire clk_div2, 
    output wire clk_div4  
);

    reg [1:0] count;

    always @(posedge clk) begin 
        if (reset)
            count <= 2'b00;
        else
            count <= count + 1;
    end

    
    assign clk_div2 = count[0]; 
    assign clk_div4 = count[1];  

endmodule

