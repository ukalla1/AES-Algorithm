vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/blk_mem_gen_v8_4_0
vlib modelsim_lib/msim/xil_defaultlib

vmap blk_mem_gen_v8_4_0 modelsim_lib/msim/blk_mem_gen_v8_4_0
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work blk_mem_gen_v8_4_0 -64 -incr \
"../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 -incr \
"../../../../AES_algorithm.srcs/sources_1/ip/s_block_mem/sim/s_block_mem.v" \


vlog -work xil_defaultlib \
"glbl.v"

