vlib work
vlib riviera

vlib riviera/blk_mem_gen_v8_4_0
vlib riviera/xil_defaultlib

vmap blk_mem_gen_v8_4_0 riviera/blk_mem_gen_v8_4_0
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work blk_mem_gen_v8_4_0  -v2k5 \
"../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../AES_algorithm.srcs/sources_1/ip/s_block_mem/sim/s_block_mem.v" \


vlog -work xil_defaultlib \
"glbl.v"

