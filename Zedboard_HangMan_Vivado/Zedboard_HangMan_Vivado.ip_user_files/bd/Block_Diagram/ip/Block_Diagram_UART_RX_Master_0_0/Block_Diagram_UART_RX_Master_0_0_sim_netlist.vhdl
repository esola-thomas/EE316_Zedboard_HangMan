-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Mon Mar  6 17:22:13 2023
-- Host        : Alienware running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/My_Repos/EE316_Zedboard_HangMan/Zedboard_HangMan_Vivado/Zedboard_HangMan_Vivado.gen/sources_1/bd/Block_Diagram/ip/Block_Diagram_UART_RX_Master_0_0/Block_Diagram_UART_RX_Master_0_0_sim_netlist.vhdl
-- Design      : Block_Diagram_UART_RX_Master_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Block_Diagram_UART_RX_Master_0_0_UART_RX_Master is
  port (
    RX_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    error : out STD_LOGIC;
    RX : in STD_LOGIC;
    clk : in STD_LOGIC;
    reset_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Block_Diagram_UART_RX_Master_0_0_UART_RX_Master : entity is "UART_RX_Master";
end Block_Diagram_UART_RX_Master_0_0_UART_RX_Master;

architecture STRUCTURE of Block_Diagram_UART_RX_Master_0_0_UART_RX_Master is
  signal FSM_sequential_start_state_i_1_n_0 : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_13_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_14_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_15_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_9_n_0\ : STD_LOGIC;
  signal \RX_data[7]_i_1_n_0\ : STD_LOGIC;
  signal count : STD_LOGIC;
  signal \count0_carry__0_n_0\ : STD_LOGIC;
  signal \count0_carry__0_n_1\ : STD_LOGIC;
  signal \count0_carry__0_n_2\ : STD_LOGIC;
  signal \count0_carry__0_n_3\ : STD_LOGIC;
  signal \count0_carry__0_n_4\ : STD_LOGIC;
  signal \count0_carry__0_n_5\ : STD_LOGIC;
  signal \count0_carry__0_n_6\ : STD_LOGIC;
  signal \count0_carry__0_n_7\ : STD_LOGIC;
  signal \count0_carry__1_n_0\ : STD_LOGIC;
  signal \count0_carry__1_n_1\ : STD_LOGIC;
  signal \count0_carry__1_n_2\ : STD_LOGIC;
  signal \count0_carry__1_n_3\ : STD_LOGIC;
  signal \count0_carry__1_n_4\ : STD_LOGIC;
  signal \count0_carry__1_n_5\ : STD_LOGIC;
  signal \count0_carry__1_n_6\ : STD_LOGIC;
  signal \count0_carry__1_n_7\ : STD_LOGIC;
  signal \count0_carry__2_n_0\ : STD_LOGIC;
  signal \count0_carry__2_n_1\ : STD_LOGIC;
  signal \count0_carry__2_n_2\ : STD_LOGIC;
  signal \count0_carry__2_n_3\ : STD_LOGIC;
  signal \count0_carry__2_n_4\ : STD_LOGIC;
  signal \count0_carry__2_n_5\ : STD_LOGIC;
  signal \count0_carry__2_n_6\ : STD_LOGIC;
  signal \count0_carry__2_n_7\ : STD_LOGIC;
  signal \count0_carry__3_n_0\ : STD_LOGIC;
  signal \count0_carry__3_n_1\ : STD_LOGIC;
  signal \count0_carry__3_n_2\ : STD_LOGIC;
  signal \count0_carry__3_n_3\ : STD_LOGIC;
  signal \count0_carry__3_n_4\ : STD_LOGIC;
  signal \count0_carry__3_n_5\ : STD_LOGIC;
  signal \count0_carry__3_n_6\ : STD_LOGIC;
  signal \count0_carry__3_n_7\ : STD_LOGIC;
  signal \count0_carry__4_n_0\ : STD_LOGIC;
  signal \count0_carry__4_n_1\ : STD_LOGIC;
  signal \count0_carry__4_n_2\ : STD_LOGIC;
  signal \count0_carry__4_n_3\ : STD_LOGIC;
  signal \count0_carry__4_n_4\ : STD_LOGIC;
  signal \count0_carry__4_n_5\ : STD_LOGIC;
  signal \count0_carry__4_n_6\ : STD_LOGIC;
  signal \count0_carry__4_n_7\ : STD_LOGIC;
  signal \count0_carry__5_n_0\ : STD_LOGIC;
  signal \count0_carry__5_n_1\ : STD_LOGIC;
  signal \count0_carry__5_n_2\ : STD_LOGIC;
  signal \count0_carry__5_n_3\ : STD_LOGIC;
  signal \count0_carry__5_n_4\ : STD_LOGIC;
  signal \count0_carry__5_n_5\ : STD_LOGIC;
  signal \count0_carry__5_n_6\ : STD_LOGIC;
  signal \count0_carry__5_n_7\ : STD_LOGIC;
  signal \count0_carry__6_n_2\ : STD_LOGIC;
  signal \count0_carry__6_n_3\ : STD_LOGIC;
  signal \count0_carry__6_n_5\ : STD_LOGIC;
  signal \count0_carry__6_n_6\ : STD_LOGIC;
  signal \count0_carry__6_n_7\ : STD_LOGIC;
  signal count0_carry_n_0 : STD_LOGIC;
  signal count0_carry_n_1 : STD_LOGIC;
  signal count0_carry_n_2 : STD_LOGIC;
  signal count0_carry_n_3 : STD_LOGIC;
  signal count0_carry_n_4 : STD_LOGIC;
  signal count0_carry_n_5 : STD_LOGIC;
  signal count0_carry_n_6 : STD_LOGIC;
  signal count0_carry_n_7 : STD_LOGIC;
  signal \count[0]_i_1_n_0\ : STD_LOGIC;
  signal \count[10]_i_1_n_0\ : STD_LOGIC;
  signal \count[11]_i_1_n_0\ : STD_LOGIC;
  signal \count[12]_i_1_n_0\ : STD_LOGIC;
  signal \count[13]_i_1_n_0\ : STD_LOGIC;
  signal \count[13]_i_2_n_0\ : STD_LOGIC;
  signal \count[14]_i_1_n_0\ : STD_LOGIC;
  signal \count[15]_i_1_n_0\ : STD_LOGIC;
  signal \count[16]_i_1_n_0\ : STD_LOGIC;
  signal \count[17]_i_1_n_0\ : STD_LOGIC;
  signal \count[18]_i_1_n_0\ : STD_LOGIC;
  signal \count[19]_i_1_n_0\ : STD_LOGIC;
  signal \count[1]_i_1_n_0\ : STD_LOGIC;
  signal \count[20]_i_1_n_0\ : STD_LOGIC;
  signal \count[21]_i_1_n_0\ : STD_LOGIC;
  signal \count[22]_i_1_n_0\ : STD_LOGIC;
  signal \count[23]_i_1_n_0\ : STD_LOGIC;
  signal \count[24]_i_1_n_0\ : STD_LOGIC;
  signal \count[25]_i_1_n_0\ : STD_LOGIC;
  signal \count[26]_i_1_n_0\ : STD_LOGIC;
  signal \count[27]_i_1_n_0\ : STD_LOGIC;
  signal \count[28]_i_1_n_0\ : STD_LOGIC;
  signal \count[29]_i_1_n_0\ : STD_LOGIC;
  signal \count[2]_i_1_n_0\ : STD_LOGIC;
  signal \count[30]_i_1_n_0\ : STD_LOGIC;
  signal \count[31]_i_2_n_0\ : STD_LOGIC;
  signal \count[31]_i_3_n_0\ : STD_LOGIC;
  signal \count[3]_i_1_n_0\ : STD_LOGIC;
  signal \count[4]_i_1_n_0\ : STD_LOGIC;
  signal \count[5]_i_1_n_0\ : STD_LOGIC;
  signal \count[6]_i_1_n_0\ : STD_LOGIC;
  signal \count[7]_i_1_n_0\ : STD_LOGIC;
  signal \count[8]_i_1_n_0\ : STD_LOGIC;
  signal \count[9]_i_1_n_0\ : STD_LOGIC;
  signal data_bit : STD_LOGIC;
  signal \data_bit[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_bit[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_bit[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_bit_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_bit_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_bit_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \start_state1_carry__0_n_0\ : STD_LOGIC;
  signal \start_state1_carry__0_n_1\ : STD_LOGIC;
  signal \start_state1_carry__0_n_2\ : STD_LOGIC;
  signal \start_state1_carry__0_n_3\ : STD_LOGIC;
  signal \start_state1_carry__1_n_0\ : STD_LOGIC;
  signal \start_state1_carry__1_n_1\ : STD_LOGIC;
  signal \start_state1_carry__1_n_2\ : STD_LOGIC;
  signal \start_state1_carry__1_n_3\ : STD_LOGIC;
  signal \start_state1_carry__2_n_1\ : STD_LOGIC;
  signal \start_state1_carry__2_n_2\ : STD_LOGIC;
  signal \start_state1_carry__2_n_3\ : STD_LOGIC;
  signal \start_state1_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \start_state1_carry_i_1__1_n_0\ : STD_LOGIC;
  signal \start_state1_carry_i_1__2_n_0\ : STD_LOGIC;
  signal start_state1_carry_i_1_n_0 : STD_LOGIC;
  signal \start_state1_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \start_state1_carry_i_2__1_n_0\ : STD_LOGIC;
  signal \start_state1_carry_i_2__2_n_0\ : STD_LOGIC;
  signal start_state1_carry_i_2_n_0 : STD_LOGIC;
  signal \start_state1_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \start_state1_carry_i_3__1_n_0\ : STD_LOGIC;
  signal \start_state1_carry_i_3__2_n_0\ : STD_LOGIC;
  signal start_state1_carry_i_3_n_0 : STD_LOGIC;
  signal \start_state1_carry_i_4__0_n_0\ : STD_LOGIC;
  signal \start_state1_carry_i_4__1_n_0\ : STD_LOGIC;
  signal start_state1_carry_i_4_n_0 : STD_LOGIC;
  signal \start_state1_carry_i_5__0_n_0\ : STD_LOGIC;
  signal start_state1_carry_i_5_n_0 : STD_LOGIC;
  signal \start_state1_carry_i_6__0_n_0\ : STD_LOGIC;
  signal start_state1_carry_i_6_n_0 : STD_LOGIC;
  signal start_state1_carry_i_7_n_0 : STD_LOGIC;
  signal start_state1_carry_n_0 : STD_LOGIC;
  signal start_state1_carry_n_1 : STD_LOGIC;
  signal start_state1_carry_n_2 : STD_LOGIC;
  signal start_state1_carry_n_3 : STD_LOGIC;
  signal start_state_reg : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \state1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \state1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \state1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \state1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \state1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \state1_carry__0_n_0\ : STD_LOGIC;
  signal \state1_carry__0_n_1\ : STD_LOGIC;
  signal \state1_carry__0_n_2\ : STD_LOGIC;
  signal \state1_carry__0_n_3\ : STD_LOGIC;
  signal \state1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \state1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \state1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \state1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \state1_carry__1_n_0\ : STD_LOGIC;
  signal \state1_carry__1_n_1\ : STD_LOGIC;
  signal \state1_carry__1_n_2\ : STD_LOGIC;
  signal \state1_carry__1_n_3\ : STD_LOGIC;
  signal \state1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \state1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \state1_carry__2_n_2\ : STD_LOGIC;
  signal \state1_carry__2_n_3\ : STD_LOGIC;
  signal state1_carry_i_1_n_0 : STD_LOGIC;
  signal state1_carry_i_2_n_0 : STD_LOGIC;
  signal state1_carry_i_3_n_0 : STD_LOGIC;
  signal state1_carry_i_4_n_0 : STD_LOGIC;
  signal state1_carry_i_5_n_0 : STD_LOGIC;
  signal state1_carry_i_6_n_0 : STD_LOGIC;
  signal state1_carry_i_7_n_0 : STD_LOGIC;
  signal state1_carry_n_0 : STD_LOGIC;
  signal state1_carry_n_1 : STD_LOGIC;
  signal state1_carry_n_2 : STD_LOGIC;
  signal state1_carry_n_3 : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \state__1\ : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \NLW_count0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_count0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_start_state1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_start_state1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_start_state1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_start_state1_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_start_state1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_state1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state1_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_state1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of FSM_sequential_start_state_reg : label is "start_rising:010,get_data:100,start_trigger_confirmed:1,start_trigger:0,start_rising_confirmed:011";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_12\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_3\ : label is "soft_lutpair3";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "start:001,stop:011,read_data:010,error_state:100,idle:000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "start:001,stop:011,read_data:010,error_state:100,idle:000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "start:001,stop:011,read_data:010,error_state:100,idle:000";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of count0_carry : label is 35;
  attribute ADDER_THRESHOLD of \count0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \count0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \count0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \count0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \count0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \count0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \count0_carry__6\ : label is 35;
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count[10]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \count[12]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \count[14]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \count[15]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \count[16]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \count[17]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \count[18]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \count[19]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \count[20]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \count[21]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \count[22]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \count[23]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \count[24]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \count[25]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \count[26]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \count[27]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \count[28]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \count[29]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \count[30]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \count[31]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \count[3]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \count[6]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \count[8]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \count[9]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \data_bit[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_bit[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_bit[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_bit[2]_i_2\ : label is "soft_lutpair1";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of start_state1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \start_state1_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \start_state1_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \start_state1_carry__2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of state1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \state1_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \state1_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \state1_carry__2\ : label is 11;
begin
FSM_sequential_start_state_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB00FB00FB00FB44"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \FSM_sequential_state[1]_i_3_n_0\,
      I2 => \state1_carry__2_n_2\,
      I3 => start_state_reg(0),
      I4 => \start_state1_carry__2_n_1\,
      I5 => RX,
      O => FSM_sequential_start_state_i_1_n_0
    );
FSM_sequential_start_state_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => FSM_sequential_start_state_i_1_n_0,
      Q => start_state_reg(0),
      R => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"110010EE"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_4_n_0\,
      I1 => \FSM_sequential_state[2]_i_5_n_0\,
      I2 => \FSM_sequential_state[2]_i_6_n_0\,
      I3 => \state__0\(0),
      I4 => \state__0\(2),
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABAAABABA8AAA8A8"
    )
        port map (
      I0 => \state__1\(1),
      I1 => \FSM_sequential_state[2]_i_4_n_0\,
      I2 => \FSM_sequential_state[2]_i_5_n_0\,
      I3 => \FSM_sequential_state[2]_i_6_n_0\,
      I4 => \FSM_sequential_state[1]_i_3_n_0\,
      I5 => \state__0\(1),
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"004A"
    )
        port map (
      I0 => \state__0\(1),
      I1 => start_state_reg(0),
      I2 => \state__0\(0),
      I3 => \state__0\(2),
      O => \state__1\(1)
    );
\FSM_sequential_state[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(2),
      O => \FSM_sequential_state[1]_i_3_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_n,
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => sel0(10),
      I1 => sel0(11),
      I2 => sel0(6),
      I3 => sel0(7),
      I4 => \FSM_sequential_state[2]_i_14_n_0\,
      O => \FSM_sequential_state[2]_i_10_n_0\
    );
\FSM_sequential_state[2]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFB"
    )
        port map (
      I0 => sel0(19),
      I1 => sel0(20),
      I2 => sel0(9),
      I3 => sel0(17),
      I4 => \FSM_sequential_state[2]_i_15_n_0\,
      O => \FSM_sequential_state[2]_i_11_n_0\
    );
\FSM_sequential_state[2]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      I2 => sel0(3),
      I3 => sel0(2),
      O => \FSM_sequential_state[2]_i_12_n_0\
    );
\FSM_sequential_state[2]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDFFFFFF"
    )
        port map (
      I0 => \state__0\(1),
      I1 => sel0(30),
      I2 => sel0(31),
      I3 => sel0(14),
      I4 => sel0(8),
      O => \FSM_sequential_state[2]_i_13_n_0\
    );
\FSM_sequential_state[2]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => sel0(13),
      I1 => sel0(12),
      I2 => sel0(29),
      I3 => sel0(28),
      O => \FSM_sequential_state[2]_i_14_n_0\
    );
\FSM_sequential_state[2]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sel0(27),
      I1 => sel0(25),
      I2 => sel0(5),
      I3 => sel0(4),
      O => \FSM_sequential_state[2]_i_15_n_0\
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABABABA8AAA8A8"
    )
        port map (
      I0 => \state__1\(2),
      I1 => \FSM_sequential_state[2]_i_4_n_0\,
      I2 => \FSM_sequential_state[2]_i_5_n_0\,
      I3 => \FSM_sequential_state[2]_i_6_n_0\,
      I4 => \state__0\(0),
      I5 => \state__0\(2),
      O => \FSM_sequential_state[2]_i_2_n_0\
    );
