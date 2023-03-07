-- (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:lcd_user:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Block_Diagram_lcd_user_0_0 IS
  PORT (
    reset : IN STD_LOGIC;
    clk : IN STD_LOGIC;
    row1 : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    row2 : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    lcd_data : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    lcd_rs : OUT STD_LOGIC;
    lcd_en : OUT STD_LOGIC;
    lcd_on : OUT STD_LOGIC;
    lcd_blon : OUT STD_LOGIC;
    lcd_rw : OUT STD_LOGIC;
    SDA : INOUT STD_LOGIC;
    SCL : INOUT STD_LOGIC
  );
END Block_Diagram_lcd_user_0_0;

ARCHITECTURE Block_Diagram_lcd_user_0_0_arch OF Block_Diagram_lcd_user_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF Block_Diagram_lcd_user_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT lcd_user IS
    GENERIC (
      input_clk : INTEGER
    );
    PORT (
      reset : IN STD_LOGIC;
      clk : IN STD_LOGIC;
      row1 : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
      row2 : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
      lcd_data : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      lcd_rs : OUT STD_LOGIC;
      lcd_en : OUT STD_LOGIC;
      lcd_on : OUT STD_LOGIC;
      lcd_blon : OUT STD_LOGIC;
      lcd_rw : OUT STD_LOGIC;
      SDA : INOUT STD_LOGIC;
      SCL : INOUT STD_LOGIC
    );
  END COMPONENT lcd_user;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF Block_Diagram_lcd_user_0_0_arch: ARCHITECTURE IS "lcd_user,Vivado 2022.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF Block_Diagram_lcd_user_0_0_arch : ARCHITECTURE IS "Block_Diagram_lcd_user_0_0,lcd_user,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF Block_Diagram_lcd_user_0_0_arch: ARCHITECTURE IS "Block_Diagram_lcd_user_0_0,lcd_user,{x_ipProduct=Vivado 2022.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=lcd_user,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=VHDL,input_clk=100000000}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF Block_Diagram_lcd_user_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF reset: SIGNAL IS "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF reset: SIGNAL IS "xilinx.com:signal:reset:1.0 reset RST";
BEGIN
  U0 : lcd_user
    GENERIC MAP (
      input_clk => 100000000
    )
    PORT MAP (
      reset => reset,
      clk => clk,
      row1 => row1,
      row2 => row2,
      lcd_data => lcd_data,
      lcd_rs => lcd_rs,
      lcd_en => lcd_en,
      lcd_on => lcd_on,
      lcd_blon => lcd_blon,
      lcd_rw => lcd_rw,
      SDA => SDA,
      SCL => SCL
    );
END Block_Diagram_lcd_user_0_0_arch;
