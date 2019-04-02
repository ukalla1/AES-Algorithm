`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Private
// Engineer: Uttej Kallakuri
// 
// Create Date: 03/31/2019 04:21:34 PM
// Design Name: 
// Module Name: mix_columns
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


module mix_columns(
                   input clk,
                   input reset,
                   input [127:0] data_in,
                   input begin_compute,
                   output reg [127:0] data_out 
    );
    
    wire [31:0] wrapper_out0, wrapper_out1, wrapper_out2, wrapper_out3;
    (*keep = "true"*) reg [3:0] cntr = {4{1'b0}};
    (*keep = "true"*) reg start = 1'b0;
    
    crypto_mul_32Bit_wrapper i0(
                                .clk(clk),
                                .reset(reset),
                                .b(data_in[31:0]),
                                .start(start),
                                .result(wrapper_out0));
                                
    crypto_mul_32Bit_wrapper i1(
                                .clk(clk),
                                .reset(reset),
                                .b(data_in[63:32]),
                                .start(start),
                                .result(wrapper_out1));
                                
    crypto_mul_32Bit_wrapper i2(
                                .clk(clk),
                                .reset(reset),
                                .b(data_in[95:64]),
                                .start(start),
                                .result(wrapper_out2));
                                
    crypto_mul_32Bit_wrapper i3(
                                .clk(clk),
                                .reset(reset),
                                .b(data_in[127:96]),
                                .start(start),
                                .result(wrapper_out3));
                                
    always @(posedge clk) begin
        if(reset) begin
            data_out <= {128{1'b0}};
            start <= 1'b0;
            cntr <= {4{1'b0}};
        end
        else begin
            if(begin_compute) begin
                cntr <= 4'b0011;
                start <= 1'b1;
            end
            else if(cntr > 0) begin
                cntr <= cntr - 1'b1;
            end
            else begin
                start <= 1'b0;
                cntr <= {4{1'b0}};
                data_out <= {wrapper_out0, wrapper_out1, wrapper_out2, wrapper_out3};
            end
        end
    end
endmodule