\FSM_sequential_state[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => RX,
      I1 => \state__0\(0),
      I2 => \state__0\(2),
      I3 => \state__0\(1),
      O => \state__1\(2)
    );
\FSM_sequential_state[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00F000704F"
    )
        port map (
      I0 => \state1_carry__2_n_2\,
      I1 => start_state_reg(0),
      I2 => \state__0\(0),
      I3 => RX,
      I4 => \state__0\(1),
      I5 => \state__0\(2),
      O => \FSM_sequential_state[2]_i_4_n_0\
    );
\FSM_sequential_state[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000C0D0001"
    )
        port map (
      I0 => \state__0\(0),
      I1 => RX,
      I2 => \state1_carry__2_n_2\,
      I3 => \state__0\(2),
      I4 => \state__0\(1),
      I5 => \FSM_sequential_state[2]_i_7_n_0\,
      O => \FSM_sequential_state[2]_i_5_n_0\
    );
\FSM_sequential_state[2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_8_n_0\,
      I1 => \FSM_sequential_state[2]_i_9_n_0\,
      I2 => \FSM_sequential_state[2]_i_10_n_0\,
      I3 => \FSM_sequential_state[2]_i_11_n_0\,
      O => \FSM_sequential_state[2]_i_6_n_0\
    );
