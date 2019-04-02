`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Private
// Engineer: Uttej Kallakuri
// 
// Create Date: 04/01/2019 07:01:52 PM
// Design Name: 
// Module Name: addRound_key
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


module addRound_key(
                    input clk,
                    input reset,
                    input [127:0] key_val,
                    input [127:0] data_val,
                    input start,
                    output reg [127:0] data_out
    );
    
    wire [127:0] temp_out;
    
    assign temp_out = key_val ^ data_val;
    
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
