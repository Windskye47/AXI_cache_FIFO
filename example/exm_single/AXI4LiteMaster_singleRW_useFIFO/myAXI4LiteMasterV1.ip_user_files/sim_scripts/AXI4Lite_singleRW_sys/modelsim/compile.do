vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/66be/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/ec67/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_fifo_generator_0_0/sim/AXI4Lite_singleRW_sys_fifo_generator_0_0.v" \
"../../../bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_blk_mem_gen_0_0/sim/AXI4Lite_singleRW_sys_blk_mem_gen_0_0.v" \
"../../../bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_util_vector_logic_0_0/sim/AXI4Lite_singleRW_sys_util_vector_logic_0_0.v" \

vcom -work xil_defaultlib  -93 \
"../../../bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_axi_bram_ctrl_0_1/sim/AXI4Lite_singleRW_sys_axi_bram_ctrl_0_1.vhd" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/66be/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/ec67/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_smartconnect_0_0/bd_0/sim/bd_48f7.v" \
"../../../bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_smartconnect_0_0/bd_0/ip/ip_0/sim/bd_48f7_one_0.v" \

vcom -work xil_defaultlib  -93 \
"../../../bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_smartconnect_0_0/bd_0/ip/ip_1/sim/bd_48f7_psr_aclk_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu -sv -L axi_vip_v1_1_11 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/66be/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/ec67/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_smartconnect_0_0/bd_0/ip/ip_2/sim/bd_48f7_s00mmu_0.sv" \
"../../../bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_smartconnect_0_0/bd_0/ip/ip_3/sim/bd_48f7_s00tr_0.sv" \
"../../../bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_smartconnect_0_0/bd_0/ip/ip_4/sim/bd_48f7_s00sic_0.sv" \
"../../../bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_smartconnect_0_0/bd_0/ip/ip_5/sim/bd_48f7_s00a2s_0.sv" \
"../../../bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_smartconnect_0_0/bd_0/ip/ip_6/sim/bd_48f7_sarn_0.sv" \
"../../../bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_smartconnect_0_0/bd_0/ip/ip_7/sim/bd_48f7_srn_0.sv" \
"../../../bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_smartconnect_0_0/bd_0/ip/ip_8/sim/bd_48f7_sawn_0.sv" \
"../../../bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_smartconnect_0_0/bd_0/ip/ip_9/sim/bd_48f7_swn_0.sv" \
"../../../bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_smartconnect_0_0/bd_0/ip/ip_10/sim/bd_48f7_sbn_0.sv" \
"../../../bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_smartconnect_0_0/bd_0/ip/ip_11/sim/bd_48f7_m00s2a_0.sv" \
"../../../bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_smartconnect_0_0/bd_0/ip/ip_12/sim/bd_48f7_m00e_0.sv" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/66be/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/ec67/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_smartconnect_0_0/sim/AXI4Lite_singleRW_sys_smartconnect_0_0.v" \
"../../../bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_AXI4LiteMaster_singl_0_1/sim/AXI4Lite_singleRW_sys_AXI4LiteMaster_singl_0_1.v" \
"../../../bd/AXI4Lite_singleRW_sys/sim/AXI4Lite_singleRW_sys.v" \

vlog -work xil_defaultlib \
"glbl.v"

