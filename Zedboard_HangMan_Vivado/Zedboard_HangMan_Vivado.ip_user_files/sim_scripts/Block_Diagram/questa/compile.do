vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/util_vector_logic_v2_0_2
vlib questa_lib/msim/xil_defaultlib

vmap util_vector_logic_v2_0_2 questa_lib/msim/util_vector_logic_v2_0_2
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work util_vector_logic_v2_0_2  -incr -mfcu  \
"../../../../Zedboard_HangMan_Vivado.gen/sources_1/bd/Block_Diagram/ipshared/3d84/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  \
"../../../bd/Block_Diagram/ip/Block_Diagram_util_vector_logic_0_0/sim/Block_Diagram_util_vector_logic_0_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/Block_Diagram/ip/Block_Diagram_blinky_0_1/sim/Block_Diagram_blinky_0_1.vhd" \
"../../../bd/Block_Diagram/ip/Block_Diagram_TX_Hello_UART_0_0/sim/Block_Diagram_TX_Hello_UART_0_0.vhd" \
"../../../bd/Block_Diagram/ip/Block_Diagram_I2C_user_logic_0_0/sim/Block_Diagram_I2C_user_logic_0_0.vhd" \
"../../../bd/Block_Diagram/ip/Block_Diagram_lcd_user_0_0/sim/Block_Diagram_lcd_user_0_0.vhd" \
"../../../bd/Block_Diagram/sim/Block_Diagram.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