\FSM_sequential_state[2]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \data_bit_reg_n_0_[1]\,
      I1 => \data_bit_reg_n_0_[0]\,
      I2 => \data_bit_reg_n_0_[2]\,
      O => \FSM_sequential_state[2]_i_7_n_0\
    );
\FSM_sequential_state[2]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => sel0(24),
      I1 => sel0(26),
      I2 => sel0(22),
      I3 => sel0(23),
      I4 => \FSM_sequential_state[2]_i_12_n_0\,
      O => \FSM_sequential_state[2]_i_8_n_0\
    );
\FSM_sequential_state[2]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFFFFF"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_13_n_0\,
      I1 => sel0(18),
      I2 => sel0(21),
      I3 => sel0(15),
      I4 => sel0(16),
      O => \FSM_sequential_state[2]_i_9_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => \state__0\(0),
      R => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => \state__0\(1),
      R => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[2]_i_2_n_0\,
      Q => \state__0\(2),
      R => \FSM_sequential_state[2]_i_1_n_0\
    );
\RX_data[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => reset_n,
      I2 => RX,
      I3 => \state__0\(2),
      I4 => \state__0\(0),
      O => \RX_data[7]_i_1_n_0\
    );
\RX_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \RX_data[7]_i_1_n_0\,
      D => \data_reg_reg_n_0_[0]\,
      Q => RX_data(0),
      R => '0'
    );
