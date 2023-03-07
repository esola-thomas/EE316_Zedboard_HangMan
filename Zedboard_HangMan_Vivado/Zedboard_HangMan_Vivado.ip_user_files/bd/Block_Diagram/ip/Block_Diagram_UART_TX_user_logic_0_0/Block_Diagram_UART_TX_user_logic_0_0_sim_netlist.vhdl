-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Mon Mar  6 21:54:07 2023
-- Host        : Alienware running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/My_Repos/EE316_Zedboard_HangMan/Zedboard_HangMan_Vivado/Zedboard_HangMan_Vivado.gen/sources_1/bd/Block_Diagram/ip/Block_Diagram_UART_TX_user_logic_0_0/Block_Diagram_UART_TX_user_logic_0_0_sim_netlist.vhdl
-- Design      : Block_Diagram_UART_TX_user_logic_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Block_Diagram_UART_TX_user_logic_0_0_UART_TX_master is
  port (
    TX : out STD_LOGIC;
    reset_n_0 : out STD_LOGIC;
    \FSM_onehot_send_data_steps_reg[2]\ : out STD_LOGIC;
    \FSM_onehot_send_data_steps_reg[2]_0\ : out STD_LOGIC;
    \FSM_onehot_send_data_steps_reg[2]_1\ : out STD_LOGIC;
    clk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    \data_reg[7]_0\ : in STD_LOGIC;
    \FSM_onehot_send_data_steps_reg[2]_2\ : in STD_LOGIC;
    \FSM_onehot_send_data_steps_reg[2]_3\ : in STD_LOGIC;
    clear_new_data : in STD_LOGIC;
    sending_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Block_Diagram_UART_TX_user_logic_0_0_UART_TX_master : entity is "UART_TX_master";
end Block_Diagram_UART_TX_user_logic_0_0_UART_TX_master;

architecture STRUCTURE of Block_Diagram_UART_TX_user_logic_0_0_UART_TX_master is
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \^tx\ : STD_LOGIC;
  signal TX0 : STD_LOGIC;
  signal TX_i_1_n_0 : STD_LOGIC;
  signal TX_i_3_n_0 : STD_LOGIC;
  signal TX_i_5_n_0 : STD_LOGIC;
  signal TX_i_6_n_0 : STD_LOGIC;
  signal TX_i_7_n_0 : STD_LOGIC;
  signal TX_i_8_n_0 : STD_LOGIC;
  signal TX_reg_i_2_n_0 : STD_LOGIC;
  signal \bit_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal busy : STD_LOGIC;
  signal busy_i_1_n_0 : STD_LOGIC;
  signal clk_cnt : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \clk_cnt0_carry__0_n_0\ : STD_LOGIC;
  signal \clk_cnt0_carry__0_n_1\ : STD_LOGIC;
  signal \clk_cnt0_carry__0_n_2\ : STD_LOGIC;
  signal \clk_cnt0_carry__0_n_3\ : STD_LOGIC;
  signal \clk_cnt0_carry__0_n_4\ : STD_LOGIC;
  signal \clk_cnt0_carry__0_n_5\ : STD_LOGIC;
  signal \clk_cnt0_carry__0_n_6\ : STD_LOGIC;
  signal \clk_cnt0_carry__0_n_7\ : STD_LOGIC;
  signal \clk_cnt0_carry__1_n_0\ : STD_LOGIC;
  signal \clk_cnt0_carry__1_n_1\ : STD_LOGIC;
  signal \clk_cnt0_carry__1_n_2\ : STD_LOGIC;
  signal \clk_cnt0_carry__1_n_3\ : STD_LOGIC;
  signal \clk_cnt0_carry__1_n_4\ : STD_LOGIC;
  signal \clk_cnt0_carry__1_n_5\ : STD_LOGIC;
  signal \clk_cnt0_carry__1_n_6\ : STD_LOGIC;
  signal \clk_cnt0_carry__1_n_7\ : STD_LOGIC;
  signal \clk_cnt0_carry__2_n_7\ : STD_LOGIC;
  signal clk_cnt0_carry_n_0 : STD_LOGIC;
  signal clk_cnt0_carry_n_1 : STD_LOGIC;
  signal clk_cnt0_carry_n_2 : STD_LOGIC;
  signal clk_cnt0_carry_n_3 : STD_LOGIC;
  signal clk_cnt0_carry_n_4 : STD_LOGIC;
  signal clk_cnt0_carry_n_5 : STD_LOGIC;
  signal clk_cnt0_carry_n_6 : STD_LOGIC;
  signal clk_cnt0_carry_n_7 : STD_LOGIC;
  signal \clk_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \clk_cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal \clk_cnt[0]_i_4_n_0\ : STD_LOGIC;
  signal \clk_cnt[13]_i_1_n_0\ : STD_LOGIC;
  signal clk_cnt_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal clk_en_reg_n_0 : STD_LOGIC;
  signal data0 : STD_LOGIC;
  signal data1 : STD_LOGIC;
  signal data2 : STD_LOGIC;
  signal data3 : STD_LOGIC;
  signal data4 : STD_LOGIC;
  signal data5 : STD_LOGIC;
  signal data6 : STD_LOGIC;
  signal \data[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg_n_0_[0]\ : STD_LOGIC;
  signal \^reset_n_0\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_clk_cnt0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_clk_cnt0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_send_data_steps[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_send_data_steps[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair2";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ready:00,start:01,stop:11,send:10";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ready:00,start:01,stop:11,send:10";
  attribute SOFT_HLUTNM of TX_i_4 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \bit_cnt[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \bit_cnt[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of busy_i_1 : label is "soft_lutpair1";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of clk_cnt0_carry : label is 35;
  attribute ADDER_THRESHOLD of \clk_cnt0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \clk_cnt0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \clk_cnt0_carry__2\ : label is 35;
begin
  TX <= \^tx\;
  reset_n_0 <= \^reset_n_0\;
\FSM_onehot_send_data_steps[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEAAAEA"
    )
        port map (
      I0 => \FSM_onehot_send_data_steps_reg[2]_2\,
      I1 => \FSM_onehot_send_data_steps_reg[2]_3\,
      I2 => clear_new_data,
      I3 => sending_reg,
      I4 => busy,
      O => \FSM_onehot_send_data_steps_reg[2]_1\
    );
\FSM_onehot_send_data_steps[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DD8CCC8C"
    )
        port map (
      I0 => \FSM_onehot_send_data_steps_reg[2]_2\,
      I1 => \FSM_onehot_send_data_steps_reg[2]_3\,
      I2 => clear_new_data,
      I3 => sending_reg,
      I4 => busy,
      O => \FSM_onehot_send_data_steps_reg[2]_0\
    );
\FSM_onehot_send_data_steps[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AE00FF00"
    )
        port map (
      I0 => \FSM_onehot_send_data_steps_reg[2]_2\,
      I1 => \FSM_onehot_send_data_steps_reg[2]_3\,
      I2 => clear_new_data,
      I3 => sending_reg,
      I4 => busy,
      O => \FSM_onehot_send_data_steps_reg[2]\
    );
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF2E00"
    )
        port map (
      I0 => \data_reg[7]_0\,
      I1 => state(1),
      I2 => \FSM_sequential_state[0]_i_2_n_0\,
      I3 => clk_en_reg_n_0,
      I4 => state(0),
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[2]\,
      I1 => \bit_cnt_reg_n_0_[1]\,
      I2 => \bit_cnt_reg_n_0_[0]\,
      O => \FSM_sequential_state[0]_i_2_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => state(0),
      I1 => clk_en_reg_n_0,
      I2 => state(1),
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^reset_n_0\,
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => state(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^reset_n_0\,
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => state(1)
    );
TX_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FFF800"
    )
        port map (
      I0 => TX_reg_i_2_n_0,
      I1 => state(0),
      I2 => TX_i_3_n_0,
      I3 => TX0,
      I4 => \^tx\,
      O => TX_i_1_n_0
    );
TX_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA22288888000"
    )
        port map (
      I0 => state(1),
      I1 => \bit_cnt_reg_n_0_[2]\,
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => \bit_cnt_reg_n_0_[0]\,
      I4 => TX_i_7_n_0,
      I5 => TX_i_8_n_0,
      O => TX_i_3_n_0
    );
TX_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A28"
    )
        port map (
      I0 => clk_en_reg_n_0,
      I1 => state(0),
      I2 => state(1),
      I3 => \data_reg[7]_0\,
      O => TX0
    );
TX_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data2,
      I1 => data1,
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => data0,
      I4 => \bit_cnt_reg_n_0_[0]\,
      I5 => \data_reg_n_0_[0]\,
      O => TX_i_5_n_0
    );
TX_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data6,
      I1 => data5,
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => data4,
      I4 => \bit_cnt_reg_n_0_[0]\,
      I5 => data3,
      O => TX_i_6_n_0
    );
TX_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_reg_n_0_[0]\,
      I1 => data6,
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => data5,
      I4 => \bit_cnt_reg_n_0_[0]\,
      I5 => data4,
      O => TX_i_7_n_0
    );
