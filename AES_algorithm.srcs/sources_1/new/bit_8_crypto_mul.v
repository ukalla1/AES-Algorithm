`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Private
// Engineer: Uttej Kallakuri
// 
// Create Date: 03/31/2019 04:29:31 PM
// Design Name: 
// Module Name: bit_8_crypto_mul
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


module bit_8_crypto_mul(
                            input [7:0] a, b,
                            input clk,
                            input reset,
                            input start,
                            output reg [7:0] result
    );
    
    (*keep = "true"*)reg [7:0] temp_result = {8{1'b0}};
    (*keep = "true"*)reg delay_cntr_en = 1'b0, compute_2 = 1'b0, compute_3 = 1'b0, load_result = 1'b0;
    
    localparam gnd = 1'b0;
    
    //combinational logic to check the value of the filter.
    always @(*) begin
        if(reset) begin
            delay_cntr_en = 1'b0;
            compute_2 = 1'b0;
            compute_3 = 1'b0;
        end
        else begin
            if(start) begin
                case(a)
                    8'b00000001: begin
                        compute_2 = 1'b0;
                        compute_3 = 1'b0;
                        delay_cntr_en = 1'b1;
                    end
                    8'b00000010: begin
                        delay_cntr_en = 1'b0;
                        compute_2 = 1'b1;
                        compute_3 = 1'b0;
                    end
                    8'b00000011: begin
                        delay_cntr_en = 1'b0;
                        compute_2 = 1'b0;
                        compute_3 = 1'b1;
                    end
                    default: begin
                        delay_cntr_en = 1'b0;
                        compute_2 = 1'b0;
                        compute_3 = 1'b0;
                    end
                endcase
            end
            else begin
                delay_cntr_en = 1'b0;
                compute_2 = 1'b0;
                compute_3 = 1'b0;
            end
        end
    end
    
    always @(*) begin
        load_result = 1'b0;
        temp_result = {8{1'b0}};
        
        if(delay_cntr_en) begin
            if(b[7]) begin
                temp_result = b ^ 8'b00011011;
                load_result = 1'b1;
            end
            else begin
                temp_result = b;
                load_result = 1'b1;
            end
        end
        else if(compute_2) begin
            if(b[7]) begin
                temp_result = {b[6:0],1'b0} ^ 8'b00011011;
                load_result = 1'b1;
            end
            else begin
                temp_result = {b[6:0],1'b0};
                load_result = 1'b1;
            end
        end
        else if(compute_3) begin
            if(b[7]) begin
                temp_result = {b[6:0],1'b0} ^ 8'b00011011 ^ b;
                load_result = 1'b1;
            end
            else begin
                temp_result = {b[6:0],1'b0} ^ b;
                load_result = 1'b1;
            end
        end
    end
    
    always @(posedge clk) begin
        if(reset) begin
            result <= {8{1'b0}};
        end
        else begin
            if(load_result) begin
                result <= temp_result;
            end
            else begin
                result <= result;
            end
        end
    end
endmodule