\RX_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \RX_data[7]_i_1_n_0\,
      D => \data_reg_reg_n_0_[1]\,
      Q => RX_data(1),
      R => '0'
    );
\RX_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \RX_data[7]_i_1_n_0\,
      D => \data_reg_reg_n_0_[2]\,
      Q => RX_data(2),
      R => '0'
    );
\RX_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \RX_data[7]_i_1_n_0\,
      D => \data_reg_reg_n_0_[3]\,
      Q => RX_data(3),
      R => '0'
    );
\RX_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \RX_data[7]_i_1_n_0\,
      D => \data_reg_reg_n_0_[4]\,
      Q => RX_data(4),
      R => '0'
    );
\RX_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \RX_data[7]_i_1_n_0\,
      D => \data_reg_reg_n_0_[5]\,
      Q => RX_data(5),
      R => '0'
    );
\RX_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \RX_data[7]_i_1_n_0\,
      D => \data_reg_reg_n_0_[6]\,
      Q => RX_data(6),
      R => '0'
    );
\RX_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \RX_data[7]_i_1_n_0\,
      D => \data_reg_reg_n_0_[7]\,
      Q => RX_data(7),
      R => '0'
    );
count0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => count0_carry_n_0,
      CO(2) => count0_carry_n_1,
      CO(1) => count0_carry_n_2,
      CO(0) => count0_carry_n_3,
      CYINIT => sel0(0),
      DI(3 downto 0) => B"0000",
      O(3) => count0_carry_n_4,
      O(2) => count0_carry_n_5,
      O(1) => count0_carry_n_6,
      O(0) => count0_carry_n_7,
      S(3 downto 0) => sel0(4 downto 1)
    );
\count0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => count0_carry_n_0,
      CO(3) => \count0_carry__0_n_0\,
      CO(2) => \count0_carry__0_n_1\,
      CO(1) => \count0_carry__0_n_2\,
      CO(0) => \count0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count0_carry__0_n_4\,
      O(2) => \count0_carry__0_n_5\,
      O(1) => \count0_carry__0_n_6\,
      O(0) => \count0_carry__0_n_7\,
      S(3 downto 0) => sel0(8 downto 5)
    );
\count0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__0_n_0\,
      CO(3) => \count0_carry__1_n_0\,
      CO(2) => \count0_carry__1_n_1\,
      CO(1) => \count0_carry__1_n_2\,
      CO(0) => \count0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count0_carry__1_n_4\,
      O(2) => \count0_carry__1_n_5\,
      O(1) => \count0_carry__1_n_6\,
      O(0) => \count0_carry__1_n_7\,
      S(3 downto 0) => sel0(12 downto 9)
    );
\count0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__1_n_0\,
      CO(3) => \count0_carry__2_n_0\,
      CO(2) => \count0_carry__2_n_1\,
      CO(1) => \count0_carry__2_n_2\,
      CO(0) => \count0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count0_carry__2_n_4\,
      O(2) => \count0_carry__2_n_5\,
      O(1) => \count0_carry__2_n_6\,
      O(0) => \count0_carry__2_n_7\,
      S(3 downto 0) => sel0(16 downto 13)
    );
\count0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__2_n_0\,
      CO(3) => \count0_carry__3_n_0\,
      CO(2) => \count0_carry__3_n_1\,
      CO(1) => \count0_carry__3_n_2\,
      CO(0) => \count0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count0_carry__3_n_4\,
      O(2) => \count0_carry__3_n_5\,
      O(1) => \count0_carry__3_n_6\,
      O(0) => \count0_carry__3_n_7\,
      S(3 downto 0) => sel0(20 downto 17)
    );
\count0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__3_n_0\,
      CO(3) => \count0_carry__4_n_0\,
      CO(2) => \count0_carry__4_n_1\,
      CO(1) => \count0_carry__4_n_2\,
      CO(0) => \count0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count0_carry__4_n_4\,
      O(2) => \count0_carry__4_n_5\,
      O(1) => \count0_carry__4_n_6\,
      O(0) => \count0_carry__4_n_7\,
      S(3 downto 0) => sel0(24 downto 21)
    );
\count0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__4_n_0\,
      CO(3) => \count0_carry__5_n_0\,
      CO(2) => \count0_carry__5_n_1\,
      CO(1) => \count0_carry__5_n_2\,
      CO(0) => \count0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count0_carry__5_n_4\,
      O(2) => \count0_carry__5_n_5\,
      O(1) => \count0_carry__5_n_6\,
      O(0) => \count0_carry__5_n_7\,
      S(3 downto 0) => sel0(28 downto 25)
    );
\count0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_count0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \count0_carry__6_n_2\,
      CO(0) => \count0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_count0_carry__6_O_UNCONNECTED\(3),
      O(2) => \count0_carry__6_n_5\,
      O(1) => \count0_carry__6_n_6\,
      O(0) => \count0_carry__6_n_7\,
      S(3) => '0',
      S(2 downto 0) => sel0(31 downto 29)
    );
\count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \count[31]_i_3_n_0\,
      I1 => sel0(0),
      O => \count[0]_i_1_n_0\
    );
\count[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count[31]_i_3_n_0\,
      I1 => \count0_carry__1_n_6\,
      O => \count[10]_i_1_n_0\
    );
\count[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888F88"
    )
        port map (
      I0 => \count0_carry__1_n_5\,
      I1 => \count[13]_i_2_n_0\,
      I2 => \state__0\(1),
      I3 => start_state_reg(0),
      I4 => \state1_carry__2_n_2\,
      O => \count[11]_i_1_n_0\
    );
\count[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count[31]_i_3_n_0\,
      I1 => \count0_carry__1_n_4\,
      O => \count[12]_i_1_n_0\
    );
\count[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888F88"
    )
        port map (
      I0 => \count0_carry__2_n_7\,
      I1 => \count[13]_i_2_n_0\,
      I2 => \state__0\(1),
      I3 => start_state_reg(0),
      I4 => \state1_carry__2_n_2\,
      O => \count[13]_i_1_n_0\
    );