TX_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3,
      I1 => data2,
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => data1,
      I4 => \bit_cnt_reg_n_0_[0]\,
      I5 => data0,
      O => TX_i_8_n_0
    );
TX_reg: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => TX_i_1_n_0,
      PRE => \^reset_n_0\,
      Q => \^tx\
    );
TX_reg_i_2: unisim.vcomponents.MUXF7
     port map (
      I0 => TX_i_5_n_0,
      I1 => TX_i_6_n_0,
      O => TX_reg_i_2_n_0,
      S => \bit_cnt_reg_n_0_[2]\
    );
\bit_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => clk_en_reg_n_0,
      I1 => state(0),
      I2 => state(1),
      I3 => \bit_cnt_reg_n_0_[0]\,
      O => \bit_cnt[0]_i_1_n_0\
    );
\bit_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[0]\,
      I1 => clk_en_reg_n_0,
      I2 => state(0),
      I3 => state(1),
      I4 => \bit_cnt_reg_n_0_[1]\,
      O => \bit_cnt[1]_i_1_n_0\
    );
\bit_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFFFF00800000"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[1]\,
      I1 => \bit_cnt_reg_n_0_[0]\,
      I2 => clk_en_reg_n_0,
      I3 => state(0),
      I4 => state(1),
      I5 => \bit_cnt_reg_n_0_[2]\,
      O => \bit_cnt[2]_i_1_n_0\
    );
