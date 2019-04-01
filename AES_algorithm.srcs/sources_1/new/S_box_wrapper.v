`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Private
// Engineer: Uttej Kallakuri
// 
// Create Date: 04/01/2019 05:44:49 PM
// Design Name: 
// Module Name: S_box_wrapper
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


module S_box_wrapper(
                        input clk,
                        input reset,
                        input [127:0] data_in,
                        input start,
                        output reg [127:0] data_out
    );
    
    wire [127:0] temp_out;
    generate
        genvar i;
        for (i = 0; i< 16; i = i+1) begin
            S_box_layer i(
                            .clk(clk),
                            .reset(reset),
                            .data_in(data_in[((8*(i+1))-1):(8*i)]),
                            .start(start),
                            .data_out(temp_out[((8*(i+1))-1):(8*i)])
            );
        end
    endgenerate
    
    always @(posedge clk) begin
        if(reset) begin
            data_out <= {128{1'b0}};
        end
        else begin
            if(start) begin
                data_out <= temp_out;
            end
            else begin
                data_out <= data_out;
            end
        end
    end
endmodule
