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
    reg reset = 0;
    reg [7:0] data_in;
    wire [7:0] data_out;
    integer period = 10;
    
    S_box_layer uut(
                    .clk(clk),
                    .reset(reset),
                    .data_in(data_in),
                    .data_out(data_out));
    
    initial begin
        forever #(period/2) clk = ~clk;
    end
    
    initial begin
        clk = 0;
        #(period);
        
        data_in = 8'h9a;
        
        #(period);
        
        reset = 1'b1;
        
        #(3*period);
        
        reset = 1'b0;
        data_in = 8'h5f;
        
        #(period);
                
        reset = 1'b1;
        
        #(3*period);
        
        reset = 1'b0;
        data_in = 8'h28;
        
        reset = 1'b0;
        
        #(15*period);
        
        $finish;
    end
endmodule