`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/02/2019 03:05:08 PM
// Design Name: 
// Module Name: keyGenerator_tb
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


module keyGenerator_tb(
    );
    
    reg clk;
    reg reset;
    reg [127:0] key_in;
    reg key_gen;
    wire [127:0] key_out;
    integer period = 10;
    
    keyGenerator uut(
                        .clk(clk),
                        .reset(reset),
                        .in_key_val(key_in),
                        .key_gen(key_gen),
                        .out_key_val(key_out));
    initial begin
        forever #(period/2) clk = ~clk;
    end
    
    initial begin
        clk = 0;
        reset = 0;
        key_in = 0;
        key_gen = 1'b0;
        
        #(2*period);
        
        key_gen = 1'b1;
        
        #(period);
        
        key_gen = 1'b0;
        
        #(100*period);
        
        $finish;
    end
                            
endmodule
