`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Private
// Engineer: Uttej Kallakuri
// 
// Create Date: 04/01/2019 06:14:59 PM
// Design Name: 
// Module Name: S_box_wrapper_tb
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


module S_box_wrapper_tb(
    );
    
    reg clk;
    reg reset = 1'b0;
    reg [127:0] data_in;
    reg start;
    wire [127:0] data_out;
    integer period = 10;
    
    S_box_wrapper uut(
                        .clk(clk),
                        .reset(reset),
                        .data_in(data_in),
                        .start(start),
                        .data_out(data_out));
    
    initial begin
        forever #(period/2) clk = ~clk;
    end
    
    initial begin
        clk = 0;
        start = 1'b0;
        data_in = 0;
        
        #(2*period);
        
        data_in = 128'h003c6e471f4e22740e081b3154590b1a;
        start = 1'b1;
        
        #(4*period);
        
        start = 1'b0;
        
        $finish;
    end
endmodule
