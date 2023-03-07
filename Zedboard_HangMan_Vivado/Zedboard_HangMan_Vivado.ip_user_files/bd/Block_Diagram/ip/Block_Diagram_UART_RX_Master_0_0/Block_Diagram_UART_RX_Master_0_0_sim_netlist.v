// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Mar  6 17:22:13 2023
// Host        : Alienware running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/My_Repos/EE316_Zedboard_HangMan/Zedboard_HangMan_Vivado/Zedboard_HangMan_Vivado.gen/sources_1/bd/Block_Diagram/ip/Block_Diagram_UART_RX_Master_0_0/Block_Diagram_UART_RX_Master_0_0_sim_netlist.v
// Design      : Block_Diagram_UART_RX_Master_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Block_Diagram_UART_RX_Master_0_0,UART_RX_Master,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "UART_RX_Master,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module Block_Diagram_UART_RX_Master_0_0
   (RX,
    clk,
    reset_n,
    RX_data,
    error);
  input RX;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n;
  output [7:0]RX_data;
  output error;

  wire RX;
  wire [7:0]RX_data;
  wire clk;
  wire error;
  wire reset_n;

  Block_Diagram_UART_RX_Master_0_0_UART_RX_Master U0
       (.RX(RX),
        .RX_data(RX_data),
        .clk(clk),
        .error(error),
        .reset_n(reset_n));
endmodule

