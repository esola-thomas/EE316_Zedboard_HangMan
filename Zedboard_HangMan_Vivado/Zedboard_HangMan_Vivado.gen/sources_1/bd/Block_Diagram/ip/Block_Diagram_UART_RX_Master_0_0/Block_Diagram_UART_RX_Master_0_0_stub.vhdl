-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Mon Mar  6 17:22:13 2023
-- Host        : Alienware running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/My_Repos/EE316_Zedboard_HangMan/Zedboard_HangMan_Vivado/Zedboard_HangMan_Vivado.gen/sources_1/bd/Block_Diagram/ip/Block_Diagram_UART_RX_Master_0_0/Block_Diagram_UART_RX_Master_0_0_stub.vhdl
-- Design      : Block_Diagram_UART_RX_Master_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Block_Diagram_UART_RX_Master_0_0 is
  Port ( 
    RX : in STD_LOGIC;
    clk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    RX_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    error : out STD_LOGIC
  );

end Block_Diagram_UART_RX_Master_0_0;

architecture stub of Block_Diagram_UART_RX_Master_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "RX,clk,reset_n,RX_data[7:0],error";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "UART_RX_Master,Vivado 2022.2";
begin
end;