\bit_cnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^reset_n_0\,
      D => \bit_cnt[0]_i_1_n_0\,
      Q => \bit_cnt_reg_n_0_[0]\
    );
\bit_cnt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^reset_n_0\,
      D => \bit_cnt[1]_i_1_n_0\,
      Q => \bit_cnt_reg_n_0_[1]\
    );
\bit_cnt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^reset_n_0\,
      D => \bit_cnt[2]_i_1_n_0\,
      Q => \bit_cnt_reg_n_0_[2]\
    );
busy_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => \data_reg[7]_0\,
      I1 => clk_en_reg_n_0,
      I2 => state(1),
      I3 => state(0),
      I4 => busy,
      O => busy_i_1_n_0
    );
busy_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => busy_i_1_n_0,
      PRE => \^reset_n_0\,
      Q => busy
    );
clk_cnt0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => clk_cnt0_carry_n_0,
      CO(2) => clk_cnt0_carry_n_1,
      CO(1) => clk_cnt0_carry_n_2,
      CO(0) => clk_cnt0_carry_n_3,
      CYINIT => clk_cnt(0),
      DI(3 downto 0) => B"0000",
      O(3) => clk_cnt0_carry_n_4,
      O(2) => clk_cnt0_carry_n_5,
      O(1) => clk_cnt0_carry_n_6,
      O(0) => clk_cnt0_carry_n_7,
      S(3 downto 0) => clk_cnt(4 downto 1)
    );
\clk_cnt0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => clk_cnt0_carry_n_0,
      CO(3) => \clk_cnt0_carry__0_n_0\,
      CO(2) => \clk_cnt0_carry__0_n_1\,
      CO(1) => \clk_cnt0_carry__0_n_2\,
      CO(0) => \clk_cnt0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_cnt0_carry__0_n_4\,
      O(2) => \clk_cnt0_carry__0_n_5\,
      O(1) => \clk_cnt0_carry__0_n_6\,
      O(0) => \clk_cnt0_carry__0_n_7\,
      S(3 downto 0) => clk_cnt(8 downto 5)
    );