\count[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E0EFE0EFEFEFE0E"
    )
        port map (
      I0 => \start_state1_carry__2_n_1\,
      I1 => start_state_reg(0),
      I2 => \state__0\(1),
      I3 => \state1_carry__2_n_2\,
      I4 => \state__0\(0),
      I5 => RX,
      O => \count[13]_i_2_n_0\
    );
\count[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count[31]_i_3_n_0\,
      I1 => \count0_carry__2_n_6\,
      O => \count[14]_i_1_n_0\
    );
\count[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count[31]_i_3_n_0\,
      I1 => \count0_carry__2_n_5\,
      O => \count[15]_i_1_n_0\
    );
\count[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count[31]_i_3_n_0\,
      I1 => \count0_carry__2_n_4\,
      O => \count[16]_i_1_n_0\
    );
\count[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count[31]_i_3_n_0\,
      I1 => \count0_carry__3_n_7\,
      O => \count[17]_i_1_n_0\
    );
\count[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count[31]_i_3_n_0\,
      I1 => \count0_carry__3_n_6\,
      O => \count[18]_i_1_n_0\
    );
\count[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count[31]_i_3_n_0\,
      I1 => \count0_carry__3_n_5\,
      O => \count[19]_i_1_n_0\
    );
\count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count[31]_i_3_n_0\,
      I1 => count0_carry_n_7,
      O => \count[1]_i_1_n_0\
    );
\count[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count[31]_i_3_n_0\,
      I1 => \count0_carry__3_n_4\,
      O => \count[20]_i_1_n_0\
    );
\count[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count[31]_i_3_n_0\,
      I1 => \count0_carry__4_n_7\,
      O => \count[21]_i_1_n_0\
    );
\count[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count[31]_i_3_n_0\,
      I1 => \count0_carry__4_n_6\,
      O => \count[22]_i_1_n_0\
    );
\count[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count[31]_i_3_n_0\,
      I1 => \count0_carry__4_n_5\,
      O => \count[23]_i_1_n_0\
    );
\count[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count[31]_i_3_n_0\,
      I1 => \count0_carry__4_n_4\,
      O => \count[24]_i_1_n_0\
    );
\count[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count[31]_i_3_n_0\,
      I1 => \count0_carry__5_n_7\,
      O => \count[25]_i_1_n_0\
    );
\count[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count[31]_i_3_n_0\,
      I1 => \count0_carry__5_n_6\,
      O => \count[26]_i_1_n_0\
    );
\count[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count[31]_i_3_n_0\,
      I1 => \count0_carry__5_n_5\,
      O => \count[27]_i_1_n_0\
    );
\count[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count[31]_i_3_n_0\,
      I1 => \count0_carry__5_n_4\,
      O => \count[28]_i_1_n_0\
    );
\count[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count[31]_i_3_n_0\,
      I1 => \count0_carry__6_n_7\,
      O => \count[29]_i_1_n_0\
    );
\count[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count[31]_i_3_n_0\,
      I1 => count0_carry_n_6,
      O => \count[2]_i_1_n_0\
    );
\count[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count[31]_i_3_n_0\,
      I1 => \count0_carry__6_n_6\,
      O => \count[30]_i_1_n_0\
    );
\count[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FC00B800F000B8"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_6_n_0\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \state__0\(2),
      I4 => RX,
      I5 => start_state_reg(0),
      O => count
    );
\count[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count[31]_i_3_n_0\,
      I1 => \count0_carry__6_n_5\,
      O => \count[31]_i_2_n_0\
    );
\count[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F7F7F7040404F40"
    )
        port map (
      I0 => RX,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \start_state1_carry__2_n_1\,
      I4 => start_state_reg(0),
      I5 => \state1_carry__2_n_2\,
      O => \count[31]_i_3_n_0\
    );
\count[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count[31]_i_3_n_0\,
      I1 => count0_carry_n_5,
      O => \count[3]_i_1_n_0\
    );
\count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888F88"
    )
        port map (
      I0 => count0_carry_n_4,
      I1 => \count[13]_i_2_n_0\,
      I2 => \state__0\(1),
      I3 => start_state_reg(0),
      I4 => \state1_carry__2_n_2\,
      O => \count[4]_i_1_n_0\
    );
\count[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888F88"
    )
        port map (
      I0 => \count0_carry__0_n_7\,
      I1 => \count[13]_i_2_n_0\,
      I2 => \state__0\(1),
      I3 => start_state_reg(0),
      I4 => \state1_carry__2_n_2\,
      O => \count[5]_i_1_n_0\
    );
\count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count[31]_i_3_n_0\,
      I1 => \count0_carry__0_n_6\,
      O => \count[6]_i_1_n_0\
    );
\count[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888F88"
    )
        port map (
      I0 => \count0_carry__0_n_5\,
      I1 => \count[13]_i_2_n_0\,
      I2 => \state__0\(1),
      I3 => start_state_reg(0),
      I4 => \state1_carry__2_n_2\,
      O => \count[7]_i_1_n_0\
    );
\count[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count[31]_i_3_n_0\,
      I1 => \count0_carry__0_n_4\,
      O => \count[8]_i_1_n_0\
    );
\count[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count[31]_i_3_n_0\,
      I1 => \count0_carry__1_n_7\,
      O => \count[9]_i_1_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count,
      D => \count[0]_i_1_n_0\,
      Q => sel0(0),
      R => \FSM_sequential_state[2]_i_1_n_0\
    );
\count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count,
      D => \count[10]_i_1_n_0\,
      Q => sel0(10),
      R => \FSM_sequential_state[2]_i_1_n_0\
    );
\count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count,
      D => \count[11]_i_1_n_0\,
      Q => sel0(11),
      R => \FSM_sequential_state[2]_i_1_n_0\
    );
\count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count,
      D => \count[12]_i_1_n_0\,
      Q => sel0(12),
      R => \FSM_sequential_state[2]_i_1_n_0\
    );
\count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count,
      D => \count[13]_i_1_n_0\,
      Q => sel0(13),
      R => \FSM_sequential_state[2]_i_1_n_0\
    );
\count_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count,
      D => \count[14]_i_1_n_0\,
      Q => sel0(14),
      R => \FSM_sequential_state[2]_i_1_n_0\
    );
\count_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count,
      D => \count[15]_i_1_n_0\,
      Q => sel0(15),
      R => \FSM_sequential_state[2]_i_1_n_0\
    );
\count_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count,
      D => \count[16]_i_1_n_0\,
      Q => sel0(16),
      R => \FSM_sequential_state[2]_i_1_n_0\
    );
