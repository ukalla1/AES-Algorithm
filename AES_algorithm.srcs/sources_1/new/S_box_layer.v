`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Private
// Engineer: Uttej Kallakuri
// 
// Create Date: 03/31/2019 01:15:41 AM
// Design Name: 
// Module Name: S_box_layer
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


module S_box_layer(
                    input clk,
                    input reset,
                    input [7:0] data_in,
                    input start,
                    output [7:0] data_out
    );
    
    wire [7:0] addrs_cnt;
    (*keep = "true"*) reg [3:0] lower_bits = {4{1'bz}}, upper_bits = {4{1'bz}};
    
    //memory look up table instantiation with a total read latency of 2 clock cycles with active high write and active low chip enables.
    
    mem #(
            .MEM_DEPTH(256),
            .bit_size(8),
            .INIT_FILE("s_block_mem.mem")
        )mem_i(
            .mem_out(data_out),
            .clk(clk),
            .addrs(addrs_cnt),
            .ena(1'b0),
            .wen(1'b0),
            .rst(1'b0),
            .data_in({8{1'b0}}));
    
//    s_block_mem mem_i0(
//                        .clka(clk),
//                        .ena(mem_en),
//                        .wea(1'b0),
//                        .addra(addrs_cnt),
//                        .dina({(8){1'b0}}),
//                        .douta(mem_val));
                        
    always @(posedge clk) begin
        if(reset) begin
            lower_bits <= {4{1'bz}};
            upper_bits <= {4{1'bz}};
        end
        else begin
            if(start) begin
                lower_bits <= data_in[3:0];
                upper_bits <= data_in[7:4];
            end
            else begin
                lower_bits <= lower_bits;
                upper_bits <= upper_bits;
            end
        end
    end
    
    assign addrs_cnt = ((upper_bits) * 5'b10000) + ((lower_bits) * 5'b00001);
    
endmodule
