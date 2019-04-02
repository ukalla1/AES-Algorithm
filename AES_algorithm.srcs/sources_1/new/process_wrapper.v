`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/01/2019 08:45:54 PM
// Design Name: 
// Module Name: process_wrapper
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


module process_wrapper(
                        input clk,
                        input reset,
                        input trigger,
                        input [127:0] plain_text,
                        input [127:0] initial_key,
                        output reg [127:0] cypher_text
    );
    
    wire [127:0] s_box_layer_out, shift_rows_out, mix_cols_out, roundKey_out, keyGenerator_out;
    
    wire [127:0] buffer_out, buffer_in, initial_in;
    
    localparam state_idle = 3'b000,state_byteSub = 3'b001;
    localparam state_shiftRows = 3'b010, state_mixCols = 3'b011,  state_addKey = 3'b100;
    (*keep = "true"*) reg[2:0] currentState = state_idle, nextState  = state_idle;
    
    (*keep = "true"*) reg start_byteSub = 1'b0, start_shiftRows = 1'b0, start_mixCols = 1'b0, start_addKey = 1'b0, isLayer_first = 1'b0, isLayer_last = 1'b0;
    (*keep = "true"*) reg start_byteSub_reg = 1'b0, start_shiftRows_reg = 1'b0, start_mixCols_reg = 1'b0, start_addKey_reg = 1'b0, isLayer_first_reg = 1'b0;
    
    (*keep = "true"*) reg [2:0] fsm_counter = {3{1'b0}}, fsm_counter_val = {3{1'b0}};
    
    (*keep = "true"*) reg[3:0] iteration_counter = 4'b1001;
    
    (*keep = "true"*) reg temp_done = 1'b0, fsm_counter_en = 1'b0, fsm_counter_rst = 1'b0, load_fsm_counter = 1'b0;
    
    assign initial_in = (trigger) ? plain_text ^ initial_key : buffer_in;
    assign buffer_in = (isLayer_first_reg) ? initial_in : buffer_out;
    
    always @(posedge clk, posedge reset) begin
        if(reset) begin
            cypher_text <= {128{1'b0}};
            start_byteSub_reg <= 1'b0;
            start_shiftRows_reg <= 1'b0;
            start_mixCols_reg <= 1'b0;
            start_addKey_reg <= 1'b0;
            isLayer_first_reg <= 1'b0;
        end
        else begin
            if(isLayer_last) begin
                cypher_text <= buffer_out;
            end
            else begin
                cypher_text <= cypher_text;
            end
            
            if(fsm_counter_en) begin
                fsm_counter <= fsm_counter - 1'b1;
            end
            else if(fsm_counter_rst) begin
                fsm_counter <= {3{1'b0}};
            end
            else if(load_fsm_counter) begin
                fsm_counter <= fsm_counter_val;
            end
            else  begin
                fsm_counter <= fsm_counter;
            end
            
            start_byteSub_reg <= start_byteSub;
            start_shiftRows_reg <= start_shiftRows;
            start_mixCols_reg <= start_mixCols;
            start_addKey_reg <= start_addKey;
            isLayer_first_reg <= isLayer_first;
        end
    end
    
    S_box_wrapper i0(
                    .clk(clk),
                    .reset(reset),
                    .data_in(buffer_in),
                    .start(start_byteSub_reg),
                    .data_out(s_box_layer_out));
                    
    shift_rows i1(
                    .clk(clk),
                    .reset(reset),
                    .data_in(s_box_layer_out),
                    .load_internal_regs(start_shiftRows_reg),
                    .data_out(shift_rows_out));
                    
    mix_columns i2(
                    .clk(clk),
                    .reset(reset),
                    .data_in(shift_rows_out),
                    .begin_compute(start_mixCols_reg),
                    .data_out(mix_cols_out));
                    
    addRound_key i3(
                    .clk(clk),
                    .reset(reset),
                    .key_val(0),
                    .data_val(mix_cols_out),
                    .start(start_addKey_reg),
                    .data_out(buffer_out));
                    
    always @(posedge clk, posedge reset) begin
        if(reset) begin
            currentState <= state_idle;
        end
        else begin
            currentState <= nextState;
        end
    end
    
    always @(*) begin
        temp_done = 1'b0;
        case(currentState)
        
            state_idle: begin
                if(!trigger) begin
                    start_byteSub = 1'b0;
                    start_shiftRows = 1'b0;
                    start_mixCols = 1'b0;
                    start_addKey = 1'b0;
                    isLayer_first = 1'b0;
                    fsm_counter_en = 1'b0; fsm_counter_rst = 1'b1; load_fsm_counter = 1'b0; fsm_counter_val = {3{1'b0}};
                    nextState = state_idle;
                end
                else begin
                    start_byteSub = 1'b1;
                    start_shiftRows = 1'b0;
                    start_mixCols = 1'b0;
                    start_addKey = 1'b0;
                    isLayer_first = 1'b1;
                    fsm_counter_en = 1'b0; fsm_counter_rst = 1'b0; load_fsm_counter = 1'b1; fsm_counter_val = 3'b011;
                    nextState = state_byteSub;
                end
            end
            
            state_byteSub: begin
                if(fsm_counter >0) begin
                    start_byteSub = 1'b1;
                    start_shiftRows = 1'b0;
                    start_mixCols = 1'b0;
                    start_addKey = 1'b0;
                    isLayer_first = 1'b0;
                    fsm_counter_en = 1'b1; fsm_counter_rst = 1'b0; load_fsm_counter = 1'b0; fsm_counter_val = {3{1'b0}};
                    nextState = state_byteSub;
                end
                else begin
                    start_byteSub = 1'b0;
                    start_shiftRows = 1'b1;
                    start_mixCols = 1'b0;
                    start_addKey = 1'b0;
                    isLayer_first = 1'b0;
                    fsm_counter_en = 1'b0; fsm_counter_rst = 1'b0; load_fsm_counter = 1'b1; fsm_counter_val = 3'b010;
                    nextState = state_shiftRows;
                end
            end
            
            state_shiftRows: begin
                if(fsm_counter >0) begin
                    start_byteSub = 1'b0;
                    start_shiftRows = 1'b0;
                    start_mixCols = 1'b0;
                    start_addKey = 1'b0;
                    isLayer_first = 1'b0;
                    fsm_counter_en = 1'b1; fsm_counter_rst = 1'b0; load_fsm_counter = 1'b0; fsm_counter_val = {3{1'b0}};
                    nextState = state_shiftRows;
                end
                else begin
                    if(iteration_counter == 0) begin
                        start_byteSub = 1'b0;
                        start_shiftRows = 1'b0;
                        start_mixCols = 1'b0;
                        start_addKey = 1'b1;
                        isLayer_first = 1'b0;
                        nextState = state_addKey;
                        fsm_counter_en = 1'b0; fsm_counter_rst = 1'b1; load_fsm_counter = 1'b0; fsm_counter_val = 3'b001;
                    end
                    else begin
                        start_byteSub = 1'b0;
                        start_shiftRows = 1'b0;
                        start_mixCols = 1'b1;
                        start_addKey = 1'b0;
                        isLayer_first = 1'b0;
                        nextState = state_mixCols;
                        fsm_counter_en = 1'b0; fsm_counter_rst = 1'b0; load_fsm_counter = 1'b1; fsm_counter_val = 3'b100;
                    end
                end
            end
            
            state_mixCols: begin
                if(fsm_counter >0) begin
                    start_byteSub = 1'b0;
                    start_shiftRows = 1'b0;
                    start_mixCols = 1'b0;
                    start_addKey = 1'b0;
                    isLayer_first = 1'b0;
                    fsm_counter_en = 1'b1; fsm_counter_rst = 1'b0; load_fsm_counter = 1'b0; fsm_counter_val = {3{1'b0}};
                    temp_done = 1'b0;
                    nextState = state_mixCols;
                end
                else begin
                    start_byteSub = 1'b0;
                    start_shiftRows = 1'b0;
                    start_mixCols = 1'b0;
                    start_addKey = 1'b1;
                    isLayer_first = 1'b0;
                    fsm_counter_en = 1'b0; fsm_counter_rst = 1'b0; load_fsm_counter = 1'b1; fsm_counter_val = 3'b000;
                    temp_done = 1'b1;
                    nextState = state_addKey;
                end
            end
                        
            state_addKey: begin
                if(fsm_counter >0) begin
                    fsm_counter_en = 1'b1; fsm_counter_rst = 1'b0; load_fsm_counter = 1'b0; fsm_counter_val = 3'b000;
                end
                else begin
                    if(iteration_counter == 0) begin
                        nextState = state_idle;
                        start_byteSub = 1'b0;
                        start_shiftRows = 1'b0;
                        start_mixCols = 1'b0;
                        start_addKey = 1'b0;
                        isLayer_first = 1'b0;
                        fsm_counter_en = 1'b0; fsm_counter_rst = 1'b1; load_fsm_counter = 1'b0; fsm_counter_val = {3{1'b0}};
                    end
                    else begin
                        nextState = state_byteSub;
                        start_byteSub = 1'b1;
                        start_shiftRows = 1'b0;
                        start_mixCols = 1'b0;
                        start_addKey = 1'b0;
                        isLayer_first = 1'b0;
                        fsm_counter_en = 1'b0; fsm_counter_rst = 1'b0; load_fsm_counter = 1'b1; fsm_counter_val = 3'b011;
                    end
                end
            end
            
            default: begin
                start_byteSub = 1'b0;
                start_shiftRows = 1'b0;
                start_mixCols = 1'b0;
                start_addKey = 1'b0;
                isLayer_first = 1'b0;
                fsm_counter_en = 1'b0; fsm_counter_rst = 1'b1; load_fsm_counter = 1'b0; fsm_counter_val = {3{1'b0}};
                nextState = state_idle;
            end
        endcase
    end
    
    always @(posedge clk, posedge reset) begin
        isLayer_last <= 1'b0;
        if(reset) begin
            iteration_counter <= 4'b1001;
            isLayer_last <= 1'b0;
        end
        else begin
            if(temp_done) begin
                iteration_counter <= iteration_counter - 1'b1;
                isLayer_last <= 1'b0;
            end
            else if (iteration_counter >0)begin
                iteration_counter <= iteration_counter;
                isLayer_last <= 1'b0;
            end
            else begin
                iteration_counter <= 4'b1001;
                isLayer_last <= 1'b1;
            end
        end
    end
endmodule
