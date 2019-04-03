`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Private
// Engineer: Uttej Kallakuri
// 
// Create Date: 04/01/2019 10:38:06 PM
// Design Name: 
// Module Name: process_wrapper_tb
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


module process_wrapper_tb(
    );
    
    reg clk;
    reg reset = 1'b0;
    reg trigger;
    reg [127:0] plain_text;
    wire [127:0] cypher_text;
    integer period = 10;
    
    process_wrapper uut(
                    .clk(clk),
                    .reset(reset),
                    .trigger(trigger),
                    .plain_text(plain_text),
                    .cypher_text(cypher_text));
    
    initial begin
        forever #(period/2) clk = ~clk;
    end
    
    initial begin
        clk = 0;
        trigger = 1'b0;
        plain_text = 0;
        
        #(2*period);
        
        trigger = 1'b1;
        plain_text = 128'h6f775420656e694e20656e4f206f7754;
        
        #(period);
        
        trigger = 1'b0;
    end
endmodule
