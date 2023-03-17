--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
--Date        : Thu Mar 16 21:55:11 2023
--Host        : Alienware running 64-bit major release  (build 9200)
--Command     : generate_target Block_Diagram_wrapper.bd
--Design      : Block_Diagram_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Block_Diagram_wrapper is
  port (
    BTND : in STD_LOGIC;
    GCLK : in STD_LOGIC;
    LCD_scl : inout STD_LOGIC;
    LCD_sda : inout STD_LOGIC;
    LD0 : out STD_LOGIC;
    RX : in STD_LOGIC;
    TX : out STD_LOGIC;
    disp_scl : inout STD_LOGIC;
    disp_sda : inout STD_LOGIC;
    ps2_clk : in STD_LOGIC;
    ps2_data : in STD_LOGIC
  );
end Block_Diagram_wrapper;

architecture STRUCTURE of Block_Diagram_wrapper is
  component Block_Diagram is
  port (
    GCLK : in STD_LOGIC;
    LD0 : out STD_LOGIC;
    TX : out STD_LOGIC;
    BTND : in STD_LOGIC;
    disp_scl : inout STD_LOGIC;
    disp_sda : inout STD_LOGIC;
    LCD_sda : inout STD_LOGIC;
    LCD_scl : inout STD_LOGIC;
    ps2_clk : in STD_LOGIC;
    ps2_data : in STD_LOGIC;
    RX : in STD_LOGIC
  );
  end component Block_Diagram;
begin
Block_Diagram_i: component Block_Diagram
     port map (
      BTND => BTND,
      GCLK => GCLK,
      LCD_scl => LCD_scl,
      LCD_sda => LCD_sda,
      LD0 => LD0,
      RX => RX,
      TX => TX,
      disp_scl => disp_scl,
      disp_sda => disp_sda,
      ps2_clk => ps2_clk,
      ps2_data => ps2_data
    );
end STRUCTURE;
