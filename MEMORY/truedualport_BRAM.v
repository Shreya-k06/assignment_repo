`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2025 13:27:27
// Design Name: 
// Module Name: truedualport_BRAM
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


module truedualport_BRAM (
    input clka,
    input clkb,
    input wea,
    input web,
    input [8:0] addra,
    input [8:0] addrb,
    input [31:0] dina,
    input [31:0] dinb,
    output reg [31:0] douta,
    output reg [31:0] doutb
);

    (* ram_style = "block" *)  
    reg [31:0] mem [0:511];

    
    always @(posedge clka) begin
        if (wea)
            mem[addra] <= dina;
        douta <= mem[addra];
    end

    always @(posedge clkb) begin
        if (web)
            mem[addrb] <= dinb;
        doutb <= mem[addrb];
    end

endmodule
