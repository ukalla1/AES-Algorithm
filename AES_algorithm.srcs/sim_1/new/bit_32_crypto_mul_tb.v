`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2019 10:41:58 PM
// Design Name: 
// Module Name: bit_32_crypto_mul_tb
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


module bit_32_crypto_mul_tb(
    );
    
    localparam a_val0 = 8'h02, a_val1 = 8'h03, a_val2 = 8'h01, a_val3 = 8'h01;
    localparam b_val0 = 8'hd4, b_val1 = 8'hbf, b_val2 = 8'h5d, b_val3 = 8'h30;
    
    reg clk;
    reg reset;
    reg [31:0] a = {31{1'b0}}, b = {31{1'b0}};
    reg start;
    wire [7:0] result;
    integer period = 10;
    
    bit_32_crypto_mul uut(
                        .clk(clk),
                        .reset(reset),
                        .a(a),
                        .b(b),
                        .start(start),
                        .result(result));
    
    initial begin
        forever #(period/2) clk = ~clk;
    end
    
    initial begin
        clk = 0;
        start = 1'b0;
        
        #(2*period);
        
        a = {a_val0, a_val1, a_val2, a_val3};
        b = {b_val0, b_val1, b_val2, b_val3};
        start = 1'b1;
        
        #(2*period);
        
        start = 1'b0;
        
        #(2*period);
                
        a = 32'h01020301;
        b = 32'hd4bf5d30;
        start = 1'b1;
        
        #(2*period);
        
        start = 1'b0;
    end
endmodule
