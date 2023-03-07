--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
--Date        : Tue Mar  7 15:55:21 2023
--Host        : CB195-UL-42 running 64-bit major release  (build 9200)
--Command     : generate_target Block_Diagram.bd
--Design      : Block_Diagram
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Block_Diagram is
  port (
    BTND : in STD_LOGIC;
    GCLK : in STD_LOGIC;
    LCD_scl : inout STD_LOGIC;
    LCD_sda : inout STD_LOGIC;
    LD0 : out STD_LOGIC;
    TX : out STD_LOGIC;
    disp_scl : inout STD_LOGIC;
    disp_sda : inout STD_LOGIC;
    ps2_clk : in STD_LOGIC;
    ps2_data : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of Block_Diagram : entity is "Block_Diagram,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Block_Diagram,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=6,numReposBlks=6,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=5,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of Block_Diagram : entity is "Block_Diagram.hwdef";
end Block_Diagram;

architecture STRUCTURE of Block_Diagram is
  component Block_Diagram_util_vector_logic_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component Block_Diagram_util_vector_logic_0_0;
  component Block_Diagram_TX_Hello_UART_0_0 is
  port (
    clk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    TX : out STD_LOGIC
  );
  end component Block_Diagram_TX_Hello_UART_0_0;
  component Block_Diagram_lcd_user_0_0 is
  port (
    reset : in STD_LOGIC;
    clk : in STD_LOGIC;
    row1 : in STD_LOGIC_VECTOR ( 127 downto 0 );
    row2 : in STD_LOGIC_VECTOR ( 127 downto 0 );
    lcd_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    lcd_rs : out STD_LOGIC;
    lcd_en : out STD_LOGIC;
    lcd_on : out STD_LOGIC;
    lcd_blon : out STD_LOGIC;
    lcd_rw : out STD_LOGIC;
    SDA : inout STD_LOGIC;
    SCL : inout STD_LOGIC
  );
  end component Block_Diagram_lcd_user_0_0;
  component Block_Diagram_I2C_user_logic_0_0 is
  port (
    clk : in STD_LOGIC;
    iData : in STD_LOGIC_VECTOR ( 3 downto 0 );
    iReset_n : in STD_LOGIC;
    sda : inout STD_LOGIC;
    scl : inout STD_LOGIC
  );
  end component Block_Diagram_I2C_user_logic_0_0;
  component Block_Diagram_ps2_keyboard_0_0 is
  port (
    clk : in STD_LOGIC;
    ps2_clk : in STD_LOGIC;
    ps2_data : in STD_LOGIC;
    ps2_code_new : out STD_LOGIC;
    ps2_code : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component Block_Diagram_ps2_keyboard_0_0;
  component Block_Diagram_blinky_0_1 is
  port (
    GCLK : in STD_LOGIC;
    LD0 : out STD_LOGIC;
    LCD1 : out STD_LOGIC_VECTOR ( 127 downto 0 );
    LCD2 : out STD_LOGIC_VECTOR ( 127 downto 0 );
    disp : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component Block_Diagram_blinky_0_1;
  signal BTND_1 : STD_LOGIC;
  signal GCLK_1 : STD_LOGIC;
  signal Net : STD_LOGIC;
  signal Net1 : STD_LOGIC;
  signal Net2 : STD_LOGIC;
  signal Net3 : STD_LOGIC;
  signal TX_Hello_UART_0_TX : STD_LOGIC;
  signal blinky_0_LCD1 : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal blinky_0_LCD2 : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal blinky_0_LD0 : STD_LOGIC;
  signal blinky_0_disp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps2_clk_1 : STD_LOGIC;
  signal ps2_data_1 : STD_LOGIC;
  signal util_vector_logic_0_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_lcd_user_0_lcd_blon_UNCONNECTED : STD_LOGIC;
  signal NLW_lcd_user_0_lcd_en_UNCONNECTED : STD_LOGIC;
  signal NLW_lcd_user_0_lcd_on_UNCONNECTED : STD_LOGIC;
  signal NLW_lcd_user_0_lcd_rs_UNCONNECTED : STD_LOGIC;
  signal NLW_lcd_user_0_lcd_rw_UNCONNECTED : STD_LOGIC;
  signal NLW_lcd_user_0_lcd_data_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_ps2_keyboard_0_ps2_code_new_UNCONNECTED : STD_LOGIC;
  signal NLW_ps2_keyboard_0_ps2_code_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of ps2_clk : signal is "xilinx.com:signal:clock:1.0 CLK.PS2_CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of ps2_clk : signal is "XIL_INTERFACENAME CLK.PS2_CLK, CLK_DOMAIN Block_Diagram_ps2_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
begin
  BTND_1 <= BTND;
  GCLK_1 <= GCLK;
  LD0 <= blinky_0_LD0;
  TX <= TX_Hello_UART_0_TX;
  ps2_clk_1 <= ps2_clk;
  ps2_data_1 <= ps2_data;
I2C_user_logic_0: component Block_Diagram_I2C_user_logic_0_0
     port map (
      clk => GCLK_1,
      iData(3 downto 0) => blinky_0_disp(3 downto 0),
      iReset_n => util_vector_logic_0_Res(0),
      scl => disp_scl,
      sda => disp_sda
    );
TX_Hello_UART_0: component Block_Diagram_TX_Hello_UART_0_0
     port map (
      TX => TX_Hello_UART_0_TX,
      clk => GCLK_1,
      reset_n => util_vector_logic_0_Res(0)
    );
blinky_0: component Block_Diagram_blinky_0_1
     port map (
      GCLK => GCLK_1,
      LCD1(127 downto 0) => blinky_0_LCD1(127 downto 0),
      LCD2(127 downto 0) => blinky_0_LCD2(127 downto 0),
      LD0 => blinky_0_LD0,
      disp(3 downto 0) => blinky_0_disp(3 downto 0)
    );
lcd_user_0: component Block_Diagram_lcd_user_0_0
     port map (
      SCL => LCD_scl,
      SDA => LCD_sda,
      clk => GCLK_1,
      lcd_blon => NLW_lcd_user_0_lcd_blon_UNCONNECTED,
      lcd_data(7 downto 0) => NLW_lcd_user_0_lcd_data_UNCONNECTED(7 downto 0),
      lcd_en => NLW_lcd_user_0_lcd_en_UNCONNECTED,
      lcd_on => NLW_lcd_user_0_lcd_on_UNCONNECTED,
      lcd_rs => NLW_lcd_user_0_lcd_rs_UNCONNECTED,
      lcd_rw => NLW_lcd_user_0_lcd_rw_UNCONNECTED,
      reset => util_vector_logic_0_Res(0),
      row1(127 downto 0) => blinky_0_LCD1(127 downto 0),
      row2(127 downto 0) => blinky_0_LCD2(127 downto 0)
    );
ps2_keyboard_0: component Block_Diagram_ps2_keyboard_0_0
     port map (
      clk => GCLK_1,
      ps2_clk => ps2_clk_1,
      ps2_code(7 downto 0) => NLW_ps2_keyboard_0_ps2_code_UNCONNECTED(7 downto 0),
      ps2_code_new => NLW_ps2_keyboard_0_ps2_code_new_UNCONNECTED,
      ps2_data => ps2_data_1
    );
util_vector_logic_0: component Block_Diagram_util_vector_logic_0_0
     port map (
      Op1(0) => BTND_1,
      Res(0) => util_vector_logic_0_Res(0)
    );
end STRUCTURE;
