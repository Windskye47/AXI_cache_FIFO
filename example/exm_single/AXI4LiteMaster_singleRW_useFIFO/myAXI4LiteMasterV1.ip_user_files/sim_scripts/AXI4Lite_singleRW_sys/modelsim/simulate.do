onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -L fifo_generator_v13_2_6 -L xil_defaultlib -L blk_mem_gen_v8_4_5 -L util_vector_logic_v2_0_1 -L axi_bram_ctrl_v4_1_6 -L xlconstant_v1_1_7 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L smartconnect_v1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_25 -L axi_vip_v1_1_11 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -L xpm -lib xil_defaultlib xil_defaultlib.AXI4Lite_singleRW_sys xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {AXI4Lite_singleRW_sys.udo}

run -all

quit -force
