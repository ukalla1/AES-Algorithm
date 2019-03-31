`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2019 10:20:52 AM
// Design Name: 
// Module Name: shift_rows
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


module shift_rows(
                    input clk,
                    input reset,
                    input [127:0] data_in,
                    input load_internal_regs,
                    input begin_shifting,
                    input re_order_internal_reg,
                    output reg [127:0] data_out
    );
    
    reg [7:0] b_reg0 = {8{1'b0}}, b_reg1 = {8{1'b0}}, b_reg2 = {8{1'b0}}, b_reg3 = {8{1'b0}};
    reg [7:0] b_reg4 = {8{1'b0}}, b_reg5 = {8{1'b0}}, b_reg6 = {8{1'b0}}, b_reg7 = {8{1'b0}};
    reg [7:0] b_reg8 = {8{1'b0}}, b_reg9 = {8{1'b0}}, b_reg10 = {8{1'b0}}, b_reg11 = {8{1'b0}}; 
    reg [7:0] b_reg12 = {8{1'b0}}, b_reg13 = {8{1'b0}}, b_reg14 = {8{1'b0}}, b_reg15 = {8{1'b0}};
    reg [31:0] temp_out0 = {31{1'b0}},  temp_out1 = {31{1'b0}},  temp_out2 = {31{1'b0}}, temp_out3 = {31{1'b0}};
    reg [1:0] cnt_one = 2'b01, cnt_two = 2'b10, cnt_three = 2'b11;
    reg load_output_regs = 1'b0;
    
    always @(posedge clk) begin
        load_output_regs <= 1'b0;
        if(reset) begin
            b_reg0 <= {8{1'b0}}; b_reg1 <= {8{1'b0}}; b_reg2 <= {8{1'b0}}; b_reg3 <= {8{1'b0}};
            b_reg4 <= {8{1'b0}}; b_reg5 <= {8{1'b0}}; b_reg6 <= {8{1'b0}}; b_reg7 <= {8{1'b0}};
            b_reg8 <= {8{1'b0}}; b_reg9 <= {8{1'b0}}; b_reg10 <= {8{1'b0}}; b_reg11 <= {8{1'b0}}; 
            b_reg12 <= {8{1'b0}}; b_reg13 <= {8{1'b0}}; b_reg14 <= {8{1'b0}}; b_reg15 <= {8{1'b0}};
            cnt_one <= 2'b01; cnt_two <= 2'b10; cnt_three <= 2'b11;
            temp_out0 <= {31{1'b0}};  temp_out1 <= {31{1'b0}};  temp_out2 <= {31{1'b0}}; temp_out3 <= {31{1'b0}};
        end
        else begin
            if(load_internal_regs) begin
                
                //loading the first 32 bits into the internal regesters (Staging the data before shifting). 
                b_reg0 <= data_in[7:0];
                b_reg4 <= data_in[15:8];
                b_reg8 <= data_in[23:16];
                b_reg12 <= data_in[31:24];
                
                //second 32 bits.
                b_reg1 <= data_in[39:32];
                b_reg5 <= data_in[47:40];
                b_reg9 <= data_in[55:48];
                b_reg13 <= data_in[63:56];
                
                //third 32 bits.
                b_reg2 <= data_in[71:64];
                b_reg6 <= data_in[79:72];
                b_reg10 <= data_in[87:80];
                b_reg14 <= data_in[95:88];
                
                //fourth 32 bits.
                
                b_reg3 <= data_in[103:96];
                b_reg7 <= data_in[111:104];
                b_reg11 <= data_in[119:112];
                b_reg15 <= data_in[127:120];
                cnt_one <= 2'b01; cnt_two <= 2'b10; cnt_three <= 2'b11;
            end
            else if(re_order_internal_reg) begin
                temp_out0 <= {b_reg0, b_reg1, b_reg2, b_reg3};
                temp_out1 <= {b_reg4, b_reg5, b_reg6, b_reg7};
                temp_out2 <= {b_reg8, b_reg9, b_reg10, b_reg11};
                temp_out3 <= {b_reg12, b_reg13, b_reg14, b_reg15};
            end
            else if(begin_shifting) begin
            
                //we shift the first row 0 times, second row 1 time, third row 2 times and fourth row 3 times.
                if(cnt_one > 0) begin
                    temp_out1 <= {temp_out1[23:0], temp_out1[7:0]};
                    cnt_one <= cnt_one - 1'b1;
                end
                else begin
                    temp_out1 <= temp_out1;
                end
                
                if(cnt_two > 0) begin
                    temp_out2 <= {temp_out2[23:0], temp_out2[7:0]};
                    cnt_two <= cnt_two - 1'b1;
                end
                else begin
                    temp_out2 <= temp_out2;
                end
                
                if(cnt_three > 0) begin
                    temp_out3 <= {temp_out3[23:0], temp_out3[7:0]};
                    cnt_three <= cnt_three - 1'b1;
                end
                else begin
                    temp_out3 <= temp_out3;
                    cnt_one <= 2'b01; cnt_two <= 2'b10; cnt_three <= 2'b11;
                    load_output_regs <= 1'b1;
                end
            end
        end
    end
    
    always@(posedge clk) begin
        if(reset) begin
            data_out <= {128{1'b0}};
        end
        else begin
            if(load_output_regs) begin
                data_out <= {temp_out0, temp_out1, temp_out2, temp_out3};
            end
            else begin
                data_out <= data_out;
            end
        end
    end
endmodule
