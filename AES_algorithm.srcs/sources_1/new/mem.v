`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Private
// Engineer: Uttej Kallakuri
// 
// Create Date: 03/31/2019 04:00:51 AM
// Design Name: 
// Module Name: mem
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


module mem #(
    parameter MEM_DEPTH = 1024,
    parameter bit_size = 8,
    parameter INIT_FILE = ""
            )(
    (*keep = "true"*)output reg [bit_size-1:0] mem_out,
    input clk,
    input [addrs_width(MEM_DEPTH-1)-1:0] addrs,
    input ena,
    input wen,
    input rst,
    input [bit_size-1:0] data_in
    );
    
    (*keep = "true"*) reg [bit_size-1:0] mem [MEM_DEPTH-1:0];
    (*keep = "true"*) reg [bit_size-1:0] temp_mem_out;
    
    generate
        if (INIT_FILE != "") begin: use_init_file
          initial
            $readmemh(INIT_FILE, mem, 0, MEM_DEPTH-1);
        end else begin: init_bram_to_zero
        integer ram_index;
            initial
                for(ram_index=0; ram_index<MEM_DEPTH; ram_index=ram_index+1) begin
                    mem[ram_index] = {(bit_size-1){1'b0}};
                end
        end
    endgenerate
    
    always @(posedge clk) begin
        mem_out <= temp_mem_out;
        if(rst) begin
            temp_mem_out <= {(bit_size-1){1'b0}};
        end
        else begin
            if(!ena) begin
                if(wen) begin
                    mem[addrs] <= data_in;
                end
                else begin
                    temp_mem_out <= mem[addrs];
                end
            end
            else begin
                temp_mem_out <= temp_mem_out;
            end
        end
    end
    
    function integer addrs_width;
        input integer depth;
        for(addrs_width=0; depth>0; addrs_width=addrs_width+1) begin
            depth = depth >> 1;
        end
    endfunction
    
endmodule