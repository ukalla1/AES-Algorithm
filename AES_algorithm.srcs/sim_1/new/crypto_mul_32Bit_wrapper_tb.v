`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Private
// Engineer: Uttej Kallakuri
// 
// Create Date: 04/01/2019 10:37:45 AM
// Design Name: 
// Module Name: crypto_mul_32Bit_wrapper_tb
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


module crypto_mul_32Bit_wrapper_tb(
    );
    
    reg clk;
    reg reset = 1'b0;
    reg [31:0] b;
    reg start;
    wire [31:0] result;
    integer period = 10;
    
    crypto_mul_32Bit_wrapper uut(
                                .clk(clk),
                                .reset(reset),
                                .b(b),
                                .start(start),
                                .result(result));
    
    initial begin
        forever #(period/2) clk = ~clk;
    end
    
    initial begin
        clk = 0;
        b = 32'h0;
        start = 1'b0;
        
        #(2*period);
        
        b = 32'hd4bf5d30;
        start = 1'b1;
        
        #(10*period);
        start = 1'b0;
        
        $finish;
    end
endmodule