\clk_cnt0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_cnt0_carry__0_n_0\,
      CO(3) => \clk_cnt0_carry__1_n_0\,
      CO(2) => \clk_cnt0_carry__1_n_1\,
      CO(1) => \clk_cnt0_carry__1_n_2\,
      CO(0) => \clk_cnt0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_cnt0_carry__1_n_4\,
      O(2) => \clk_cnt0_carry__1_n_5\,
      O(1) => \clk_cnt0_carry__1_n_6\,
      O(0) => \clk_cnt0_carry__1_n_7\,
      S(3 downto 0) => clk_cnt(12 downto 9)
    );
\clk_cnt0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_cnt0_carry__1_n_0\,
      CO(3 downto 0) => \NLW_clk_cnt0_carry__2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_clk_cnt0_carry__2_O_UNCONNECTED\(3 downto 1),
      O(0) => \clk_cnt0_carry__2_n_7\,
      S(3 downto 1) => B"000",
      S(0) => clk_cnt(13)
    );
\clk_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \clk_cnt[0]_i_2_n_0\,
      I1 => clk_cnt(0),
      O => clk_cnt_0(0)
    );
\clk_cnt[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFBFFF"
    )
        port map (
      I0 => \clk_cnt[0]_i_3_n_0\,
      I1 => clk_cnt(5),
      I2 => clk_cnt(4),
      I3 => clk_cnt(7),
      I4 => clk_cnt(6),
      I5 => \clk_cnt[0]_i_4_n_0\,
      O => \clk_cnt[0]_i_2_n_0\
    );
\clk_cnt[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => clk_cnt(9),
      I1 => clk_cnt(8),
      I2 => clk_cnt(11),
      I3 => clk_cnt(10),
      O => \clk_cnt[0]_i_3_n_0\
    );
\clk_cnt[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => clk_cnt(1),
      I1 => clk_cnt(12),
      I2 => clk_cnt(13),
      I3 => clk_cnt(3),
      I4 => clk_cnt(2),
      O => \clk_cnt[0]_i_4_n_0\
    );
\clk_cnt[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \clk_cnt[0]_i_2_n_0\,
      I1 => clk_cnt(0),
      O => \clk_cnt[13]_i_1_n_0\
    );
\clk_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => clk_cnt_0(0),
      Q => clk_cnt(0),
      R => '0'
    );
\clk_cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_cnt0_carry__1_n_6\,
      Q => clk_cnt(10),
      R => \clk_cnt[13]_i_1_n_0\
    );
\clk_cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_cnt0_carry__1_n_5\,
      Q => clk_cnt(11),
      R => \clk_cnt[13]_i_1_n_0\
    );
\clk_cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_cnt0_carry__1_n_4\,
      Q => clk_cnt(12),
      R => \clk_cnt[13]_i_1_n_0\
    );
\clk_cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_cnt0_carry__2_n_7\,
      Q => clk_cnt(13),
      R => \clk_cnt[13]_i_1_n_0\
    );
\clk_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => clk_cnt0_carry_n_7,
      Q => clk_cnt(1),
      R => \clk_cnt[13]_i_1_n_0\
    );
\clk_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => clk_cnt0_carry_n_6,
      Q => clk_cnt(2),
      R => \clk_cnt[13]_i_1_n_0\
    );
\clk_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => clk_cnt0_carry_n_5,
      Q => clk_cnt(3),
      R => \clk_cnt[13]_i_1_n_0\
    );
\clk_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => clk_cnt0_carry_n_4,
      Q => clk_cnt(4),
      R => \clk_cnt[13]_i_1_n_0\
    );
\clk_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_cnt0_carry__0_n_7\,
      Q => clk_cnt(5),
      R => \clk_cnt[13]_i_1_n_0\
    );
\clk_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_cnt0_carry__0_n_6\,
      Q => clk_cnt(6),
      R => \clk_cnt[13]_i_1_n_0\
    );
\clk_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_cnt0_carry__0_n_5\,
      Q => clk_cnt(7),
      R => \clk_cnt[13]_i_1_n_0\
    );
