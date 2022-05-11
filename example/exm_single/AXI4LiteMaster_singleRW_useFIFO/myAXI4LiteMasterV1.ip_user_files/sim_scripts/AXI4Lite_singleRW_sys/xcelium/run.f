-makelib xcelium_lib/xilinx_vip -sv \
  "D:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "D:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "D:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "D:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "D:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "D:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "D:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "D:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "D:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xpm -sv \
  "D:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "D:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "D:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_6 \
  "../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/8ae1/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_6 \
  "../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_6 \
  "../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_fifo_generator_0_0/sim/AXI4Lite_singleRW_sys_fifo_generator_0_0.v" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_5 \
  "../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/25a8/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_blk_mem_gen_0_0/sim/AXI4Lite_singleRW_sys_blk_mem_gen_0_0.v" \
-endlib
-makelib xcelium_lib/util_vector_logic_v2_0_1 \
  "../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/3f90/hdl/util_vector_logic_v2_0_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_util_vector_logic_0_0/sim/AXI4Lite_singleRW_sys_util_vector_logic_0_0.v" \
-endlib
-makelib xcelium_lib/axi_bram_ctrl_v4_1_6 \
  "../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/3c31/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_axi_bram_ctrl_0_1/sim/AXI4Lite_singleRW_sys_axi_bram_ctrl_0_1.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_smartconnect_0_0/bd_0/sim/bd_48f7.v" \
-endlib
-makelib xcelium_lib/xlconstant_v1_1_7 \
  "../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_smartconnect_0_0/bd_0/ip/ip_0/sim/bd_48f7_one_0.v" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_smartconnect_0_0/bd_0/ip/ip_1/sim/bd_48f7_psr_aclk_0.vhd" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
  "../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/ea34/hdl/sc_mmu_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_smartconnect_0_0/bd_0/ip/ip_2/sim/bd_48f7_s00mmu_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/4fd2/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_smartconnect_0_0/bd_0/ip/ip_3/sim/bd_48f7_s00tr_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/8047/hdl/sc_si_converter_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_smartconnect_0_0/bd_0/ip/ip_4/sim/bd_48f7_s00sic_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_smartconnect_0_0/bd_0/ip/ip_5/sim/bd_48f7_s00a2s_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/66be/hdl/sc_node_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_smartconnect_0_0/bd_0/ip/ip_6/sim/bd_48f7_sarn_0.sv" \
  "../../../bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_smartconnect_0_0/bd_0/ip/ip_7/sim/bd_48f7_srn_0.sv" \
  "../../../bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_smartconnect_0_0/bd_0/ip/ip_8/sim/bd_48f7_sawn_0.sv" \
  "../../../bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_smartconnect_0_0/bd_0/ip/ip_9/sim/bd_48f7_swn_0.sv" \
  "../../../bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_smartconnect_0_0/bd_0/ip/ip_10/sim/bd_48f7_sbn_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_smartconnect_0_0/bd_0/ip/ip_11/sim/bd_48f7_m00s2a_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/93a6/hdl/sc_exit_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_smartconnect_0_0/bd_0/ip/ip_12/sim/bd_48f7_m00e_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_25 \
  "../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/e1e6/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_11 -sv \
  "../../../../myAXI4LiteMasterV1.gen/sources_1/bd/AXI4Lite_singleRW_sys/ipshared/63b7/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_smartconnect_0_0/sim/AXI4Lite_singleRW_sys_smartconnect_0_0.v" \
  "../../../bd/AXI4Lite_singleRW_sys/ip/AXI4Lite_singleRW_sys_AXI4LiteMaster_singl_0_1/sim/AXI4Lite_singleRW_sys_AXI4LiteMaster_singl_0_1.v" \
  "../../../bd/AXI4Lite_singleRW_sys/sim/AXI4Lite_singleRW_sys.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

