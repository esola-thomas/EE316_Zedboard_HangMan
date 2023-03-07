// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Mar  6 21:54:07 2023
// Host        : Alienware running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/My_Repos/EE316_Zedboard_HangMan/Zedboard_HangMan_Vivado/Zedboard_HangMan_Vivado.gen/sources_1/bd/Block_Diagram/ip/Block_Diagram_UART_TX_user_logic_0_0/Block_Diagram_UART_TX_user_logic_0_0_stub.v
// Design      : Block_Diagram_UART_TX_user_logic_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "UART_TX_user_logic,Vivado 2022.2" *)
module Block_Diagram_UART_TX_user_logic_0_0(clk, reset_n, tx_data, sending, TX)
/* synthesis syn_black_box black_box_pad_pin="clk,reset_n,tx_data[7:0],sending,TX" */;
  input clk;
  input reset_n;
  input [7:0]tx_data;
  output sending;
  output TX;
endmodule
