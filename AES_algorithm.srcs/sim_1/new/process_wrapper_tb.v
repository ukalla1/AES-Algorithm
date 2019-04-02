`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
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
    reg [127:0] initial_key;
    wire [127:0] cypher_text;
    integer period = 10;
    
    process_wrapper uut(
                    .clk(clk),
                    .reset(reset),
                    .trigger(trigger),
                    .plain_text(plain_text),
                    .initial_key(initial_key),
                    .cypher_text(cypher_text));
    
    initial begin
        forever #(period/2) clk = ~clk;
    end
    
    initial begin
        clk = 0;
        trigger = 1'b0;
        plain_text = 0;
        initial_key = 0;
        
        #(2*period);
        
        trigger = 1'b1;
        plain_text = 128'h00_3c_6e_47_1f_4e_22_74_0e_08_1b_31_54_59_0b_1a;
        
        #(period);
        
        trigger = 1'b0;
    end
endmodule