\clk_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_cnt0_carry__0_n_4\,
      Q => clk_cnt(8),
      R => \clk_cnt[13]_i_1_n_0\
    );
\clk_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_cnt0_carry__1_n_7\,
      Q => clk_cnt(9),
      R => \clk_cnt[13]_i_1_n_0\
    );
clk_en_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \clk_cnt[13]_i_1_n_0\,
      Q => clk_en_reg_n_0,
      R => '0'
    );
\data[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => reset_n,
      I1 => \data_reg[7]_0\,
      I2 => state(0),
      I3 => state(1),
      I4 => clk_en_reg_n_0,
      O => \data[7]_i_1_n_0\
    );
\data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data[7]_i_1_n_0\,
      D => Q(0),
      Q => \data_reg_n_0_[0]\,
      R => '0'
    );
\data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data[7]_i_1_n_0\,
      D => Q(1),
      Q => data0,
      R => '0'
    );
\data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data[7]_i_1_n_0\,
      D => Q(2),
      Q => data1,
      R => '0'
    );
\data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data[7]_i_1_n_0\,
      D => Q(3),
      Q => data2,
      R => '0'
    );
\data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data[7]_i_1_n_0\,
      D => Q(4),
      Q => data3,
      R => '0'
    );
\data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data[7]_i_1_n_0\,
      D => Q(5),
      Q => data4,
      R => '0'
    );
\data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data[7]_i_1_n_0\,
      D => Q(6),
      Q => data5,
      R => '0'
    );
\data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data[7]_i_1_n_0\,
      D => Q(7),
      Q => data6,
      R => '0'
    );
sending_reg_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_n,
      O => \^reset_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Block_Diagram_UART_TX_user_logic_0_0_UART_TX_user_logic is
  port (
    sending_reg_reg_0 : out STD_LOGIC;
    TX : out STD_LOGIC;
    reset_n : in STD_LOGIC;
    clk : in STD_LOGIC;
    tx_data : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Block_Diagram_UART_TX_user_logic_0_0_UART_TX_user_logic : entity is "UART_TX_user_logic";
end Block_Diagram_UART_TX_user_logic_0_0_UART_TX_user_logic;

architecture STRUCTURE of Block_Diagram_UART_TX_user_logic_0_0_UART_TX_user_logic is
  signal \FSM_onehot_send_data_steps_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_send_data_steps_reg_n_0_[2]\ : STD_LOGIC;
  signal TX_data_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TX_master_inst_n_1 : STD_LOGIC;
  signal TX_master_inst_n_2 : STD_LOGIC;
  signal TX_master_inst_n_3 : STD_LOGIC;
  signal TX_master_inst_n_4 : STD_LOGIC;
  signal clear_new_data : STD_LOGIC;
  signal clear_new_data_i_1_n_0 : STD_LOGIC;
  signal sending_reg : STD_LOGIC;
  signal sending_reg_i_1_n_0 : STD_LOGIC;
  signal \^sending_reg_reg_0\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_send_data_steps_reg[0]\ : label is "idle:001,send_byte:010,next_byte:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_send_data_steps_reg[1]\ : label is "idle:001,send_byte:010,next_byte:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_send_data_steps_reg[2]\ : label is "idle:001,send_byte:010,next_byte:100,";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of clear_new_data_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of sending_reg_i_1 : label is "soft_lutpair4";
begin
  sending_reg_reg_0 <= \^sending_reg_reg_0\;
\FSM_onehot_send_data_steps_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => TX_master_inst_n_4,
      PRE => TX_master_inst_n_1,
      Q => \FSM_onehot_send_data_steps_reg_n_0_[0]\
    );
\FSM_onehot_send_data_steps_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => TX_master_inst_n_1,
      D => TX_master_inst_n_3,
      Q => sending_reg
    );
\FSM_onehot_send_data_steps_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => TX_master_inst_n_1,
      D => TX_master_inst_n_2,
      Q => \FSM_onehot_send_data_steps_reg_n_0_[2]\
    );
\TX_data_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sending_reg,
      CLR => TX_master_inst_n_1,
      D => tx_data(0),
      Q => TX_data_reg(0)
    );
