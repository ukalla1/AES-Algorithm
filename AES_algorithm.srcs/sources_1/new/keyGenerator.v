`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Private
// Engineer: Uttej Kallakuri
// 
// Create Date: 04/02/2019 02:15:12 PM
// Design Name: 
// Module Name: keyGenerator
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


module keyGenerator(
                    input clk,
                    input reset,
                    input [127:0] in_key_val,
                    input key_gen,
                    output reg [127:0] out_key_val
    );
    
    localparam round_const = 32'h01000000;
    
    wire [7:0] s_box_res0, s_box_res1, s_box_res2, s_box_res3;
    wire[31:0] s_box_result;
    
    (*keep = "true"*) reg [31:0] key_vals0 = {32{1'b0}}, key_vals1 = {32{1'b0}}, temp_key_vals3 = {32{1'b0}};
    (*keep = "true"*) reg [31:0] key_vals2 = {32{1'b0}}, key_vals3 = {32{1'b0}}, key3_reg = {32{1'b0}};
    
    (*keep = "true"*) reg[3:0] cntr = 4'b1010;
    
    (*keep = "true"*) reg begin_s_layer = 1'b0, begin_ops = 1'b0;
    
    (*keep = "true"*) reg [127:0] temp_out;
    
    S_box_layer i0(
                    .clk(clk),
                    .reset(reset),
                    .data_in(key_vals3[7:0]),
                    .start(begin_s_layer),
                    .data_out(s_box_res0));
                    
    S_box_layer i1(
                    .clk(clk),
                    .reset(reset),
                    .data_in(key_vals3[15:8]),
                    .start(begin_s_layer),
                    .data_out(s_box_res1));
                    
    S_box_layer i2(
                    .clk(clk),
                    .reset(reset),
                    .data_in(key_vals3[23:16]),
                    .start(begin_s_layer),
                    .data_out(s_box_res2));
                    
    S_box_layer i3(
                    .clk(clk),
                    .reset(reset),
                    .data_in(key_vals3[31:24]),
                    .start(begin_s_layer),
                    .data_out(s_box_res3));
                    
    always @(posedge clk) begin
        if(reset) begin
            cntr <= 4'b1010;
            key_vals0 = {32{1'b0}};
            key_vals1 = {32{1'b0}};
            key_vals2 = {32{1'b0}};
            key_vals3 = {32{1'b0}};
        end
        else begin
            if(key_gen) begin
                cntr <= cntr - 1'b1;
                key_vals0 <= in_key_val[31:0];
                key_vals1 <= in_key_val[63:32];
                key_vals2 <= in_key_val[95:64];
                key_vals3 <= in_key_val[127:96];
                key3_reg <= in_key_val[127:96];
                begin_ops <= 1'b1;
            end
            else if(cntr >0 && begin_ops) begin
                if(cntr >8) begin
                    key_vals3 <= {key_vals3[23:0],key_vals3[31:24]};
                    cntr <= cntr - 1'b1;
                end
                else if(cntr >4) begin
                    begin_s_layer <= 1'b1;
                    cntr <= cntr - 1'b1;
                end
                else if(cntr >3) begin
                    begin_s_layer <= 1'b0;
                    key_vals3 <= {s_box_res3, s_box_res2, s_box_res1, s_box_res0};
                    cntr <= cntr - 1'b1;
                end
                else if(cntr >2) begin
                    temp_key_vals3 <= round_const ^ key_vals3;
                    cntr <= cntr - 1'b1;
                end
                else if (cntr >1) begin
                    temp_out[31:0] <= key_vals0 ^ temp_key_vals3;
                    temp_out[63:32] <= key_vals1 ^ (key_vals0 ^ temp_key_vals3);
                    temp_out[95:64] <= key_vals2 ^ (key_vals1 ^ (key_vals0 ^ temp_key_vals3));
                    temp_out[127:96] <= key3_reg ^ (key_vals2 ^ (key_vals1 ^ (key_vals0 ^ temp_key_vals3)));
                    cntr <= cntr - 1'b1;
                end
                else begin
                    cntr <= cntr - 1'b1;
                    begin_ops <= 1'b0;
                end
            end
            else begin
                out_key_val <= temp_out;
                cntr <= 4'b1010;
            end
        end
    end
                                        
endmodule