\count_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count,
      D => \count[17]_i_1_n_0\,
      Q => sel0(17),
      R => \FSM_sequential_state[2]_i_1_n_0\
    );
\count_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count,
      D => \count[18]_i_1_n_0\,
      Q => sel0(18),
      R => \FSM_sequential_state[2]_i_1_n_0\
    );
\count_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count,
      D => \count[19]_i_1_n_0\,
      Q => sel0(19),
      R => \FSM_sequential_state[2]_i_1_n_0\
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count,
      D => \count[1]_i_1_n_0\,
      Q => sel0(1),
      R => \FSM_sequential_state[2]_i_1_n_0\
    );
\count_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count,
      D => \count[20]_i_1_n_0\,
      Q => sel0(20),
      R => \FSM_sequential_state[2]_i_1_n_0\
    );
\count_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count,
      D => \count[21]_i_1_n_0\,
      Q => sel0(21),
      R => \FSM_sequential_state[2]_i_1_n_0\
    );
\count_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count,
      D => \count[22]_i_1_n_0\,
      Q => sel0(22),
      R => \FSM_sequential_state[2]_i_1_n_0\
    );
\count_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count,
      D => \count[23]_i_1_n_0\,
      Q => sel0(23),
      R => \FSM_sequential_state[2]_i_1_n_0\
    );
\count_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count,
      D => \count[24]_i_1_n_0\,
      Q => sel0(24),
      R => \FSM_sequential_state[2]_i_1_n_0\
    );
\count_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count,
      D => \count[25]_i_1_n_0\,
      Q => sel0(25),
      R => \FSM_sequential_state[2]_i_1_n_0\
    );
\count_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count,
      D => \count[26]_i_1_n_0\,
      Q => sel0(26),
      R => \FSM_sequential_state[2]_i_1_n_0\
    );
\count_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count,
      D => \count[27]_i_1_n_0\,
      Q => sel0(27),
      R => \FSM_sequential_state[2]_i_1_n_0\
    );
\count_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count,
      D => \count[28]_i_1_n_0\,
      Q => sel0(28),
      R => \FSM_sequential_state[2]_i_1_n_0\
    );
\count_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count,
      D => \count[29]_i_1_n_0\,
      Q => sel0(29),
      R => \FSM_sequential_state[2]_i_1_n_0\
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count,
      D => \count[2]_i_1_n_0\,
      Q => sel0(2),
      R => \FSM_sequential_state[2]_i_1_n_0\
    );
\count_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count,
      D => \count[30]_i_1_n_0\,
      Q => sel0(30),
      R => \FSM_sequential_state[2]_i_1_n_0\
    );
\count_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count,
      D => \count[31]_i_2_n_0\,
      Q => sel0(31),
      R => \FSM_sequential_state[2]_i_1_n_0\
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count,
      D => \count[3]_i_1_n_0\,
      Q => sel0(3),
      R => \FSM_sequential_state[2]_i_1_n_0\
    );
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count,
      D => \count[4]_i_1_n_0\,
      Q => sel0(4),
      R => \FSM_sequential_state[2]_i_1_n_0\
    );
\count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count,
      D => \count[5]_i_1_n_0\,
      Q => sel0(5),
      R => \FSM_sequential_state[2]_i_1_n_0\
    );
\count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count,
      D => \count[6]_i_1_n_0\,
      Q => sel0(6),
      R => \FSM_sequential_state[2]_i_1_n_0\
    );
\count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count,
      D => \count[7]_i_1_n_0\,
      Q => sel0(7),
      R => \FSM_sequential_state[2]_i_1_n_0\
    );
\count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count,
      D => \count[8]_i_1_n_0\,
      Q => sel0(8),
      R => \FSM_sequential_state[2]_i_1_n_0\
    );
\count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => count,
      D => \count[9]_i_1_n_0\,
      Q => sel0(9),
      R => \FSM_sequential_state[2]_i_1_n_0\
    );
\data_bit[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0010"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state1_carry__2_n_2\,
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      I4 => \data_bit_reg_n_0_[0]\,
      O => \data_bit[0]_i_1_n_0\
    );
\data_bit[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \data_bit_reg_n_0_[0]\,
      I1 => data_bit,
      I2 => \data_bit_reg_n_0_[1]\,
      O => \data_bit[1]_i_1_n_0\
    );
\data_bit[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \data_bit_reg_n_0_[1]\,
      I1 => \data_bit_reg_n_0_[0]\,
      I2 => data_bit,
      I3 => \data_bit_reg_n_0_[2]\,
      O => \data_bit[2]_i_1_n_0\
    );
\data_bit[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      I2 => \state1_carry__2_n_2\,
      I3 => \state__0\(2),
      O => data_bit
    );
\data_bit_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \data_bit[0]_i_1_n_0\,
      Q => \data_bit_reg_n_0_[0]\,
      R => \FSM_sequential_state[2]_i_1_n_0\
    );
\data_bit_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \data_bit[1]_i_1_n_0\,
      Q => \data_bit_reg_n_0_[1]\,
      R => \FSM_sequential_state[2]_i_1_n_0\
    );
\data_bit_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \data_bit[2]_i_1_n_0\,
      Q => \data_bit_reg_n_0_[2]\,
      R => \FSM_sequential_state[2]_i_1_n_0\
    );
\data_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => RX,
      I1 => \data_bit_reg_n_0_[2]\,
      I2 => \data_bit_reg_n_0_[1]\,
      I3 => \data_bit_reg_n_0_[0]\,
      I4 => data_bit,
      I5 => \data_reg_reg_n_0_[0]\,
      O => \data_reg[0]_i_1_n_0\
    );
\data_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => RX,
      I1 => \data_bit_reg_n_0_[0]\,
      I2 => \data_bit_reg_n_0_[1]\,
      I3 => \data_bit_reg_n_0_[2]\,
      I4 => data_bit,
      I5 => \data_reg_reg_n_0_[1]\,
      O => \data_reg[1]_i_1_n_0\
    );
\data_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => RX,
      I1 => \data_bit_reg_n_0_[2]\,
      I2 => \data_bit_reg_n_0_[1]\,
      I3 => \data_bit_reg_n_0_[0]\,
      I4 => data_bit,
      I5 => \data_reg_reg_n_0_[2]\,
      O => \data_reg[2]_i_1_n_0\
    );
