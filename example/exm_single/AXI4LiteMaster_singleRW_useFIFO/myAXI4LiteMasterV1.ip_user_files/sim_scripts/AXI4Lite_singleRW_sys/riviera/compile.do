vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/fifo_generator_v13_2_6
vlib riviera/xil_defaultlib
vlib riviera/blk_mem_gen_v8_4_5
vlib riviera/util_vector_logic_v2_0_1
vlib riviera/axi_bram_ctrl_v4_1_6
vlib riviera/xlconstant_v1_1_7
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/smartconnect_v1_0
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_register_slice_v2_1_25
vlib riviera/axi_vip_v1_1_11

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap fifo_generator_v13_2_6 riviera/fifo_generator_v13_2_6
vmap xil_defaultlib riviera/xil_defaultlib
vmap blk_mem_gen_v8_4_5 riviera/blk_mem_gen_v8_4_5
vmap util_vector_logic_v2_0_1 riviera/util_vector_logic_v2_0_1
vmap axi_bram_ctrl_v4_1_6 riviera/axi_bram_ctrl_v4_1_6
vmap xlconstant_v1_1_7 riviera/xlconstant_v1_1_7
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap smartconnect_v1_0 riviera/smartconnect_v1_0
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_25 riviera/axi_register_slice_v2_1_25
vmap axi_vip_v1_1_11 riviera/axi_vip_v1_1_11

vlog -work xilinx_vip  -sv2k12 "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/66be/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/ec67/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work fifo_generator_v13_2_6  -v2k5 "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/66be/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/ec67/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/8ae1/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_6 -93 \
"../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_6  -v2k5 "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/66be/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/ec67/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/66be/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/ec67/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_fifo_generator_0_0/sim/AXI4Lite_singleRW_sys_fifo_generator_0_0.v" \

vlog -work blk_mem_gen_v8_4_5  -v2k5 "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/66be/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/ec67/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/25a8/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/66be/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/ec67/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_blk_mem_gen_0_0/sim/AXI4Lite_singleRW_sys_blk_mem_gen_0_0.v" \

vlog -work util_vector_logic_v2_0_1  -v2k5 "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/66be/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/ec67/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/3f90/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/66be/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/ec67/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_util_vector_logic_0_0/sim/AXI4Lite_singleRW_sys_util_vector_logic_0_0.v" \

vcom -work axi_bram_ctrl_v4_1_6 -93 \
"../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/3c31/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_axi_bram_ctrl_0_1/sim/AXI4Lite_singleRW_sys_axi_bram_ctrl_0_1.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/66be/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/ec67/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_smartconnect_0_0/bd_0/sim/bd_48f7.v" \

vlog -work xlconstant_v1_1_7  -v2k5 "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/66be/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/ec67/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/66be/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/ec67/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_smartconnect_0_0/bd_0/ip/ip_0/sim/bd_48f7_one_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_smartconnect_0_0/bd_0/ip/ip_1/sim/bd_48f7_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/66be/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/ec67/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/ea34/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/66be/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/ec67/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_smartconnect_0_0/bd_0/ip/ip_2/sim/bd_48f7_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/66be/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/ec67/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/4fd2/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/66be/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/ec67/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_smartconnect_0_0/bd_0/ip/ip_3/sim/bd_48f7_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/66be/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/ec67/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/8047/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/66be/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/ec67/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_smartconnect_0_0/bd_0/ip/ip_4/sim/bd_48f7_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/66be/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/ec67/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/66be/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/ec67/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_smartconnect_0_0/bd_0/ip/ip_5/sim/bd_48f7_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/66be/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/ec67/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/66be/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/66be/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/ec67/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_smartconnect_0_0/bd_0/ip/ip_6/sim/bd_48f7_sarn_0.sv" \
"../../../bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_smartconnect_0_0/bd_0/ip/ip_7/sim/bd_48f7_srn_0.sv" \
"../../../bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_smartconnect_0_0/bd_0/ip/ip_8/sim/bd_48f7_sawn_0.sv" \
"../../../bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_smartconnect_0_0/bd_0/ip/ip_9/sim/bd_48f7_swn_0.sv" \
"../../../bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_smartconnect_0_0/bd_0/ip/ip_10/sim/bd_48f7_sbn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/66be/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/ec67/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/66be/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/ec67/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_smartconnect_0_0/bd_0/ip/ip_11/sim/bd_48f7_m00s2a_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/66be/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/ec67/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/93a6/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/66be/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/ec67/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_smartconnect_0_0/bd_0/ip/ip_12/sim/bd_48f7_m00e_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/66be/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/ec67/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/66be/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/ec67/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_25  -v2k5 "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/66be/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/ec67/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/e1e6/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_11  -sv2k12 "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/66be/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/ec67/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/63b7/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/f0b6/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/66be/hdl/verilog" "+incdir+../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/ec67/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_smartconnect_0_0/sim/AXI4Lite_singleRW_sys_smartconnect_0_0.v" \
"../../../bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_AXI4LiteMaster_singl_0_1/sim/AXI4Lite_singleRW_sys_AXI4LiteMaster_singl_0_1.v" \
"../../../bd/AXI4Lite_singleRW_sys/sim/AXI4Lite_singleRW_sys.v" \

vlog -work xil_defaultlib \
"glbl.v"

