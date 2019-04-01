`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2019 06:10:24 PM
// Design Name: 
// Module Name: bit_8_crypto_mul_tb
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


module bit_8_crypto_mul_tb(
    );
    
    reg clk;
    reg reset;
    reg start;
    reg [7:0] a,b;
    wire [7:0] result;
    integer period = 10;
    
    bit_8_crypto_mul uut(
                    .clk(clk),
                    .reset(reset),
                    .start(start),
                    .a(a),
                    .b(b),
                    .result(result));
    
    initial begin
        forever #(period/2) clk = ~clk;
    end 
    
    initial begin
        clk = 0;
        reset = 0;
        start = 1'b0;
        a = 8'h01;
        b = 8'h5d;
        
        #(2*period);
        
        start = 1'b1;
        
        #(10*period);
        
        start = 1'b0;
        
        #(2*period);
                
        start = 1'b1;
        a = 8'h02;
        b = 8'hd4;
        
        #(10*period);
                
        start = 1'b0;
        
        #(2*period);
                        
        start = 1'b1;
        a = 8'h03;
        b = 8'hbf;
        
        #(10*period);
                
        start = 1'b0;
        
        #(2*period);
                                
        start = 1'b1;
        a = 8'h01;
        b = 8'h30;
        
        #(10*period);
                
        start = 1'b0;
        
        $finish;
    end
endmodule
