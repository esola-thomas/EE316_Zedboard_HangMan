--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
--Date        : Tue Mar 21 14:18:19 2023
--Host        : eniac-solathomas running 64-bit Red Hat Enterprise Linux release 8.7 (Ootpa)
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
    RX : in STD_LOGIC;
    TX : out STD_LOGIC;
    disp_scl : inout STD_LOGIC;
    disp_sda : inout STD_LOGIC;
    ps2_clk : in STD_LOGIC;
    ps2_data : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of Block_Diagram : entity is "Block_Diagram,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Block_Diagram,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=7,numReposBlks=7,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=6,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}";
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
  component Block_Diagram_I2C_user_logic_0_0 is
  port (
    clk : in STD_LOGIC;
    iData : in STD_LOGIC_VECTOR ( 3 downto 0 );
    iReset_n : in STD_LOGIC;
    sda : inout STD_LOGIC;
    scl : inout STD_LOGIC
  );
  end component Block_Diagram_I2C_user_logic_0_0;
  component Block_Diagram_blinky_0_1 is
  port (
    GCLK : in STD_LOGIC;
    LD0 : out STD_LOGIC
  );
  end component Block_Diagram_blinky_0_1;
  component Block_Diagram_TX_ps2_keyboard_logic_0_0 is
  port (
    clk : in STD_LOGIC;
    ps2_new : in STD_LOGIC;
    p2_code : in STD_LOGIC_VECTOR ( 7 downto 0 );
    reset_n : in STD_LOGIC;
    TX : out STD_LOGIC
  );
  end component Block_Diagram_TX_ps2_keyboard_logic_0_0;
  component Block_Diagram_ps2_keyboard_to_ascii_0_0 is
  port (
    clk : in STD_LOGIC;
    ps2_clk : in STD_LOGIC;
    ps2_data : in STD_LOGIC;
    ascii_new : out STD_LOGIC;
    ascii_code : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component Block_Diagram_ps2_keyboard_to_ascii_0_0;
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
  component Block_Diagram_RX_UART_Python_0_0 is
  port (
    clk : in STD_LOGIC;
    RX : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    LCD_1 : out STD_LOGIC_VECTOR ( 127 downto 0 );
    LCD_2 : out STD_LOGIC_VECTOR ( 127 downto 0 );
    LCD_USER_reset : out STD_LOGIC;
    o_segment : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component Block_Diagram_RX_UART_Python_0_0;
  signal BTND_1 : STD_LOGIC;
  signal GCLK_1 : STD_LOGIC;
  signal Net : STD_LOGIC;
  signal Net1 : STD_LOGIC;
  signal Net2 : STD_LOGIC;
  signal Net3 : STD_LOGIC;
  signal RX_1 : STD_LOGIC;
  signal RX_UART_Python_0_LCD_1 : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal RX_UART_Python_0_LCD_2 : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal RX_UART_Python_0_LCD_USER_reset : STD_LOGIC;
  signal RX_UART_Python_0_o_segment : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal TX_ps2_keyboard_logic_0_TX : STD_LOGIC;
  signal blinky_0_LD0 : STD_LOGIC;
  signal ps2_clk_1 : STD_LOGIC;
  signal ps2_data_1 : STD_LOGIC;
  signal ps2_keyboard_to_ascii_0_ascii_code : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ps2_keyboard_to_ascii_0_ascii_new : STD_LOGIC;
  signal util_vector_logic_0_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_lcd_user_0_lcd_blon_UNCONNECTED : STD_LOGIC;
  signal NLW_lcd_user_0_lcd_en_UNCONNECTED : STD_LOGIC;
  signal NLW_lcd_user_0_lcd_on_UNCONNECTED : STD_LOGIC;
  signal NLW_lcd_user_0_lcd_rs_UNCONNECTED : STD_LOGIC;
  signal NLW_lcd_user_0_lcd_rw_UNCONNECTED : STD_LOGIC;
  signal NLW_lcd_user_0_lcd_data_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ps2_clk : signal is "xilinx.com:signal:clock:1.0 CLK.PS2_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ps2_clk : signal is "XIL_INTERFACENAME CLK.PS2_CLK, CLK_DOMAIN Block_Diagram_ps2_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
begin
  BTND_1 <= BTND;
  GCLK_1 <= GCLK;
  LD0 <= blinky_0_LD0;
  RX_1 <= RX;
  TX <= TX_ps2_keyboard_logic_0_TX;
  ps2_clk_1 <= ps2_clk;
  ps2_data_1 <= ps2_data;
I2C_user_logic_0: component Block_Diagram_I2C_user_logic_0_0
     port map (
      clk => GCLK_1,
      iData(3 downto 0) => RX_UART_Python_0_o_segment(3 downto 0),
      iReset_n => util_vector_logic_0_Res(0),
      scl => disp_scl,
      sda => disp_sda
    );
RX_UART_Python_0: component Block_Diagram_RX_UART_Python_0_0
     port map (
      LCD_1(127 downto 0) => RX_UART_Python_0_LCD_1(127 downto 0),
      LCD_2(127 downto 0) => RX_UART_Python_0_LCD_2(127 downto 0),
      LCD_USER_reset => RX_UART_Python_0_LCD_USER_reset,
      RX => RX_1,
      clk => GCLK_1,
      o_segment(3 downto 0) => RX_UART_Python_0_o_segment(3 downto 0),
      reset_n => util_vector_logic_0_Res(0)
    );
TX_ps2_keyboard_logic_0: component Block_Diagram_TX_ps2_keyboard_logic_0_0
     port map (
      TX => TX_ps2_keyboard_logic_0_TX,
      clk => GCLK_1,
      p2_code(7 downto 0) => ps2_keyboard_to_ascii_0_ascii_code(7 downto 0),
      ps2_new => ps2_keyboard_to_ascii_0_ascii_new,
      reset_n => util_vector_logic_0_Res(0)
    );
blinky_0: component Block_Diagram_blinky_0_1
     port map (
      GCLK => GCLK_1,
      LD0 => blinky_0_LD0
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
      reset => RX_UART_Python_0_LCD_USER_reset,
      row1(127 downto 0) => RX_UART_Python_0_LCD_1(127 downto 0),
      row2(127 downto 0) => RX_UART_Python_0_LCD_2(127 downto 0)
    );
ps2_keyboard_to_ascii_0: component Block_Diagram_ps2_keyboard_to_ascii_0_0
     port map (
      ascii_code(7 downto 0) => ps2_keyboard_to_ascii_0_ascii_code(7 downto 0),
      ascii_new => ps2_keyboard_to_ascii_0_ascii_new,
      clk => GCLK_1,
      ps2_clk => ps2_clk_1,
      ps2_data => ps2_data_1
    );
util_vector_logic_0: component Block_Diagram_util_vector_logic_0_0
     port map (
      Op1(0) => BTND_1,
      Res(0) => util_vector_logic_0_Res(0)
    );
end STRUCTURE;
