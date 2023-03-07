onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+Block_Diagram  -L util_vector_logic_v2_0_2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.Block_Diagram xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {Block_Diagram.udo}

run 1000ns

endsim

quit -force
