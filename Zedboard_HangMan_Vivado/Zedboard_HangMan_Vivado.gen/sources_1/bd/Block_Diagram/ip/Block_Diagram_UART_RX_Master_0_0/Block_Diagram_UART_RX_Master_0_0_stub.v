// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Mar  6 17:22:13 2023
// Host        : Alienware running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/My_Repos/EE316_Zedboard_HangMan/Zedboard_HangMan_Vivado/Zedboard_HangMan_Vivado.gen/sources_1/bd/Block_Diagram/ip/Block_Diagram_UART_RX_Master_0_0/Block_Diagram_UART_RX_Master_0_0_stub.v
// Design      : Block_Diagram_UART_RX_Master_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "UART_RX_Master,Vivado 2022.2" *)
module Block_Diagram_UART_RX_Master_0_0(RX, clk, reset_n, RX_data, error)
/* synthesis syn_black_box black_box_pad_pin="RX,clk,reset_n,RX_data[7:0],error" */;
  input RX;
  input clk;
  input reset_n;
  output [7:0]RX_data;
  output error;
endmodule
