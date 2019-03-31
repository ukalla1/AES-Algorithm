`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2019 02:39:22 AM
// Design Name: 
// Module Name: S_box_layer_tb
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


module S_box_layer_tb(
    );
    
    reg clk;
    reg reset;
    reg mem_en;
    reg [7:0] data_in;
    wire [7:0] data_out;
    integer period = 10;
    
    S_box_layer uut(
                    .clk(clk),
                    .reset(reset),
                    .mem_en(mem_en),
                    .data_in(data_in),
                    .data_out(data_out));
    
    initial begin
        forever #(period/2) clk = ~clk;
    end
    
    initial begin
        clk = 0;
        reset = 1'b1;
        mem_en = 1'b1;
        data_in = 8'h9a;
        
        #(period);
        
        reset = 1'b0;
        
        #(15*period);
        
        $finish;
    end
endmodule