onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib AXI4Lite_singleRW_sys_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {AXI4Lite_singleRW_sys.udo}

run -all

quit -force
