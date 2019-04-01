`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Private
// Engineer: Uttej Kallakuri
// 
// Create Date: 04/01/2019 10:35:09 AM
// Design Name: 
// Module Name: crypto_mul_32Bit_wrapper
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


module crypto_mul_32Bit_wrapper(                            
                                input clk,
                                input reset,
                                input [31:0] b,
                                input start,
                                output reg [31:0] result
    );

    localparam a_row0 = 32'h02030101, a_row1 = 32'h01020301, a_row2 = 32'h01010203, a_row3 = 32'h03010102;
    wire [7:0] mul_32_result0, mul_32_result1, mul_32_result2, mul_32_result3;

            bit_32_crypto_mul i0(
            .clk(clk),
            .reset(reset),
            .a(a_row0),
            .b(b),
            .start(start),
            .result(mul_32_result0));
            
            bit_32_crypto_mul i1(
            .clk(clk),
            .reset(reset),
            .a(a_row1),
            .b(b),
            .start(start),
            .result(mul_32_result1));
            
            bit_32_crypto_mul i2(
            .clk(clk),
            .reset(reset),
            .a(a_row2),
            .b(b),
            .start(start),
            .result(mul_32_result2));
            
            bit_32_crypto_mul i3(
            .clk(clk),
            .reset(reset),
            .a(a_row3),
            .b(b),
            .start(start),
            .result(mul_32_result3));

            always @(posedge clk) begin
                if(reset) begin
                    result <= {31{1'b0}};
                end
                else begin
                    result <= {mul_32_result0, mul_32_result1, mul_32_result2, mul_32_result3};
                end
            end
endmodule
