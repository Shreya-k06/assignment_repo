`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2025 15:48:02
// Design Name: 
// Module Name: posedge_detector_tb
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


module posedge_detector_tb;
    reg clk;
    reg signal_in;
    wire pos_edge_out;

    
    posedge_detector uut (
        .clk(clk),
        .signal_in(signal_in),
        .pos_edge_out(pos_edge_out)
    );

    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  
    end

    
    initial begin
        
        signal_in = 0;

        
        #12  signal_in = 1;  
        #10  signal_in = 1;  
        #10  signal_in = 0; 
        #10  signal_in = 1;  
        #10  signal_in = 0;  
        #10  signal_in = 0;  
        #10  signal_in = 1; 
        #10;

        $finish;
    end


    initial begin
        $monitor("Time=%0t | clk=%b | signal_in=%b | pos_edge_out=%b", 
                  $time, clk, signal_in, pos_edge_out);
    end

endmodule