\TX_data_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sending_reg,
      CLR => TX_master_inst_n_1,
      D => tx_data(1),
      Q => TX_data_reg(1)
    );
\TX_data_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sending_reg,
      CLR => TX_master_inst_n_1,
      D => tx_data(2),
      Q => TX_data_reg(2)
    );
\TX_data_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sending_reg,
      CLR => TX_master_inst_n_1,
      D => tx_data(3),
      Q => TX_data_reg(3)
    );
\TX_data_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sending_reg,
      CLR => TX_master_inst_n_1,
      D => tx_data(4),
      Q => TX_data_reg(4)
    );
\TX_data_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sending_reg,
      CLR => TX_master_inst_n_1,
      D => tx_data(5),
      Q => TX_data_reg(5)
    );
\TX_data_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sending_reg,
      CLR => TX_master_inst_n_1,
      D => tx_data(6),
      Q => TX_data_reg(6)
    );
\TX_data_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sending_reg,
      CLR => TX_master_inst_n_1,
      D => tx_data(7),
      Q => TX_data_reg(7)
    );
TX_master_inst: entity work.Block_Diagram_UART_TX_user_logic_0_0_UART_TX_master
     port map (
      \FSM_onehot_send_data_steps_reg[2]\ => TX_master_inst_n_2,
      \FSM_onehot_send_data_steps_reg[2]_0\ => TX_master_inst_n_3,
      \FSM_onehot_send_data_steps_reg[2]_1\ => TX_master_inst_n_4,
      \FSM_onehot_send_data_steps_reg[2]_2\ => \FSM_onehot_send_data_steps_reg_n_0_[2]\,
      \FSM_onehot_send_data_steps_reg[2]_3\ => \FSM_onehot_send_data_steps_reg_n_0_[0]\,
      Q(7 downto 0) => TX_data_reg(7 downto 0),
      TX => TX,
      clear_new_data => clear_new_data,
      clk => clk,
      \data_reg[7]_0\ => \^sending_reg_reg_0\,
      reset_n => reset_n,
      reset_n_0 => TX_master_inst_n_1,
      sending_reg => sending_reg
    );
clear_new_data_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1A"
    )
        port map (
      I0 => \FSM_onehot_send_data_steps_reg_n_0_[0]\,
      I1 => \FSM_onehot_send_data_steps_reg_n_0_[2]\,
      I2 => clear_new_data,
      O => clear_new_data_i_1_n_0
    );
clear_new_data_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => TX_master_inst_n_1,
      D => clear_new_data_i_1_n_0,
      Q => clear_new_data
    );
sending_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFAA"
    )
        port map (
      I0 => sending_reg,
      I1 => clear_new_data,
      I2 => \FSM_onehot_send_data_steps_reg_n_0_[0]\,
      I3 => \^sending_reg_reg_0\,
      O => sending_reg_i_1_n_0
    );
sending_reg_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => TX_master_inst_n_1,
      D => sending_reg_i_1_n_0,
      Q => \^sending_reg_reg_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Block_Diagram_UART_TX_user_logic_0_0 is
  port (
    clk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    tx_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sending : out STD_LOGIC;
    TX : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Block_Diagram_UART_TX_user_logic_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Block_Diagram_UART_TX_user_logic_0_0 : entity is "Block_Diagram_UART_TX_user_logic_0_0,UART_TX_user_logic,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Block_Diagram_UART_TX_user_logic_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Block_Diagram_UART_TX_user_logic_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of Block_Diagram_UART_TX_user_logic_0_0 : entity is "UART_TX_user_logic,Vivado 2022.2";
end Block_Diagram_UART_TX_user_logic_0_0;

architecture STRUCTURE of Block_Diagram_UART_TX_user_logic_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute x_interface_info of reset_n : signal is "xilinx.com:signal:reset:1.0 reset_n RST";
  attribute x_interface_parameter of reset_n : signal is "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.Block_Diagram_UART_TX_user_logic_0_0_UART_TX_user_logic
     port map (
      TX => TX,
      clk => clk,
      reset_n => reset_n,
      sending_reg_reg_0 => sending,
      tx_data(7 downto 0) => tx_data(7 downto 0)
    );
end STRUCTURE;
