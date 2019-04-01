`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Private
// Engineer: Uttej Kallakuri
// 
// Create Date: 04/01/2019 01:06:08 PM
// Design Name: 
// Module Name: mix_columns_tb
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


module mix_columns_tb(
    );
    
    reg clk;
    reg reset = 1'b0;
    reg [127:0] data_in;
    reg begin_compute;
    wire [127:0] data_out;
    integer period = 10;
    
    mix_columns uut(
                .clk(clk),
                .reset(reset),
                .data_in(data_in),
                .begin_compute(begin_compute),
                .data_out(data_out));
    
    initial begin
        forever #(period/2) clk = ~clk;
    end
    
    initial begin
        clk = 0;
        begin_compute = 1'b0;
        data_in = 128'h00000000_00000000_00000000_00000000;
        
        #(2*period);
        data_in = 128'hdb135345_f20a225c_01010101_c6c6c6c6;
        begin_compute = 1'b1;
        
        #(period);
        
        begin_compute = 1'b0;
    end
endmodule