\data_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => RX,
      I1 => \data_bit_reg_n_0_[2]\,
      I2 => \data_bit_reg_n_0_[0]\,
      I3 => \data_bit_reg_n_0_[1]\,
      I4 => data_bit,
      I5 => \data_reg_reg_n_0_[3]\,
      O => \data_reg[3]_i_1_n_0\
    );
\data_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => RX,
      I1 => \data_bit_reg_n_0_[1]\,
      I2 => \data_bit_reg_n_0_[2]\,
      I3 => \data_bit_reg_n_0_[0]\,
      I4 => data_bit,
      I5 => \data_reg_reg_n_0_[4]\,
      O => \data_reg[4]_i_1_n_0\
    );
\data_reg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => RX,
      I1 => \data_bit_reg_n_0_[0]\,
      I2 => \data_bit_reg_n_0_[2]\,
      I3 => \data_bit_reg_n_0_[1]\,
      I4 => data_bit,
      I5 => \data_reg_reg_n_0_[5]\,
      O => \data_reg[5]_i_1_n_0\
    );
\data_reg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => RX,
      I1 => \data_bit_reg_n_0_[2]\,
      I2 => \data_bit_reg_n_0_[1]\,
      I3 => \data_bit_reg_n_0_[0]\,
      I4 => data_bit,
      I5 => \data_reg_reg_n_0_[6]\,
      O => \data_reg[6]_i_1_n_0\
    );
\data_reg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => RX,
      I1 => data_bit,
      I2 => \data_bit_reg_n_0_[2]\,
      I3 => \data_bit_reg_n_0_[0]\,
      I4 => \data_bit_reg_n_0_[1]\,
      I5 => \data_reg_reg_n_0_[7]\,
      O => \data_reg[7]_i_1_n_0\
    );
\data_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \data_reg[0]_i_1_n_0\,
      Q => \data_reg_reg_n_0_[0]\,
      R => \FSM_sequential_state[2]_i_1_n_0\
    );
\data_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \data_reg[1]_i_1_n_0\,
      Q => \data_reg_reg_n_0_[1]\,
      R => \FSM_sequential_state[2]_i_1_n_0\
    );
\data_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \data_reg[2]_i_1_n_0\,
      Q => \data_reg_reg_n_0_[2]\,
      R => \FSM_sequential_state[2]_i_1_n_0\
    );
\data_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \data_reg[3]_i_1_n_0\,
      Q => \data_reg_reg_n_0_[3]\,
      R => \FSM_sequential_state[2]_i_1_n_0\
    );
\data_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \data_reg[4]_i_1_n_0\,
      Q => \data_reg_reg_n_0_[4]\,
      R => \FSM_sequential_state[2]_i_1_n_0\
    );
\data_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \data_reg[5]_i_1_n_0\,
      Q => \data_reg_reg_n_0_[5]\,
      R => \FSM_sequential_state[2]_i_1_n_0\
    );
\data_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \data_reg[6]_i_1_n_0\,
      Q => \data_reg_reg_n_0_[6]\,
      R => \FSM_sequential_state[2]_i_1_n_0\
    );
\data_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \data_reg[7]_i_1_n_0\,
      Q => \data_reg_reg_n_0_[7]\,
      R => \FSM_sequential_state[2]_i_1_n_0\
    );
error_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      O => error
    );
start_state1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => start_state1_carry_n_0,
      CO(2) => start_state1_carry_n_1,
      CO(1) => start_state1_carry_n_2,
      CO(0) => start_state1_carry_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => start_state1_carry_i_1_n_0,
      DI(1) => start_state1_carry_i_2_n_0,
      DI(0) => start_state1_carry_i_3_n_0,
      O(3 downto 0) => NLW_start_state1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => start_state1_carry_i_4_n_0,
      S(2) => start_state1_carry_i_5_n_0,
      S(1) => start_state1_carry_i_6_n_0,
      S(0) => start_state1_carry_i_7_n_0
    );
\start_state1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => start_state1_carry_n_0,
      CO(3) => \start_state1_carry__0_n_0\,
      CO(2) => \start_state1_carry__0_n_1\,
      CO(1) => \start_state1_carry__0_n_2\,
      CO(0) => \start_state1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \start_state1_carry_i_1__1_n_0\,
      DI(0) => \start_state1_carry_i_2__0_n_0\,
      O(3 downto 0) => \NLW_start_state1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \start_state1_carry_i_3__0_n_0\,
      S(2) => \start_state1_carry_i_4__0_n_0\,
      S(1) => \start_state1_carry_i_5__0_n_0\,
      S(0) => \start_state1_carry_i_6__0_n_0\
    );
\start_state1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \start_state1_carry__0_n_0\,
      CO(3) => \start_state1_carry__1_n_0\,
      CO(2) => \start_state1_carry__1_n_1\,
      CO(1) => \start_state1_carry__1_n_2\,
      CO(0) => \start_state1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_start_state1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \start_state1_carry_i_1__2_n_0\,
      S(2) => \start_state1_carry_i_2__2_n_0\,
      S(1) => \start_state1_carry_i_3__1_n_0\,
      S(0) => \start_state1_carry_i_4__1_n_0\
    );
\start_state1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \start_state1_carry__1_n_0\,
      CO(3) => \NLW_start_state1_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \start_state1_carry__2_n_1\,
      CO(1) => \start_state1_carry__2_n_2\,
      CO(0) => \start_state1_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => sel0(31),
      DI(1 downto 0) => B"00",
      O(3 downto 0) => \NLW_start_state1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \start_state1_carry_i_1__0_n_0\,
      S(1) => \start_state1_carry_i_2__1_n_0\,
      S(0) => \start_state1_carry_i_3__2_n_0\
    );
start_state1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(7),
      I1 => sel0(6),
      O => start_state1_carry_i_1_n_0
    );
\start_state1_carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(31),
      I1 => sel0(30),
      O => \start_state1_carry_i_1__0_n_0\
    );
\start_state1_carry_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(12),
      I1 => sel0(13),
      O => \start_state1_carry_i_1__1_n_0\
    );
\start_state1_carry_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(24),
      I1 => sel0(25),
      O => \start_state1_carry_i_1__2_n_0\
    );
start_state1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(5),
      I1 => sel0(4),
      O => start_state1_carry_i_2_n_0
    );
\start_state1_carry_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(11),
      I1 => sel0(10),
      O => \start_state1_carry_i_2__0_n_0\
    );
\start_state1_carry_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(29),
      I1 => sel0(28),
      O => \start_state1_carry_i_2__1_n_0\
    );
