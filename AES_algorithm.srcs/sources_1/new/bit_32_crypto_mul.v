`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2019 10:18:50 PM
// Design Name: 
// Module Name: bit_32_crypto_mul
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


module bit_32_crypto_mul(
                            input clk,
                            input reset,
                            input [31:0] a, b,
                            input start,
                            output reg [7:0] result
    );
    
    wire [7:0] mul_8_result0, mul_8_result1, mul_8_result2, mul_8_result3;
    
    bit_8_crypto_mul i0(
                        .a(a[7:0]),
                        .b(b[7:0]),
                        .clk(clk),
                        .reset(reset),
                        .start(start),
                        .result(mul_8_result0));
                        
    bit_8_crypto_mul i1(
                        .a(a[15:8]),
                        .b(b[15:8]),
                        .clk(clk),
                        .reset(reset),
                        .start(start),
                        .result(mul_8_result1));
                        
    bit_8_crypto_mul i2(
                        .a(a[23:16]),
                        .b(b[23:16]),
                        .clk(clk),
                        .reset(reset),
                        .start(start),
                        .result(mul_8_result2));
                        
    bit_8_crypto_mul i3(
                        .a(a[31:24]),
                        .b(b[31:24]),
                        .clk(clk),
                        .reset(reset),
                        .start(start),
                        .result(mul_8_result3));
                        
    always @(posedge clk) begin
        if(reset) begin
            result <= {8{1'b0}};
        end
        else begin
            result <= mul_8_result0 ^ mul_8_result1 ^ mul_8_result2 ^ mul_8_result3;
        end
    end
endmodule