(* ORIG_REF_NAME = "UART_RX_Master" *) 
module Block_Diagram_UART_RX_Master_0_0_UART_RX_Master
   (RX_data,
    error,
    RX,
    clk,
    reset_n);
  output [7:0]RX_data;
  output error;
  input RX;
  input clk;
  input reset_n;

  wire FSM_sequential_start_state_i_1_n_0;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_3_n_0 ;
  wire \FSM_sequential_state[2]_i_10_n_0 ;
  wire \FSM_sequential_state[2]_i_11_n_0 ;
  wire \FSM_sequential_state[2]_i_12_n_0 ;
  wire \FSM_sequential_state[2]_i_13_n_0 ;
  wire \FSM_sequential_state[2]_i_14_n_0 ;
  wire \FSM_sequential_state[2]_i_15_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_4_n_0 ;
  wire \FSM_sequential_state[2]_i_5_n_0 ;
  wire \FSM_sequential_state[2]_i_6_n_0 ;
  wire \FSM_sequential_state[2]_i_7_n_0 ;
  wire \FSM_sequential_state[2]_i_8_n_0 ;
  wire \FSM_sequential_state[2]_i_9_n_0 ;
  wire RX;
  wire [7:0]RX_data;
  wire \RX_data[7]_i_1_n_0 ;
  wire clk;
  wire count;
  wire count0_carry__0_n_0;
  wire count0_carry__0_n_1;
  wire count0_carry__0_n_2;
  wire count0_carry__0_n_3;
  wire count0_carry__0_n_4;
  wire count0_carry__0_n_5;
  wire count0_carry__0_n_6;
  wire count0_carry__0_n_7;
  wire count0_carry__1_n_0;
  wire count0_carry__1_n_1;
  wire count0_carry__1_n_2;
  wire count0_carry__1_n_3;
  wire count0_carry__1_n_4;
  wire count0_carry__1_n_5;
  wire count0_carry__1_n_6;
  wire count0_carry__1_n_7;
  wire count0_carry__2_n_0;
  wire count0_carry__2_n_1;
  wire count0_carry__2_n_2;
  wire count0_carry__2_n_3;
  wire count0_carry__2_n_4;
  wire count0_carry__2_n_5;
  wire count0_carry__2_n_6;
  wire count0_carry__2_n_7;
  wire count0_carry__3_n_0;
  wire count0_carry__3_n_1;
  wire count0_carry__3_n_2;
  wire count0_carry__3_n_3;
  wire count0_carry__3_n_4;
  wire count0_carry__3_n_5;
  wire count0_carry__3_n_6;
  wire count0_carry__3_n_7;
  wire count0_carry__4_n_0;
  wire count0_carry__4_n_1;
  wire count0_carry__4_n_2;
  wire count0_carry__4_n_3;
  wire count0_carry__4_n_4;
  wire count0_carry__4_n_5;
  wire count0_carry__4_n_6;
  wire count0_carry__4_n_7;
  wire count0_carry__5_n_0;
  wire count0_carry__5_n_1;
  wire count0_carry__5_n_2;
  wire count0_carry__5_n_3;
  wire count0_carry__5_n_4;
  wire count0_carry__5_n_5;
  wire count0_carry__5_n_6;
  wire count0_carry__5_n_7;
  wire count0_carry__6_n_2;
  wire count0_carry__6_n_3;
  wire count0_carry__6_n_5;
  wire count0_carry__6_n_6;
  wire count0_carry__6_n_7;
  wire count0_carry_n_0;
  wire count0_carry_n_1;
  wire count0_carry_n_2;
  wire count0_carry_n_3;
  wire count0_carry_n_4;
  wire count0_carry_n_5;
  wire count0_carry_n_6;
  wire count0_carry_n_7;
  wire \count[0]_i_1_n_0 ;
  wire \count[10]_i_1_n_0 ;
  wire \count[11]_i_1_n_0 ;
  wire \count[12]_i_1_n_0 ;
  wire \count[13]_i_1_n_0 ;
  wire \count[13]_i_2_n_0 ;
  wire \count[14]_i_1_n_0 ;
  wire \count[15]_i_1_n_0 ;
  wire \count[16]_i_1_n_0 ;
  wire \count[17]_i_1_n_0 ;
  wire \count[18]_i_1_n_0 ;
  wire \count[19]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[20]_i_1_n_0 ;
  wire \count[21]_i_1_n_0 ;
  wire \count[22]_i_1_n_0 ;
  wire \count[23]_i_1_n_0 ;
  wire \count[24]_i_1_n_0 ;
  wire \count[25]_i_1_n_0 ;
  wire \count[26]_i_1_n_0 ;
  wire \count[27]_i_1_n_0 ;
  wire \count[28]_i_1_n_0 ;
  wire \count[29]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count[30]_i_1_n_0 ;
  wire \count[31]_i_2_n_0 ;
  wire \count[31]_i_3_n_0 ;
  wire \count[3]_i_1_n_0 ;
  wire \count[4]_i_1_n_0 ;
  wire \count[5]_i_1_n_0 ;
  wire \count[6]_i_1_n_0 ;
  wire \count[7]_i_1_n_0 ;
  wire \count[8]_i_1_n_0 ;
  wire \count[9]_i_1_n_0 ;
  wire data_bit;
  wire \data_bit[0]_i_1_n_0 ;
  wire \data_bit[1]_i_1_n_0 ;
  wire \data_bit[2]_i_1_n_0 ;
  wire \data_bit_reg_n_0_[0] ;
  wire \data_bit_reg_n_0_[1] ;
  wire \data_bit_reg_n_0_[2] ;
  wire \data_reg[0]_i_1_n_0 ;
  wire \data_reg[1]_i_1_n_0 ;
  wire \data_reg[2]_i_1_n_0 ;
  wire \data_reg[3]_i_1_n_0 ;
  wire \data_reg[4]_i_1_n_0 ;
  wire \data_reg[5]_i_1_n_0 ;
  wire \data_reg[6]_i_1_n_0 ;
  wire \data_reg[7]_i_1_n_0 ;
  wire \data_reg_reg_n_0_[0] ;
  wire \data_reg_reg_n_0_[1] ;
  wire \data_reg_reg_n_0_[2] ;
  wire \data_reg_reg_n_0_[3] ;
  wire \data_reg_reg_n_0_[4] ;
  wire \data_reg_reg_n_0_[5] ;
  wire \data_reg_reg_n_0_[6] ;
  wire \data_reg_reg_n_0_[7] ;
  wire error;
  wire reset_n;
  wire [31:0]sel0;
  wire start_state1_carry__0_n_0;
  wire start_state1_carry__0_n_1;
  wire start_state1_carry__0_n_2;
  wire start_state1_carry__0_n_3;
  wire start_state1_carry__1_n_0;
  wire start_state1_carry__1_n_1;
  wire start_state1_carry__1_n_2;
  wire start_state1_carry__1_n_3;
  wire start_state1_carry__2_n_1;
  wire start_state1_carry__2_n_2;
  wire start_state1_carry__2_n_3;
  wire start_state1_carry_i_1__0_n_0;
  wire start_state1_carry_i_1__1_n_0;
  wire start_state1_carry_i_1__2_n_0;
  wire start_state1_carry_i_1_n_0;
  wire start_state1_carry_i_2__0_n_0;
  wire start_state1_carry_i_2__1_n_0;
  wire start_state1_carry_i_2__2_n_0;
  wire start_state1_carry_i_2_n_0;
  wire start_state1_carry_i_3__0_n_0;
  wire start_state1_carry_i_3__1_n_0;
  wire start_state1_carry_i_3__2_n_0;
  wire start_state1_carry_i_3_n_0;
  wire start_state1_carry_i_4__0_n_0;
  wire start_state1_carry_i_4__1_n_0;
  wire start_state1_carry_i_4_n_0;
  wire start_state1_carry_i_5__0_n_0;
  wire start_state1_carry_i_5_n_0;
  wire start_state1_carry_i_6__0_n_0;
  wire start_state1_carry_i_6_n_0;
  wire start_state1_carry_i_7_n_0;
  wire start_state1_carry_n_0;
  wire start_state1_carry_n_1;
  wire start_state1_carry_n_2;
  wire start_state1_carry_n_3;
  wire [0:0]start_state_reg;
  wire state1_carry__0_i_1_n_0;
  wire state1_carry__0_i_2_n_0;
  wire state1_carry__0_i_3_n_0;
  wire state1_carry__0_i_4_n_0;
  wire state1_carry__0_i_5_n_0;
  wire state1_carry__0_n_0;
  wire state1_carry__0_n_1;
  wire state1_carry__0_n_2;
  wire state1_carry__0_n_3;
  wire state1_carry__1_i_1_n_0;
  wire state1_carry__1_i_2_n_0;
  wire state1_carry__1_i_3_n_0;
  wire state1_carry__1_i_4_n_0;
  wire state1_carry__1_n_0;
  wire state1_carry__1_n_1;
  wire state1_carry__1_n_2;
  wire state1_carry__1_n_3;
  wire state1_carry__2_i_1_n_0;
  wire state1_carry__2_i_2_n_0;
  wire state1_carry__2_n_2;
  wire state1_carry__2_n_3;
  wire state1_carry_i_1_n_0;
  wire state1_carry_i_2_n_0;
  wire state1_carry_i_3_n_0;
  wire state1_carry_i_4_n_0;
  wire state1_carry_i_5_n_0;
  wire state1_carry_i_6_n_0;
  wire state1_carry_i_7_n_0;
  wire state1_carry_n_0;
  wire state1_carry_n_1;
  wire state1_carry_n_2;
  wire state1_carry_n_3;
  wire [2:0]state__0;
  wire [2:1]state__1;
  wire [3:2]NLW_count0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_count0_carry__6_O_UNCONNECTED;
  wire [3:0]NLW_start_state1_carry_O_UNCONNECTED;
  wire [3:0]NLW_start_state1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_start_state1_carry__1_O_UNCONNECTED;
  wire [3:3]NLW_start_state1_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_start_state1_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_state1_carry_O_UNCONNECTED;
  wire [3:0]NLW_state1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_state1_carry__1_O_UNCONNECTED;
  wire [3:2]NLW_state1_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_state1_carry__2_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFB00FB00FB00FB44)) 
    FSM_sequential_start_state_i_1
       (.I0(state__0[1]),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(state1_carry__2_n_2),
        .I3(start_state_reg),
        .I4(start_state1_carry__2_n_1),
        .I5(RX),
        .O(FSM_sequential_start_state_i_1_n_0));
  (* FSM_ENCODED_STATES = "start_rising:010,get_data:100,start_trigger_confirmed:1,start_trigger:0,start_rising_confirmed:011" *) 
  FDRE #(
    .INIT(1'b0)) 
    FSM_sequential_start_state_reg
       (.C(clk),
        .CE(1'b1),
        .D(FSM_sequential_start_state_i_1_n_0),
        .Q(start_state_reg),
        .R(\FSM_sequential_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h110010EE)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state[2]_i_4_n_0 ),
        .I1(\FSM_sequential_state[2]_i_5_n_0 ),
        .I2(\FSM_sequential_state[2]_i_6_n_0 ),
        .I3(state__0[0]),
        .I4(state__0[2]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABAAABABA8AAA8A8)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state__1[1]),
        .I1(\FSM_sequential_state[2]_i_4_n_0 ),
        .I2(\FSM_sequential_state[2]_i_5_n_0 ),
        .I3(\FSM_sequential_state[2]_i_6_n_0 ),
        .I4(\FSM_sequential_state[1]_i_3_n_0 ),
        .I5(state__0[1]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h004A)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(state__0[1]),
        .I1(start_state_reg),
        .I2(state__0[0]),
        .I3(state__0[2]),
        .O(state__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(state__0[0]),
        .I1(state__0[2]),
        .O(\FSM_sequential_state[1]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(reset_n),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_sequential_state[2]_i_10 
       (.I0(sel0[10]),
        .I1(sel0[11]),
        .I2(sel0[6]),
        .I3(sel0[7]),
        .I4(\FSM_sequential_state[2]_i_14_n_0 ),
        .O(\FSM_sequential_state[2]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \FSM_sequential_state[2]_i_11 
       (.I0(sel0[19]),
        .I1(sel0[20]),
        .I2(sel0[9]),
        .I3(sel0[17]),
        .I4(\FSM_sequential_state[2]_i_15_n_0 ),
        .O(\FSM_sequential_state[2]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[2]_i_12 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .O(\FSM_sequential_state[2]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hFDFFFFFF)) 
    \FSM_sequential_state[2]_i_13 
       (.I0(state__0[1]),
        .I1(sel0[30]),
        .I2(sel0[31]),
        .I3(sel0[14]),
        .I4(sel0[8]),
        .O(\FSM_sequential_state[2]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \FSM_sequential_state[2]_i_14 
       (.I0(sel0[13]),
        .I1(sel0[12]),
        .I2(sel0[29]),
        .I3(sel0[28]),
        .O(\FSM_sequential_state[2]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[2]_i_15 
       (.I0(sel0[27]),
        .I1(sel0[25]),
        .I2(sel0[5]),
        .I3(sel0[4]),
        .O(\FSM_sequential_state[2]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hABABABABA8AAA8A8)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(state__1[2]),
        .I1(\FSM_sequential_state[2]_i_4_n_0 ),
        .I2(\FSM_sequential_state[2]_i_5_n_0 ),
        .I3(\FSM_sequential_state[2]_i_6_n_0 ),
        .I4(state__0[0]),
        .I5(state__0[2]),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(RX),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .O(state__1[2]));
  LUT6 #(
    .INIT(64'hFF00FF00F000704F)) 
    \FSM_sequential_state[2]_i_4 
       (.I0(state1_carry__2_n_2),
        .I1(start_state_reg),
        .I2(state__0[0]),
        .I3(RX),
        .I4(state__0[1]),
        .I5(state__0[2]),
        .O(\FSM_sequential_state[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000000C0D0001)) 
    \FSM_sequential_state[2]_i_5 
       (.I0(state__0[0]),
        .I1(RX),
        .I2(state1_carry__2_n_2),
        .I3(state__0[2]),
        .I4(state__0[1]),
        .I5(\FSM_sequential_state[2]_i_7_n_0 ),
        .O(\FSM_sequential_state[2]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[2]_i_6 
       (.I0(\FSM_sequential_state[2]_i_8_n_0 ),
        .I1(\FSM_sequential_state[2]_i_9_n_0 ),
        .I2(\FSM_sequential_state[2]_i_10_n_0 ),
        .I3(\FSM_sequential_state[2]_i_11_n_0 ),
        .O(\FSM_sequential_state[2]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_sequential_state[2]_i_7 
       (.I0(\data_bit_reg_n_0_[1] ),
        .I1(\data_bit_reg_n_0_[0] ),
        .I2(\data_bit_reg_n_0_[2] ),
        .O(\FSM_sequential_state[2]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \FSM_sequential_state[2]_i_8 
       (.I0(sel0[24]),
        .I1(sel0[26]),
        .I2(sel0[22]),
        .I3(sel0[23]),
        .I4(\FSM_sequential_state[2]_i_12_n_0 ),
        .O(\FSM_sequential_state[2]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    \FSM_sequential_state[2]_i_9 
       (.I0(\FSM_sequential_state[2]_i_13_n_0 ),
        .I1(sel0[18]),
        .I2(sel0[21]),
        .I3(sel0[15]),
        .I4(sel0[16]),
        .O(\FSM_sequential_state[2]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "start:001,stop:011,read_data:010,error_state:100,idle:000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state__0[0]),
        .R(\FSM_sequential_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "start:001,stop:011,read_data:010,error_state:100,idle:000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state__0[1]),
        .R(\FSM_sequential_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "start:001,stop:011,read_data:010,error_state:100,idle:000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[2]_i_2_n_0 ),
        .Q(state__0[2]),
        .R(\FSM_sequential_state[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \RX_data[7]_i_1 
       (.I0(state__0[1]),
        .I1(reset_n),
        .I2(RX),
        .I3(state__0[2]),
        .I4(state__0[0]),
        .O(\RX_data[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \RX_data_reg[0] 
       (.C(clk),
        .CE(\RX_data[7]_i_1_n_0 ),
        .D(\data_reg_reg_n_0_[0] ),
        .Q(RX_data[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RX_data_reg[1] 
       (.C(clk),
        .CE(\RX_data[7]_i_1_n_0 ),
        .D(\data_reg_reg_n_0_[1] ),
        .Q(RX_data[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RX_data_reg[2] 
       (.C(clk),
        .CE(\RX_data[7]_i_1_n_0 ),
        .D(\data_reg_reg_n_0_[2] ),
        .Q(RX_data[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RX_data_reg[3] 
       (.C(clk),
        .CE(\RX_data[7]_i_1_n_0 ),
        .D(\data_reg_reg_n_0_[3] ),
        .Q(RX_data[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RX_data_reg[4] 
       (.C(clk),
        .CE(\RX_data[7]_i_1_n_0 ),
        .D(\data_reg_reg_n_0_[4] ),
        .Q(RX_data[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RX_data_reg[5] 
       (.C(clk),
        .CE(\RX_data[7]_i_1_n_0 ),
        .D(\data_reg_reg_n_0_[5] ),
        .Q(RX_data[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RX_data_reg[6] 
       (.C(clk),
        .CE(\RX_data[7]_i_1_n_0 ),
        .D(\data_reg_reg_n_0_[6] ),
        .Q(RX_data[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RX_data_reg[7] 
       (.C(clk),
        .CE(\RX_data[7]_i_1_n_0 ),
        .D(\data_reg_reg_n_0_[7] ),
        .Q(RX_data[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry
       (.CI(1'b0),
        .CO({count0_carry_n_0,count0_carry_n_1,count0_carry_n_2,count0_carry_n_3}),
        .CYINIT(sel0[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry_n_4,count0_carry_n_5,count0_carry_n_6,count0_carry_n_7}),
        .S(sel0[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__0
       (.CI(count0_carry_n_0),
        .CO({count0_carry__0_n_0,count0_carry__0_n_1,count0_carry__0_n_2,count0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry__0_n_4,count0_carry__0_n_5,count0_carry__0_n_6,count0_carry__0_n_7}),
        .S(sel0[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__1
       (.CI(count0_carry__0_n_0),
        .CO({count0_carry__1_n_0,count0_carry__1_n_1,count0_carry__1_n_2,count0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry__1_n_4,count0_carry__1_n_5,count0_carry__1_n_6,count0_carry__1_n_7}),
        .S(sel0[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__2
       (.CI(count0_carry__1_n_0),
        .CO({count0_carry__2_n_0,count0_carry__2_n_1,count0_carry__2_n_2,count0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry__2_n_4,count0_carry__2_n_5,count0_carry__2_n_6,count0_carry__2_n_7}),
        .S(sel0[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__3
       (.CI(count0_carry__2_n_0),
        .CO({count0_carry__3_n_0,count0_carry__3_n_1,count0_carry__3_n_2,count0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry__3_n_4,count0_carry__3_n_5,count0_carry__3_n_6,count0_carry__3_n_7}),
        .S(sel0[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__4
       (.CI(count0_carry__3_n_0),
        .CO({count0_carry__4_n_0,count0_carry__4_n_1,count0_carry__4_n_2,count0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry__4_n_4,count0_carry__4_n_5,count0_carry__4_n_6,count0_carry__4_n_7}),
        .S(sel0[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__5
       (.CI(count0_carry__4_n_0),
        .CO({count0_carry__5_n_0,count0_carry__5_n_1,count0_carry__5_n_2,count0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry__5_n_4,count0_carry__5_n_5,count0_carry__5_n_6,count0_carry__5_n_7}),
        .S(sel0[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 count0_carry__6
       (.CI(count0_carry__5_n_0),
        .CO({NLW_count0_carry__6_CO_UNCONNECTED[3:2],count0_carry__6_n_2,count0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_count0_carry__6_O_UNCONNECTED[3],count0_carry__6_n_5,count0_carry__6_n_6,count0_carry__6_n_7}),
        .S({1'b0,sel0[31:29]}));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[0]_i_1 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(sel0[0]),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[10]_i_1 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(count0_carry__1_n_6),
        .O(\count[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88888F88)) 
    \count[11]_i_1 
       (.I0(count0_carry__1_n_5),
        .I1(\count[13]_i_2_n_0 ),
        .I2(state__0[1]),
        .I3(start_state_reg),
        .I4(state1_carry__2_n_2),
        .O(\count[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[12]_i_1 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(count0_carry__1_n_4),
        .O(\count[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88888F88)) 
    \count[13]_i_1 
       (.I0(count0_carry__2_n_7),
        .I1(\count[13]_i_2_n_0 ),
        .I2(state__0[1]),
        .I3(start_state_reg),
        .I4(state1_carry__2_n_2),
        .O(\count[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0E0EFE0EFEFEFE0E)) 
    \count[13]_i_2 
       (.I0(start_state1_carry__2_n_1),
        .I1(start_state_reg),
        .I2(state__0[1]),
        .I3(state1_carry__2_n_2),
        .I4(state__0[0]),
        .I5(RX),
        .O(\count[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[14]_i_1 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(count0_carry__2_n_6),
        .O(\count[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[15]_i_1 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(count0_carry__2_n_5),
        .O(\count[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[16]_i_1 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(count0_carry__2_n_4),
        .O(\count[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[17]_i_1 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(count0_carry__3_n_7),
        .O(\count[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[18]_i_1 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(count0_carry__3_n_6),
        .O(\count[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[19]_i_1 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(count0_carry__3_n_5),
        .O(\count[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[1]_i_1 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(count0_carry_n_7),
        .O(\count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[20]_i_1 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(count0_carry__3_n_4),
        .O(\count[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[21]_i_1 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(count0_carry__4_n_7),
        .O(\count[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[22]_i_1 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(count0_carry__4_n_6),
        .O(\count[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[23]_i_1 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(count0_carry__4_n_5),
        .O(\count[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[24]_i_1 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(count0_carry__4_n_4),
        .O(\count[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[25]_i_1 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(count0_carry__5_n_7),
        .O(\count[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[26]_i_1 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(count0_carry__5_n_6),
        .O(\count[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[27]_i_1 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(count0_carry__5_n_5),
        .O(\count[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[28]_i_1 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(count0_carry__5_n_4),
        .O(\count[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[29]_i_1 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(count0_carry__6_n_7),
        .O(\count[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[2]_i_1 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(count0_carry_n_6),
        .O(\count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[30]_i_1 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(count0_carry__6_n_6),
        .O(\count[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FC00B800F000B8)) 
    \count[31]_i_1 
       (.I0(\FSM_sequential_state[2]_i_6_n_0 ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(state__0[2]),
        .I4(RX),
        .I5(start_state_reg),
        .O(count));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[31]_i_2 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(count0_carry__6_n_5),
        .O(\count[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7F7F7F7040404F40)) 
    \count[31]_i_3 
       (.I0(RX),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(start_state1_carry__2_n_1),
        .I4(start_state_reg),
        .I5(state1_carry__2_n_2),
        .O(\count[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[3]_i_1 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(count0_carry_n_5),
        .O(\count[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88888F88)) 
    \count[4]_i_1 
       (.I0(count0_carry_n_4),
        .I1(\count[13]_i_2_n_0 ),
        .I2(state__0[1]),
        .I3(start_state_reg),
        .I4(state1_carry__2_n_2),
        .O(\count[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88888F88)) 
    \count[5]_i_1 
       (.I0(count0_carry__0_n_7),
        .I1(\count[13]_i_2_n_0 ),
        .I2(state__0[1]),
        .I3(start_state_reg),
        .I4(state1_carry__2_n_2),
        .O(\count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[6]_i_1 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(count0_carry__0_n_6),
        .O(\count[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88888F88)) 
    \count[7]_i_1 
       (.I0(count0_carry__0_n_5),
        .I1(\count[13]_i_2_n_0 ),
        .I2(state__0[1]),
        .I3(start_state_reg),
        .I4(state1_carry__2_n_2),
        .O(\count[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[8]_i_1 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(count0_carry__0_n_4),
        .O(\count[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[9]_i_1 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(count0_carry__1_n_7),
        .O(\count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(count),
        .D(\count[0]_i_1_n_0 ),
        .Q(sel0[0]),
        .R(\FSM_sequential_state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(clk),
        .CE(count),
        .D(\count[10]_i_1_n_0 ),
        .Q(sel0[10]),
        .R(\FSM_sequential_state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(clk),
        .CE(count),
        .D(\count[11]_i_1_n_0 ),
        .Q(sel0[11]),
        .R(\FSM_sequential_state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(clk),
        .CE(count),
        .D(\count[12]_i_1_n_0 ),
        .Q(sel0[12]),
        .R(\FSM_sequential_state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(clk),
        .CE(count),
        .D(\count[13]_i_1_n_0 ),
        .Q(sel0[13]),
        .R(\FSM_sequential_state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(clk),
        .CE(count),
        .D(\count[14]_i_1_n_0 ),
        .Q(sel0[14]),
        .R(\FSM_sequential_state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(clk),
        .CE(count),
        .D(\count[15]_i_1_n_0 ),
        .Q(sel0[15]),
        .R(\FSM_sequential_state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(clk),
        .CE(count),
        .D(\count[16]_i_1_n_0 ),
        .Q(sel0[16]),
        .R(\FSM_sequential_state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(clk),
        .CE(count),
        .D(\count[17]_i_1_n_0 ),
        .Q(sel0[17]),
        .R(\FSM_sequential_state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(clk),
        .CE(count),
        .D(\count[18]_i_1_n_0 ),
        .Q(sel0[18]),
        .R(\FSM_sequential_state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(clk),
        .CE(count),
        .D(\count[19]_i_1_n_0 ),
        .Q(sel0[19]),
        .R(\FSM_sequential_state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(count),
        .D(\count[1]_i_1_n_0 ),
        .Q(sel0[1]),
        .R(\FSM_sequential_state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[20] 
       (.C(clk),
        .CE(count),
        .D(\count[20]_i_1_n_0 ),
        .Q(sel0[20]),
        .R(\FSM_sequential_state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[21] 
       (.C(clk),
        .CE(count),
        .D(\count[21]_i_1_n_0 ),
        .Q(sel0[21]),
        .R(\FSM_sequential_state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[22] 
       (.C(clk),
        .CE(count),
        .D(\count[22]_i_1_n_0 ),
        .Q(sel0[22]),
        .R(\FSM_sequential_state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[23] 
       (.C(clk),
        .CE(count),
        .D(\count[23]_i_1_n_0 ),
        .Q(sel0[23]),
        .R(\FSM_sequential_state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[24] 
       (.C(clk),
        .CE(count),
        .D(\count[24]_i_1_n_0 ),
        .Q(sel0[24]),
        .R(\FSM_sequential_state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[25] 
       (.C(clk),
        .CE(count),
        .D(\count[25]_i_1_n_0 ),
        .Q(sel0[25]),
        .R(\FSM_sequential_state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[26] 
       (.C(clk),
        .CE(count),
        .D(\count[26]_i_1_n_0 ),
        .Q(sel0[26]),
        .R(\FSM_sequential_state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[27] 
       (.C(clk),
        .CE(count),
        .D(\count[27]_i_1_n_0 ),
        .Q(sel0[27]),
        .R(\FSM_sequential_state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[28] 
       (.C(clk),
        .CE(count),
        .D(\count[28]_i_1_n_0 ),
        .Q(sel0[28]),
        .R(\FSM_sequential_state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[29] 
       (.C(clk),
        .CE(count),
        .D(\count[29]_i_1_n_0 ),
        .Q(sel0[29]),
        .R(\FSM_sequential_state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(count),
        .D(\count[2]_i_1_n_0 ),
        .Q(sel0[2]),
        .R(\FSM_sequential_state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[30] 
       (.C(clk),
        .CE(count),
        .D(\count[30]_i_1_n_0 ),
        .Q(sel0[30]),
        .R(\FSM_sequential_state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[31] 
       (.C(clk),
        .CE(count),
        .D(\count[31]_i_2_n_0 ),
        .Q(sel0[31]),
        .R(\FSM_sequential_state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk),
        .CE(count),
        .D(\count[3]_i_1_n_0 ),
        .Q(sel0[3]),
        .R(\FSM_sequential_state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk),
        .CE(count),
        .D(\count[4]_i_1_n_0 ),
        .Q(sel0[4]),
        .R(\FSM_sequential_state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk),
        .CE(count),
        .D(\count[5]_i_1_n_0 ),
        .Q(sel0[5]),
        .R(\FSM_sequential_state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk),
        .CE(count),
        .D(\count[6]_i_1_n_0 ),
        .Q(sel0[6]),
        .R(\FSM_sequential_state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk),
        .CE(count),
        .D(\count[7]_i_1_n_0 ),
        .Q(sel0[7]),
        .R(\FSM_sequential_state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clk),
        .CE(count),
        .D(\count[8]_i_1_n_0 ),
        .Q(sel0[8]),
        .R(\FSM_sequential_state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(clk),
        .CE(count),
        .D(\count[9]_i_1_n_0 ),
        .Q(sel0[9]),
        .R(\FSM_sequential_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFEF0010)) 
    \data_bit[0]_i_1 
       (.I0(state__0[2]),
        .I1(state1_carry__2_n_2),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .I4(\data_bit_reg_n_0_[0] ),
        .O(\data_bit[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \data_bit[1]_i_1 
       (.I0(\data_bit_reg_n_0_[0] ),
        .I1(data_bit),
        .I2(\data_bit_reg_n_0_[1] ),
        .O(\data_bit[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \data_bit[2]_i_1 
       (.I0(\data_bit_reg_n_0_[1] ),
        .I1(\data_bit_reg_n_0_[0] ),
        .I2(data_bit),
        .I3(\data_bit_reg_n_0_[2] ),
        .O(\data_bit[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \data_bit[2]_i_2 
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(state1_carry__2_n_2),
        .I3(state__0[2]),
        .O(data_bit));
  FDRE #(
    .INIT(1'b0)) 
    \data_bit_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_bit[0]_i_1_n_0 ),
        .Q(\data_bit_reg_n_0_[0] ),
        .R(\FSM_sequential_state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_bit_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_bit[1]_i_1_n_0 ),
        .Q(\data_bit_reg_n_0_[1] ),
        .R(\FSM_sequential_state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_bit_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_bit[2]_i_1_n_0 ),
        .Q(\data_bit_reg_n_0_[2] ),
        .R(\FSM_sequential_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \data_reg[0]_i_1 
       (.I0(RX),
        .I1(\data_bit_reg_n_0_[2] ),
        .I2(\data_bit_reg_n_0_[1] ),
        .I3(\data_bit_reg_n_0_[0] ),
        .I4(data_bit),
        .I5(\data_reg_reg_n_0_[0] ),
        .O(\data_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \data_reg[1]_i_1 
       (.I0(RX),
        .I1(\data_bit_reg_n_0_[0] ),
        .I2(\data_bit_reg_n_0_[1] ),
        .I3(\data_bit_reg_n_0_[2] ),
        .I4(data_bit),
        .I5(\data_reg_reg_n_0_[1] ),
        .O(\data_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \data_reg[2]_i_1 
       (.I0(RX),
        .I1(\data_bit_reg_n_0_[2] ),
        .I2(\data_bit_reg_n_0_[1] ),
        .I3(\data_bit_reg_n_0_[0] ),
        .I4(data_bit),
        .I5(\data_reg_reg_n_0_[2] ),
        .O(\data_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \data_reg[3]_i_1 
       (.I0(RX),
        .I1(\data_bit_reg_n_0_[2] ),
        .I2(\data_bit_reg_n_0_[0] ),
        .I3(\data_bit_reg_n_0_[1] ),
        .I4(data_bit),
        .I5(\data_reg_reg_n_0_[3] ),
        .O(\data_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \data_reg[4]_i_1 
       (.I0(RX),
        .I1(\data_bit_reg_n_0_[1] ),
        .I2(\data_bit_reg_n_0_[2] ),
        .I3(\data_bit_reg_n_0_[0] ),
        .I4(data_bit),
        .I5(\data_reg_reg_n_0_[4] ),
        .O(\data_reg[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \data_reg[5]_i_1 
       (.I0(RX),
        .I1(\data_bit_reg_n_0_[0] ),
        .I2(\data_bit_reg_n_0_[2] ),
        .I3(\data_bit_reg_n_0_[1] ),
        .I4(data_bit),
        .I5(\data_reg_reg_n_0_[5] ),
        .O(\data_reg[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \data_reg[6]_i_1 
       (.I0(RX),
        .I1(\data_bit_reg_n_0_[2] ),
        .I2(\data_bit_reg_n_0_[1] ),
        .I3(\data_bit_reg_n_0_[0] ),
        .I4(data_bit),
        .I5(\data_reg_reg_n_0_[6] ),
        .O(\data_reg[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \data_reg[7]_i_1 
       (.I0(RX),
        .I1(data_bit),
        .I2(\data_bit_reg_n_0_[2] ),
        .I3(\data_bit_reg_n_0_[0] ),
        .I4(\data_bit_reg_n_0_[1] ),
        .I5(\data_reg_reg_n_0_[7] ),
        .O(\data_reg[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_reg[0]_i_1_n_0 ),
        .Q(\data_reg_reg_n_0_[0] ),
        .R(\FSM_sequential_state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_reg[1]_i_1_n_0 ),
        .Q(\data_reg_reg_n_0_[1] ),
        .R(\FSM_sequential_state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_reg[2]_i_1_n_0 ),
        .Q(\data_reg_reg_n_0_[2] ),
        .R(\FSM_sequential_state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_reg[3]_i_1_n_0 ),
        .Q(\data_reg_reg_n_0_[3] ),
        .R(\FSM_sequential_state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_reg[4]_i_1_n_0 ),
        .Q(\data_reg_reg_n_0_[4] ),
        .R(\FSM_sequential_state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_reg[5]_i_1_n_0 ),
        .Q(\data_reg_reg_n_0_[5] ),
        .R(\FSM_sequential_state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_reg[6]_i_1_n_0 ),
        .Q(\data_reg_reg_n_0_[6] ),
        .R(\FSM_sequential_state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_reg[7]_i_1_n_0 ),
        .Q(\data_reg_reg_n_0_[7] ),
        .R(\FSM_sequential_state[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    error_INST_0
       (.I0(state__0[1]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .O(error));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 start_state1_carry
       (.CI(1'b0),
        .CO({start_state1_carry_n_0,start_state1_carry_n_1,start_state1_carry_n_2,start_state1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,start_state1_carry_i_1_n_0,start_state1_carry_i_2_n_0,start_state1_carry_i_3_n_0}),
        .O(NLW_start_state1_carry_O_UNCONNECTED[3:0]),
        .S({start_state1_carry_i_4_n_0,start_state1_carry_i_5_n_0,start_state1_carry_i_6_n_0,start_state1_carry_i_7_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 start_state1_carry__0
       (.CI(start_state1_carry_n_0),
        .CO({start_state1_carry__0_n_0,start_state1_carry__0_n_1,start_state1_carry__0_n_2,start_state1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,start_state1_carry_i_1__1_n_0,start_state1_carry_i_2__0_n_0}),
        .O(NLW_start_state1_carry__0_O_UNCONNECTED[3:0]),
        .S({start_state1_carry_i_3__0_n_0,start_state1_carry_i_4__0_n_0,start_state1_carry_i_5__0_n_0,start_state1_carry_i_6__0_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 start_state1_carry__1
       (.CI(start_state1_carry__0_n_0),
        .CO({start_state1_carry__1_n_0,start_state1_carry__1_n_1,start_state1_carry__1_n_2,start_state1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_start_state1_carry__1_O_UNCONNECTED[3:0]),
        .S({start_state1_carry_i_1__2_n_0,start_state1_carry_i_2__2_n_0,start_state1_carry_i_3__1_n_0,start_state1_carry_i_4__1_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 start_state1_carry__2
       (.CI(start_state1_carry__1_n_0),
        .CO({NLW_start_state1_carry__2_CO_UNCONNECTED[3],start_state1_carry__2_n_1,start_state1_carry__2_n_2,start_state1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,sel0[31],1'b0,1'b0}),
        .O(NLW_start_state1_carry__2_O_UNCONNECTED[3:0]),
        .S({1'b0,start_state1_carry_i_1__0_n_0,start_state1_carry_i_2__1_n_0,start_state1_carry_i_3__2_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    start_state1_carry_i_1
       (.I0(sel0[7]),
        .I1(sel0[6]),
        .O(start_state1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    start_state1_carry_i_1__0
       (.I0(sel0[31]),
        .I1(sel0[30]),
        .O(start_state1_carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    start_state1_carry_i_1__1
       (.I0(sel0[12]),
        .I1(sel0[13]),
        .O(start_state1_carry_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    start_state1_carry_i_1__2
       (.I0(sel0[24]),
        .I1(sel0[25]),
        .O(start_state1_carry_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    start_state1_carry_i_2
       (.I0(sel0[5]),
        .I1(sel0[4]),
        .O(start_state1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    start_state1_carry_i_2__0
       (.I0(sel0[11]),
        .I1(sel0[10]),
        .O(start_state1_carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    start_state1_carry_i_2__1
       (.I0(sel0[29]),
        .I1(sel0[28]),
        .O(start_state1_carry_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    start_state1_carry_i_2__2
       (.I0(sel0[22]),
        .I1(sel0[23]),
        .O(start_state1_carry_i_2__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    start_state1_carry_i_3
       (.I0(sel0[3]),
        .O(start_state1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    start_state1_carry_i_3__0
       (.I0(sel0[16]),
        .I1(sel0[17]),
        .O(start_state1_carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    start_state1_carry_i_3__1
       (.I0(sel0[20]),
        .I1(sel0[21]),
        .O(start_state1_carry_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    start_state1_carry_i_3__2
       (.I0(sel0[26]),
        .I1(sel0[27]),
        .O(start_state1_carry_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    start_state1_carry_i_4
       (.I0(sel0[8]),
        .I1(sel0[9]),
        .O(start_state1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    start_state1_carry_i_4__0
       (.I0(sel0[14]),
        .I1(sel0[15]),
        .O(start_state1_carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    start_state1_carry_i_4__1
       (.I0(sel0[18]),
        .I1(sel0[19]),
        .O(start_state1_carry_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    start_state1_carry_i_5
       (.I0(sel0[6]),
        .I1(sel0[7]),
        .O(start_state1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    start_state1_carry_i_5__0
       (.I0(sel0[12]),
        .I1(sel0[13]),
        .O(start_state1_carry_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    start_state1_carry_i_6
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .O(start_state1_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    start_state1_carry_i_6__0
       (.I0(sel0[10]),
        .I1(sel0[11]),
        .O(start_state1_carry_i_6__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    start_state1_carry_i_7
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .O(start_state1_carry_i_7_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 state1_carry
       (.CI(1'b0),
        .CO({state1_carry_n_0,state1_carry_n_1,state1_carry_n_2,state1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({state1_carry_i_1_n_0,1'b0,state1_carry_i_2_n_0,state1_carry_i_3_n_0}),
        .O(NLW_state1_carry_O_UNCONNECTED[3:0]),
        .S({state1_carry_i_4_n_0,state1_carry_i_5_n_0,state1_carry_i_6_n_0,state1_carry_i_7_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 state1_carry__0
       (.CI(state1_carry_n_0),
        .CO({state1_carry__0_n_0,state1_carry__0_n_1,state1_carry__0_n_2,state1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,state1_carry__0_i_1_n_0}),
        .O(NLW_state1_carry__0_O_UNCONNECTED[3:0]),
        .S({state1_carry__0_i_2_n_0,state1_carry__0_i_3_n_0,state1_carry__0_i_4_n_0,state1_carry__0_i_5_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    state1_carry__0_i_1
       (.I0(sel0[13]),
        .O(state1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry__0_i_2
       (.I0(sel0[18]),
        .I1(sel0[19]),
        .O(state1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry__0_i_3
       (.I0(sel0[16]),
        .I1(sel0[17]),
        .O(state1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry__0_i_4
       (.I0(sel0[14]),
        .I1(sel0[15]),
        .O(state1_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    state1_carry__0_i_5
       (.I0(sel0[13]),
        .I1(sel0[12]),
        .O(state1_carry__0_i_5_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 state1_carry__1
       (.CI(state1_carry__0_n_0),
        .CO({state1_carry__1_n_0,state1_carry__1_n_1,state1_carry__1_n_2,state1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_state1_carry__1_O_UNCONNECTED[3:0]),
        .S({state1_carry__1_i_1_n_0,state1_carry__1_i_2_n_0,state1_carry__1_i_3_n_0,state1_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry__1_i_1
       (.I0(sel0[26]),
        .I1(sel0[27]),
        .O(state1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry__1_i_2
       (.I0(sel0[24]),
        .I1(sel0[25]),
        .O(state1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry__1_i_3
       (.I0(sel0[22]),
        .I1(sel0[23]),
        .O(state1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry__1_i_4
       (.I0(sel0[20]),
        .I1(sel0[21]),
        .O(state1_carry__1_i_4_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 state1_carry__2
       (.CI(state1_carry__1_n_0),
        .CO({NLW_state1_carry__2_CO_UNCONNECTED[3:2],state1_carry__2_n_2,state1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,sel0[31],1'b0}),
        .O(NLW_state1_carry__2_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,state1_carry__2_i_1_n_0,state1_carry__2_i_2_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry__2_i_1
       (.I0(sel0[31]),
        .I1(sel0[30]),
        .O(state1_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry__2_i_2
       (.I0(sel0[29]),
        .I1(sel0[28]),
        .O(state1_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state1_carry_i_1
       (.I0(sel0[11]),
        .O(state1_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state1_carry_i_2
       (.I0(sel0[7]),
        .O(state1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    state1_carry_i_3
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .O(state1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    state1_carry_i_4
       (.I0(sel0[11]),
        .I1(sel0[10]),
        .O(state1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry_i_5
       (.I0(sel0[8]),
        .I1(sel0[9]),
        .O(state1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    state1_carry_i_6
       (.I0(sel0[7]),
        .I1(sel0[6]),
        .O(state1_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    state1_carry_i_7
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .O(state1_carry_i_7_n_0));
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
