// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Mar  6 21:54:07 2023
// Host        : Alienware running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/My_Repos/EE316_Zedboard_HangMan/Zedboard_HangMan_Vivado/Zedboard_HangMan_Vivado.gen/sources_1/bd/Block_Diagram/ip/Block_Diagram_UART_TX_user_logic_0_0/Block_Diagram_UART_TX_user_logic_0_0_sim_netlist.v
// Design      : Block_Diagram_UART_TX_user_logic_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Block_Diagram_UART_TX_user_logic_0_0,UART_TX_user_logic,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "UART_TX_user_logic,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module Block_Diagram_UART_TX_user_logic_0_0
   (clk,
    reset_n,
    tx_data,
    sending,
    TX);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n;
  input [7:0]tx_data;
  output sending;
  output TX;

  wire TX;
  wire clk;
  wire reset_n;
  wire sending;
  wire [7:0]tx_data;

  Block_Diagram_UART_TX_user_logic_0_0_UART_TX_user_logic U0
       (.TX(TX),
        .clk(clk),
        .reset_n(reset_n),
        .sending_reg_reg_0(sending),
        .tx_data(tx_data));
endmodule

(* ORIG_REF_NAME = "UART_TX_master" *) 
module Block_Diagram_UART_TX_user_logic_0_0_UART_TX_master
   (TX,
    reset_n_0,
    \FSM_onehot_send_data_steps_reg[2] ,
    \FSM_onehot_send_data_steps_reg[2]_0 ,
    \FSM_onehot_send_data_steps_reg[2]_1 ,
    clk,
    reset_n,
    \data_reg[7]_0 ,
    \FSM_onehot_send_data_steps_reg[2]_2 ,
    \FSM_onehot_send_data_steps_reg[2]_3 ,
    clear_new_data,
    sending_reg,
    Q);
  output TX;
  output reset_n_0;
  output \FSM_onehot_send_data_steps_reg[2] ;
  output \FSM_onehot_send_data_steps_reg[2]_0 ;
  output \FSM_onehot_send_data_steps_reg[2]_1 ;
  input clk;
  input reset_n;
  input \data_reg[7]_0 ;
  input \FSM_onehot_send_data_steps_reg[2]_2 ;
  input \FSM_onehot_send_data_steps_reg[2]_3 ;
  input clear_new_data;
  input sending_reg;
  input [7:0]Q;

  wire \FSM_onehot_send_data_steps_reg[2] ;
  wire \FSM_onehot_send_data_steps_reg[2]_0 ;
  wire \FSM_onehot_send_data_steps_reg[2]_1 ;
  wire \FSM_onehot_send_data_steps_reg[2]_2 ;
  wire \FSM_onehot_send_data_steps_reg[2]_3 ;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire [7:0]Q;
  wire TX;
  wire TX0;
  wire TX_i_1_n_0;
  wire TX_i_3_n_0;
  wire TX_i_5_n_0;
  wire TX_i_6_n_0;
  wire TX_i_7_n_0;
  wire TX_i_8_n_0;
  wire TX_reg_i_2_n_0;
  wire \bit_cnt[0]_i_1_n_0 ;
  wire \bit_cnt[1]_i_1_n_0 ;
  wire \bit_cnt[2]_i_1_n_0 ;
  wire \bit_cnt_reg_n_0_[0] ;
  wire \bit_cnt_reg_n_0_[1] ;
  wire \bit_cnt_reg_n_0_[2] ;
  wire busy;
  wire busy_i_1_n_0;
  wire clear_new_data;
  wire clk;
  wire [13:0]clk_cnt;
  wire clk_cnt0_carry__0_n_0;
  wire clk_cnt0_carry__0_n_1;
  wire clk_cnt0_carry__0_n_2;
  wire clk_cnt0_carry__0_n_3;
  wire clk_cnt0_carry__0_n_4;
  wire clk_cnt0_carry__0_n_5;
  wire clk_cnt0_carry__0_n_6;
  wire clk_cnt0_carry__0_n_7;
  wire clk_cnt0_carry__1_n_0;
  wire clk_cnt0_carry__1_n_1;
  wire clk_cnt0_carry__1_n_2;
  wire clk_cnt0_carry__1_n_3;
  wire clk_cnt0_carry__1_n_4;
  wire clk_cnt0_carry__1_n_5;
  wire clk_cnt0_carry__1_n_6;
  wire clk_cnt0_carry__1_n_7;
  wire clk_cnt0_carry__2_n_7;
  wire clk_cnt0_carry_n_0;
  wire clk_cnt0_carry_n_1;
  wire clk_cnt0_carry_n_2;
  wire clk_cnt0_carry_n_3;
  wire clk_cnt0_carry_n_4;
  wire clk_cnt0_carry_n_5;
  wire clk_cnt0_carry_n_6;
  wire clk_cnt0_carry_n_7;
  wire \clk_cnt[0]_i_2_n_0 ;
  wire \clk_cnt[0]_i_3_n_0 ;
  wire \clk_cnt[0]_i_4_n_0 ;
  wire \clk_cnt[13]_i_1_n_0 ;
  wire [0:0]clk_cnt_0;
  wire clk_en_reg_n_0;
  wire data0;
  wire data1;
  wire data2;
  wire data3;
  wire data4;
  wire data5;
  wire data6;
  wire \data[7]_i_1_n_0 ;
  wire \data_reg[7]_0 ;
  wire \data_reg_n_0_[0] ;
  wire reset_n;
  wire reset_n_0;
  wire sending_reg;
  wire [1:0]state;
  wire [3:0]NLW_clk_cnt0_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_clk_cnt0_carry__2_O_UNCONNECTED;

  LUT5 #(
    .INIT(32'hEAEAAAEA)) 
    \FSM_onehot_send_data_steps[0]_i_1 
       (.I0(\FSM_onehot_send_data_steps_reg[2]_2 ),
        .I1(\FSM_onehot_send_data_steps_reg[2]_3 ),
        .I2(clear_new_data),
        .I3(sending_reg),
        .I4(busy),
        .O(\FSM_onehot_send_data_steps_reg[2]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hDD8CCC8C)) 
    \FSM_onehot_send_data_steps[1]_i_1 
       (.I0(\FSM_onehot_send_data_steps_reg[2]_2 ),
        .I1(\FSM_onehot_send_data_steps_reg[2]_3 ),
        .I2(clear_new_data),
        .I3(sending_reg),
        .I4(busy),
        .O(\FSM_onehot_send_data_steps_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAE00FF00)) 
    \FSM_onehot_send_data_steps[2]_i_1 
       (.I0(\FSM_onehot_send_data_steps_reg[2]_2 ),
        .I1(\FSM_onehot_send_data_steps_reg[2]_3 ),
        .I2(clear_new_data),
        .I3(sending_reg),
        .I4(busy),
        .O(\FSM_onehot_send_data_steps_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00FF2E00)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\data_reg[7]_0 ),
        .I1(state[1]),
        .I2(\FSM_sequential_state[0]_i_2_n_0 ),
        .I3(clk_en_reg_n_0),
        .I4(state[0]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(\bit_cnt_reg_n_0_[2] ),
        .I1(\bit_cnt_reg_n_0_[1] ),
        .I2(\bit_cnt_reg_n_0_[0] ),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state[0]),
        .I1(clk_en_reg_n_0),
        .I2(state[1]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "ready:00,start:01,stop:11,send:10" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_n_0),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]));
  (* FSM_ENCODED_STATES = "ready:00,start:01,stop:11,send:10" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_n_0),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]));
  LUT5 #(
    .INIT(32'hF8FFF800)) 
    TX_i_1
       (.I0(TX_reg_i_2_n_0),
        .I1(state[0]),
        .I2(TX_i_3_n_0),
        .I3(TX0),
        .I4(TX),
        .O(TX_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAAAA22288888000)) 
    TX_i_3
       (.I0(state[1]),
        .I1(\bit_cnt_reg_n_0_[2] ),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .I4(TX_i_7_n_0),
        .I5(TX_i_8_n_0),
        .O(TX_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2A28)) 
    TX_i_4
       (.I0(clk_en_reg_n_0),
        .I1(state[0]),
        .I2(state[1]),
        .I3(\data_reg[7]_0 ),
        .O(TX0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    TX_i_5
       (.I0(data2),
        .I1(data1),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(data0),
        .I4(\bit_cnt_reg_n_0_[0] ),
        .I5(\data_reg_n_0_[0] ),
        .O(TX_i_5_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    TX_i_6
       (.I0(data6),
        .I1(data5),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(data4),
        .I4(\bit_cnt_reg_n_0_[0] ),
        .I5(data3),
        .O(TX_i_6_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    TX_i_7
       (.I0(\data_reg_n_0_[0] ),
        .I1(data6),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(data5),
        .I4(\bit_cnt_reg_n_0_[0] ),
        .I5(data4),
        .O(TX_i_7_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    TX_i_8
       (.I0(data3),
        .I1(data2),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(data1),
        .I4(\bit_cnt_reg_n_0_[0] ),
        .I5(data0),
        .O(TX_i_8_n_0));
  FDPE TX_reg
       (.C(clk),
        .CE(1'b1),
        .D(TX_i_1_n_0),
        .PRE(reset_n_0),
        .Q(TX));
  MUXF7 TX_reg_i_2
       (.I0(TX_i_5_n_0),
        .I1(TX_i_6_n_0),
        .O(TX_reg_i_2_n_0),
        .S(\bit_cnt_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \bit_cnt[0]_i_1 
       (.I0(clk_en_reg_n_0),
        .I1(state[0]),
        .I2(state[1]),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .O(\bit_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \bit_cnt[1]_i_1 
       (.I0(\bit_cnt_reg_n_0_[0] ),
        .I1(clk_en_reg_n_0),
        .I2(state[0]),
        .I3(state[1]),
        .I4(\bit_cnt_reg_n_0_[1] ),
        .O(\bit_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFFFF00800000)) 
    \bit_cnt[2]_i_1 
       (.I0(\bit_cnt_reg_n_0_[1] ),
        .I1(\bit_cnt_reg_n_0_[0] ),
        .I2(clk_en_reg_n_0),
        .I3(state[0]),
        .I4(state[1]),
        .I5(\bit_cnt_reg_n_0_[2] ),
        .O(\bit_cnt[2]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_n_0),
        .D(\bit_cnt[0]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_n_0),
        .D(\bit_cnt[1]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset_n_0),
        .D(\bit_cnt[2]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    busy_i_1
       (.I0(\data_reg[7]_0 ),
        .I1(clk_en_reg_n_0),
        .I2(state[1]),
        .I3(state[0]),
        .I4(busy),
        .O(busy_i_1_n_0));
  FDPE #(
    .INIT(1'b0)) 
    busy_reg
       (.C(clk),
        .CE(1'b1),
        .D(busy_i_1_n_0),
        .PRE(reset_n_0),
        .Q(busy));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_cnt0_carry
       (.CI(1'b0),
        .CO({clk_cnt0_carry_n_0,clk_cnt0_carry_n_1,clk_cnt0_carry_n_2,clk_cnt0_carry_n_3}),
        .CYINIT(clk_cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({clk_cnt0_carry_n_4,clk_cnt0_carry_n_5,clk_cnt0_carry_n_6,clk_cnt0_carry_n_7}),
        .S(clk_cnt[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_cnt0_carry__0
       (.CI(clk_cnt0_carry_n_0),
        .CO({clk_cnt0_carry__0_n_0,clk_cnt0_carry__0_n_1,clk_cnt0_carry__0_n_2,clk_cnt0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({clk_cnt0_carry__0_n_4,clk_cnt0_carry__0_n_5,clk_cnt0_carry__0_n_6,clk_cnt0_carry__0_n_7}),
        .S(clk_cnt[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_cnt0_carry__1
       (.CI(clk_cnt0_carry__0_n_0),
        .CO({clk_cnt0_carry__1_n_0,clk_cnt0_carry__1_n_1,clk_cnt0_carry__1_n_2,clk_cnt0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({clk_cnt0_carry__1_n_4,clk_cnt0_carry__1_n_5,clk_cnt0_carry__1_n_6,clk_cnt0_carry__1_n_7}),
        .S(clk_cnt[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_cnt0_carry__2
       (.CI(clk_cnt0_carry__1_n_0),
        .CO(NLW_clk_cnt0_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_clk_cnt0_carry__2_O_UNCONNECTED[3:1],clk_cnt0_carry__2_n_7}),
        .S({1'b0,1'b0,1'b0,clk_cnt[13]}));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_cnt[0]_i_1 
       (.I0(\clk_cnt[0]_i_2_n_0 ),
        .I1(clk_cnt[0]),
        .O(clk_cnt_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFBFFF)) 
    \clk_cnt[0]_i_2 
       (.I0(\clk_cnt[0]_i_3_n_0 ),
        .I1(clk_cnt[5]),
        .I2(clk_cnt[4]),
        .I3(clk_cnt[7]),
        .I4(clk_cnt[6]),
        .I5(\clk_cnt[0]_i_4_n_0 ),
        .O(\clk_cnt[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \clk_cnt[0]_i_3 
       (.I0(clk_cnt[9]),
        .I1(clk_cnt[8]),
        .I2(clk_cnt[11]),
        .I3(clk_cnt[10]),
        .O(\clk_cnt[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \clk_cnt[0]_i_4 
       (.I0(clk_cnt[1]),
        .I1(clk_cnt[12]),
        .I2(clk_cnt[13]),
        .I3(clk_cnt[3]),
        .I4(clk_cnt[2]),
        .O(\clk_cnt[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \clk_cnt[13]_i_1 
       (.I0(\clk_cnt[0]_i_2_n_0 ),
        .I1(clk_cnt[0]),
        .O(\clk_cnt[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_cnt_0),
        .Q(clk_cnt[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_cnt0_carry__1_n_6),
        .Q(clk_cnt[10]),
        .R(\clk_cnt[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_cnt0_carry__1_n_5),
        .Q(clk_cnt[11]),
        .R(\clk_cnt[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_cnt0_carry__1_n_4),
        .Q(clk_cnt[12]),
        .R(\clk_cnt[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_cnt0_carry__2_n_7),
        .Q(clk_cnt[13]),
        .R(\clk_cnt[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_cnt0_carry_n_7),
        .Q(clk_cnt[1]),
        .R(\clk_cnt[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_cnt0_carry_n_6),
        .Q(clk_cnt[2]),
        .R(\clk_cnt[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_cnt0_carry_n_5),
        .Q(clk_cnt[3]),
        .R(\clk_cnt[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_cnt0_carry_n_4),
        .Q(clk_cnt[4]),
        .R(\clk_cnt[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_cnt0_carry__0_n_7),
        .Q(clk_cnt[5]),
        .R(\clk_cnt[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_cnt0_carry__0_n_6),
        .Q(clk_cnt[6]),
        .R(\clk_cnt[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_cnt0_carry__0_n_5),
        .Q(clk_cnt[7]),
        .R(\clk_cnt[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_cnt0_carry__0_n_4),
        .Q(clk_cnt[8]),
        .R(\clk_cnt[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_cnt0_carry__1_n_7),
        .Q(clk_cnt[9]),
        .R(\clk_cnt[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    clk_en_reg
       (.C(clk),
        .CE(1'b1),
        .D(\clk_cnt[13]_i_1_n_0 ),
        .Q(clk_en_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00080000)) 
    \data[7]_i_1 
       (.I0(reset_n),
        .I1(\data_reg[7]_0 ),
        .I2(state[0]),
        .I3(state[1]),
        .I4(clk_en_reg_n_0),
        .O(\data[7]_i_1_n_0 ));
  FDRE \data_reg[0] 
       (.C(clk),
        .CE(\data[7]_i_1_n_0 ),
        .D(Q[0]),
        .Q(\data_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \data_reg[1] 
       (.C(clk),
        .CE(\data[7]_i_1_n_0 ),
        .D(Q[1]),
        .Q(data0),
        .R(1'b0));
  FDRE \data_reg[2] 
       (.C(clk),
        .CE(\data[7]_i_1_n_0 ),
        .D(Q[2]),
        .Q(data1),
        .R(1'b0));
  FDRE \data_reg[3] 
       (.C(clk),
        .CE(\data[7]_i_1_n_0 ),
        .D(Q[3]),
        .Q(data2),
        .R(1'b0));
  FDRE \data_reg[4] 
       (.C(clk),
        .CE(\data[7]_i_1_n_0 ),
        .D(Q[4]),
        .Q(data3),
        .R(1'b0));
  FDRE \data_reg[5] 
       (.C(clk),
        .CE(\data[7]_i_1_n_0 ),
        .D(Q[5]),
        .Q(data4),
        .R(1'b0));
  FDRE \data_reg[6] 
       (.C(clk),
        .CE(\data[7]_i_1_n_0 ),
        .D(Q[6]),
        .Q(data5),
        .R(1'b0));
  FDRE \data_reg[7] 
       (.C(clk),
        .CE(\data[7]_i_1_n_0 ),
        .D(Q[7]),
        .Q(data6),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    sending_reg_i_2
       (.I0(reset_n),
        .O(reset_n_0));
endmodule

(* ORIG_REF_NAME = "UART_TX_user_logic" *) 
module Block_Diagram_UART_TX_user_logic_0_0_UART_TX_user_logic
   (sending_reg_reg_0,
    TX,
    reset_n,
    clk,
    tx_data);
  output sending_reg_reg_0;
  output TX;
  input reset_n;
  input clk;
  input [7:0]tx_data;

  wire \FSM_onehot_send_data_steps_reg_n_0_[0] ;
  wire \FSM_onehot_send_data_steps_reg_n_0_[2] ;
  wire TX;
  wire [7:0]TX_data_reg;
  wire TX_master_inst_n_1;
  wire TX_master_inst_n_2;
  wire TX_master_inst_n_3;
  wire TX_master_inst_n_4;
  wire clear_new_data;
  wire clear_new_data_i_1_n_0;
  wire clk;
  wire reset_n;
  wire sending_reg;
  wire sending_reg_i_1_n_0;
  wire sending_reg_reg_0;
  wire [7:0]tx_data;

  (* FSM_ENCODED_STATES = "idle:001,send_byte:010,next_byte:100," *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_send_data_steps_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(TX_master_inst_n_4),
        .PRE(TX_master_inst_n_1),
        .Q(\FSM_onehot_send_data_steps_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "idle:001,send_byte:010,next_byte:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_send_data_steps_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(TX_master_inst_n_1),
        .D(TX_master_inst_n_3),
        .Q(sending_reg));
  (* FSM_ENCODED_STATES = "idle:001,send_byte:010,next_byte:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_send_data_steps_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(TX_master_inst_n_1),
        .D(TX_master_inst_n_2),
        .Q(\FSM_onehot_send_data_steps_reg_n_0_[2] ));
  FDCE \TX_data_reg_reg[0] 
       (.C(clk),
        .CE(sending_reg),
        .CLR(TX_master_inst_n_1),
        .D(tx_data[0]),
        .Q(TX_data_reg[0]));
  FDCE \TX_data_reg_reg[1] 
       (.C(clk),
        .CE(sending_reg),
        .CLR(TX_master_inst_n_1),
        .D(tx_data[1]),
        .Q(TX_data_reg[1]));
  FDCE \TX_data_reg_reg[2] 
       (.C(clk),
        .CE(sending_reg),
        .CLR(TX_master_inst_n_1),
        .D(tx_data[2]),
        .Q(TX_data_reg[2]));
  FDCE \TX_data_reg_reg[3] 
       (.C(clk),
        .CE(sending_reg),
        .CLR(TX_master_inst_n_1),
        .D(tx_data[3]),
        .Q(TX_data_reg[3]));
  FDCE \TX_data_reg_reg[4] 
       (.C(clk),
        .CE(sending_reg),
        .CLR(TX_master_inst_n_1),
        .D(tx_data[4]),
        .Q(TX_data_reg[4]));
  FDCE \TX_data_reg_reg[5] 
       (.C(clk),
        .CE(sending_reg),
        .CLR(TX_master_inst_n_1),
        .D(tx_data[5]),
        .Q(TX_data_reg[5]));
  FDCE \TX_data_reg_reg[6] 
       (.C(clk),
        .CE(sending_reg),
        .CLR(TX_master_inst_n_1),
        .D(tx_data[6]),
        .Q(TX_data_reg[6]));
  FDCE \TX_data_reg_reg[7] 
       (.C(clk),
        .CE(sending_reg),
        .CLR(TX_master_inst_n_1),
        .D(tx_data[7]),
        .Q(TX_data_reg[7]));
  Block_Diagram_UART_TX_user_logic_0_0_UART_TX_master TX_master_inst
       (.\FSM_onehot_send_data_steps_reg[2] (TX_master_inst_n_2),
        .\FSM_onehot_send_data_steps_reg[2]_0 (TX_master_inst_n_3),
        .\FSM_onehot_send_data_steps_reg[2]_1 (TX_master_inst_n_4),
        .\FSM_onehot_send_data_steps_reg[2]_2 (\FSM_onehot_send_data_steps_reg_n_0_[2] ),
        .\FSM_onehot_send_data_steps_reg[2]_3 (\FSM_onehot_send_data_steps_reg_n_0_[0] ),
        .Q(TX_data_reg),
        .TX(TX),
        .clear_new_data(clear_new_data),
        .clk(clk),
        .\data_reg[7]_0 (sending_reg_reg_0),
        .reset_n(reset_n),
        .reset_n_0(TX_master_inst_n_1),
        .sending_reg(sending_reg));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h1A)) 
    clear_new_data_i_1
       (.I0(\FSM_onehot_send_data_steps_reg_n_0_[0] ),
        .I1(\FSM_onehot_send_data_steps_reg_n_0_[2] ),
        .I2(clear_new_data),
        .O(clear_new_data_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    clear_new_data_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(TX_master_inst_n_1),
        .D(clear_new_data_i_1_n_0),
        .Q(clear_new_data));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hBFAA)) 
    sending_reg_i_1
       (.I0(sending_reg),
        .I1(clear_new_data),
        .I2(\FSM_onehot_send_data_steps_reg_n_0_[0] ),
        .I3(sending_reg_reg_0),
        .O(sending_reg_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    sending_reg_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(TX_master_inst_n_1),
        .D(sending_reg_i_1_n_0),
        .Q(sending_reg_reg_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
