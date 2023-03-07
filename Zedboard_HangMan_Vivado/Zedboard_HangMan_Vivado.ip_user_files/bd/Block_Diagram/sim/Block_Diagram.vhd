--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
--Date        : Mon Mar  6 21:53:03 2023
--Host        : Alienware running 64-bit major release  (build 9200)
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
    LD0 : out STD_LOGIC;
    RX : in STD_LOGIC;
    TX : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of Block_Diagram : entity is "Block_Diagram,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Block_Diagram,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of Block_Diagram : entity is "Block_Diagram.hwdef";
end Block_Diagram;

architecture STRUCTURE of Block_Diagram is
  component Block_Diagram_blinky_0_0 is
  port (
    GCLK : in STD_LOGIC;
    LD0 : out STD_LOGIC
  );
  end component Block_Diagram_blinky_0_0;
  component Block_Diagram_UART_RX_Master_0_0 is
  port (
    RX : in STD_LOGIC;
    clk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    RX_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    error : out STD_LOGIC
  );
  end component Block_Diagram_UART_RX_Master_0_0;
  component Block_Diagram_util_vector_logic_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component Block_Diagram_util_vector_logic_0_0;
  component Block_Diagram_UART_TX_user_logic_0_0 is
  port (
    clk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    tx_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sending : out STD_LOGIC;
    TX : out STD_LOGIC
  );
  end component Block_Diagram_UART_TX_user_logic_0_0;
  signal BTND_1 : STD_LOGIC;
  signal GCLK_1 : STD_LOGIC;
  signal Net : STD_LOGIC_VECTOR ( 0 to 0 );
  signal RX_1 : STD_LOGIC;
  signal UART_RX_Master_0_RX_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal UART_TX_user_logic_0_TX : STD_LOGIC;
  signal blinky_0_LD0 : STD_LOGIC;
  signal NLW_UART_RX_Master_0_error_UNCONNECTED : STD_LOGIC;
  signal NLW_UART_TX_user_logic_0_sending_UNCONNECTED : STD_LOGIC;
begin
  BTND_1 <= BTND;
  GCLK_1 <= GCLK;
  LD0 <= blinky_0_LD0;
  RX_1 <= RX;
  TX <= UART_TX_user_logic_0_TX;
UART_RX_Master_0: component Block_Diagram_UART_RX_Master_0_0
     port map (
      RX => RX_1,
      RX_data(7 downto 0) => UART_RX_Master_0_RX_data(7 downto 0),
      clk => GCLK_1,
      error => NLW_UART_RX_Master_0_error_UNCONNECTED,
      reset_n => Net(0)
    );
UART_TX_user_logic_0: component Block_Diagram_UART_TX_user_logic_0_0
     port map (
      TX => UART_TX_user_logic_0_TX,
      clk => GCLK_1,
      reset_n => Net(0),
      sending => NLW_UART_TX_user_logic_0_sending_UNCONNECTED,
      tx_data(7 downto 0) => UART_RX_Master_0_RX_data(7 downto 0)
    );
blinky_0: component Block_Diagram_blinky_0_0
     port map (
      GCLK => GCLK_1,
      LD0 => blinky_0_LD0
    );
util_vector_logic_0: component Block_Diagram_util_vector_logic_0_0
     port map (
      Op1(0) => BTND_1,
      Res(0) => Net(0)
    );
end STRUCTURE;
