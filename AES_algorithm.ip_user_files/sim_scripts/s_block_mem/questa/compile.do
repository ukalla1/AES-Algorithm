vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/blk_mem_gen_v8_4_0
vlib questa_lib/msim/xil_defaultlib

vmap blk_mem_gen_v8_4_0 questa_lib/msim/blk_mem_gen_v8_4_0
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work blk_mem_gen_v8_4_0 -64 \
"../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 \
"../../../../AES_algorithm.srcs/sources_1/ip/s_block_mem/sim/s_block_mem.v" \


vlog -work xil_defaultlib \
"glbl.v"

