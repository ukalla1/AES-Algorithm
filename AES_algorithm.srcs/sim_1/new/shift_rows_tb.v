`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Private
// Engineer: Uttej Kallakuri
// 
// Create Date: 03/31/2019 11:56:50 AM
// Design Name: 
// Module Name: shift_rows_tb
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


module shift_rows_tb(
    );
    
    reg clk;
    reg reset;
    reg [127:0] data_in;
    reg load_internal_regs = 1'b0;
    wire [127:0] data_out;
    integer period = 10;
    
    reg [7:0] temp_data_in0, temp_data_in1, temp_data_in2, temp_data_in3, temp_data_in4;
    reg [7:0] temp_data_in5, temp_data_in6, temp_data_in7, temp_data_in8, temp_data_in9;
    reg [7:0] temp_data_in10, temp_data_in11, temp_data_in12, temp_data_in13, temp_data_in14;
    reg [7:0] temp_data_in15;
    
    shift_rows uut(
                .clk(clk),
                .reset(reset),
                .data_in(data_in),
                .load_internal_regs(load_internal_regs),
                .data_out(data_out));
    
    initial begin
        forever #(period/2) clk = ~clk;
    end
    
    initial begin
        clk = 0;
        reset = 0;
        temp_data_in0 = 8'hd0;
        temp_data_in1 = 8'hef;
        temp_data_in2 = 8'haa;
        temp_data_in3 = 8'hfb;
        temp_data_in4 = 8'h43;
        temp_data_in5 = 8'h4d;
        temp_data_in6 = 8'h33;
        temp_data_in7 = 8'h85;
        temp_data_in8 = 8'h45;
        temp_data_in9 = 8'hf9;
        temp_data_in10 = 8'h02;
        temp_data_in11 = 8'h7f;
        temp_data_in12 = 8'h50;
        temp_data_in13 = 8'h3c;
        temp_data_in14 = 8'h9f;
        temp_data_in15 = 8'ha8;
        
        #(period);
         data_in = {temp_data_in0, temp_data_in1, temp_data_in2, temp_data_in3, temp_data_in4, temp_data_in5, temp_data_in6, temp_data_in7, temp_data_in8, temp_data_in9, temp_data_in10, temp_data_in11, temp_data_in12, temp_data_in13, temp_data_in14, temp_data_in15};
         
        #(period);
        load_internal_regs = 1'b1;
        
        #(period);
        load_internal_regs = 1'b0;
        
        #(10*period);
        $finish;
    end
endmodule