\start_state1_carry_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(22),
      I1 => sel0(23),
      O => \start_state1_carry_i_2__2_n_0\
    );
start_state1_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(3),
      O => start_state1_carry_i_3_n_0
    );
\start_state1_carry_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(16),
      I1 => sel0(17),
      O => \start_state1_carry_i_3__0_n_0\
    );
\start_state1_carry_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(20),
      I1 => sel0(21),
      O => \start_state1_carry_i_3__1_n_0\
    );
\start_state1_carry_i_3__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(26),
      I1 => sel0(27),
      O => \start_state1_carry_i_3__2_n_0\
    );
start_state1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(8),
      I1 => sel0(9),
      O => start_state1_carry_i_4_n_0
    );
\start_state1_carry_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(14),
      I1 => sel0(15),
      O => \start_state1_carry_i_4__0_n_0\
    );
\start_state1_carry_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(18),
      I1 => sel0(19),
      O => \start_state1_carry_i_4__1_n_0\
    );
start_state1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sel0(6),
      I1 => sel0(7),
      O => start_state1_carry_i_5_n_0
    );
\start_state1_carry_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sel0(12),
      I1 => sel0(13),
      O => \start_state1_carry_i_5__0_n_0\
    );
start_state1_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(5),
      O => start_state1_carry_i_6_n_0
    );
\start_state1_carry_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sel0(10),
      I1 => sel0(11),
      O => \start_state1_carry_i_6__0_n_0\
    );
start_state1_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(2),
      O => start_state1_carry_i_7_n_0
    );
state1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => state1_carry_n_0,
      CO(2) => state1_carry_n_1,
      CO(1) => state1_carry_n_2,
      CO(0) => state1_carry_n_3,
      CYINIT => '0',
      DI(3) => state1_carry_i_1_n_0,
      DI(2) => '0',
      DI(1) => state1_carry_i_2_n_0,
      DI(0) => state1_carry_i_3_n_0,
      O(3 downto 0) => NLW_state1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => state1_carry_i_4_n_0,
      S(2) => state1_carry_i_5_n_0,
      S(1) => state1_carry_i_6_n_0,
      S(0) => state1_carry_i_7_n_0
    );
\state1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => state1_carry_n_0,
      CO(3) => \state1_carry__0_n_0\,
      CO(2) => \state1_carry__0_n_1\,
      CO(1) => \state1_carry__0_n_2\,
      CO(0) => \state1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \state1_carry__0_i_1_n_0\,
      O(3 downto 0) => \NLW_state1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \state1_carry__0_i_2_n_0\,
      S(2) => \state1_carry__0_i_3_n_0\,
      S(1) => \state1_carry__0_i_4_n_0\,
      S(0) => \state1_carry__0_i_5_n_0\
    );
\state1_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(13),
      O => \state1_carry__0_i_1_n_0\
    );
\state1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(18),
      I1 => sel0(19),
      O => \state1_carry__0_i_2_n_0\
    );
\state1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(16),
      I1 => sel0(17),
      O => \state1_carry__0_i_3_n_0\
    );
\state1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(14),
      I1 => sel0(15),
      O => \state1_carry__0_i_4_n_0\
    );
\state1_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sel0(13),
      I1 => sel0(12),
      O => \state1_carry__0_i_5_n_0\
    );
\state1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \state1_carry__0_n_0\,
      CO(3) => \state1_carry__1_n_0\,
      CO(2) => \state1_carry__1_n_1\,
      CO(1) => \state1_carry__1_n_2\,
      CO(0) => \state1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_state1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \state1_carry__1_i_1_n_0\,
      S(2) => \state1_carry__1_i_2_n_0\,
      S(1) => \state1_carry__1_i_3_n_0\,
      S(0) => \state1_carry__1_i_4_n_0\
    );
\state1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(26),
      I1 => sel0(27),
      O => \state1_carry__1_i_1_n_0\
    );
\state1_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(24),
      I1 => sel0(25),
      O => \state1_carry__1_i_2_n_0\
    );
\state1_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(22),
      I1 => sel0(23),
      O => \state1_carry__1_i_3_n_0\
    );
\state1_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(20),
      I1 => sel0(21),
      O => \state1_carry__1_i_4_n_0\
    );
\state1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \state1_carry__1_n_0\,
      CO(3 downto 2) => \NLW_state1_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \state1_carry__2_n_2\,
      CO(0) => \state1_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => sel0(31),
      DI(0) => '0',
      O(3 downto 0) => \NLW_state1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \state1_carry__2_i_1_n_0\,
      S(0) => \state1_carry__2_i_2_n_0\
    );
\state1_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(31),
      I1 => sel0(30),
      O => \state1_carry__2_i_1_n_0\
    );
\state1_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(29),
      I1 => sel0(28),
      O => \state1_carry__2_i_2_n_0\
    );
state1_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(11),
      O => state1_carry_i_1_n_0
    );
state1_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(7),
      O => state1_carry_i_2_n_0
    );
state1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(5),
      O => state1_carry_i_3_n_0
    );
state1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sel0(11),
      I1 => sel0(10),
      O => state1_carry_i_4_n_0
    );
state1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(8),
      I1 => sel0(9),
      O => state1_carry_i_5_n_0
    );
state1_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sel0(7),
      I1 => sel0(6),
      O => state1_carry_i_6_n_0
    );
state1_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(5),
      O => state1_carry_i_7_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Block_Diagram_UART_RX_Master_0_0 is
  port (
    RX : in STD_LOGIC;
    clk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    RX_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    error : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Block_Diagram_UART_RX_Master_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Block_Diagram_UART_RX_Master_0_0 : entity is "Block_Diagram_UART_RX_Master_0_0,UART_RX_Master,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Block_Diagram_UART_RX_Master_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Block_Diagram_UART_RX_Master_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of Block_Diagram_UART_RX_Master_0_0 : entity is "UART_RX_Master,Vivado 2022.2";
end Block_Diagram_UART_RX_Master_0_0;

architecture STRUCTURE of Block_Diagram_UART_RX_Master_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute x_interface_info of reset_n : signal is "xilinx.com:signal:reset:1.0 reset_n RST";
  attribute x_interface_parameter of reset_n : signal is "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.Block_Diagram_UART_RX_Master_0_0_UART_RX_Master
     port map (
      RX => RX,
      RX_data(7 downto 0) => RX_data(7 downto 0),
      clk => clk,
      error => error,
      reset_n => reset_n
    );
end STRUCTURE;
