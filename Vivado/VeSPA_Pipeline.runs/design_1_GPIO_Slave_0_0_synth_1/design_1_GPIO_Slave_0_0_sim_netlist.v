// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Wed Jun  5 18:07:54 2024
// Host        : mariolima-CREF-XX running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_GPIO_Slave_0_0_sim_netlist.v
// Design      : design_1_GPIO_Slave_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GPIO_PORT
   (D,
    i_RAddr,
    Q,
    \o_RData_reg[7] ,
    pin_in);
  output [7:0]D;
  input [1:0]i_RAddr;
  input [7:0]Q;
  input [7:0]\o_RData_reg[7] ;
  input [3:0]pin_in;

  wire [7:0]D;
  wire [7:0]Q;
  (* RTL_KEEP = "true" *) wire gpion_0_0;
  (* RTL_KEEP = "true" *) wire gpion_0_1;
  (* RTL_KEEP = "true" *) wire gpion_0_2;
  (* RTL_KEEP = "true" *) wire gpion_0_3;
  wire [1:0]i_RAddr;
  wire [7:0]\o_RData_reg[7] ;
  (* RTL_KEEP = "true" *) wire [3:0]pin_in;

  LUT1 #(
    .INIT(2'h2)) 
    gpioi_0
       (.I0(1'b0),
        .O(gpion_0_0));
  LUT1 #(
    .INIT(2'h2)) 
    gpioi_1
       (.I0(1'b0),
        .O(gpion_0_1));
  LUT1 #(
    .INIT(2'h2)) 
    gpioi_2
       (.I0(1'b0),
        .O(gpion_0_2));
  LUT1 #(
    .INIT(2'h2)) 
    gpioi_3
       (.I0(1'b0),
        .O(gpion_0_3));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \o_RData[0]_i_1 
       (.I0(gpion_0_3),
        .I1(i_RAddr[1]),
        .I2(Q[0]),
        .I3(i_RAddr[0]),
        .I4(\o_RData_reg[7] [0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \o_RData[1]_i_1 
       (.I0(gpion_0_2),
        .I1(i_RAddr[1]),
        .I2(Q[1]),
        .I3(i_RAddr[0]),
        .I4(\o_RData_reg[7] [1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \o_RData[2]_i_1 
       (.I0(gpion_0_1),
        .I1(i_RAddr[1]),
        .I2(Q[2]),
        .I3(i_RAddr[0]),
        .I4(\o_RData_reg[7] [2]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \o_RData[3]_i_1 
       (.I0(gpion_0_0),
        .I1(i_RAddr[1]),
        .I2(Q[3]),
        .I3(i_RAddr[0]),
        .I4(\o_RData_reg[7] [3]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \o_RData[4]_i_1 
       (.I0(pin_in[0]),
        .I1(i_RAddr[1]),
        .I2(Q[4]),
        .I3(i_RAddr[0]),
        .I4(\o_RData_reg[7] [4]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \o_RData[5]_i_1 
       (.I0(pin_in[1]),
        .I1(i_RAddr[1]),
        .I2(Q[5]),
        .I3(i_RAddr[0]),
        .I4(\o_RData_reg[7] [5]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \o_RData[6]_i_1 
       (.I0(pin_in[2]),
        .I1(i_RAddr[1]),
        .I2(Q[6]),
        .I3(i_RAddr[0]),
        .I4(\o_RData_reg[7] [6]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \o_RData[7]_i_2 
       (.I0(pin_in[3]),
        .I1(i_RAddr[1]),
        .I2(Q[7]),
        .I3(i_RAddr[0]),
        .I4(\o_RData_reg[7] [7]),
        .O(D[7]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GPIO_Slave
   (pin_out,
    o_RData,
    o_Err,
    pin_in,
    i_Rst,
    i_WData,
    i_Clk,
    i_WAddr,
    i_WEnable,
    i_REnable,
    i_RAddr);
  output [3:0]pin_out;
  output [7:0]o_RData;
  output o_Err;
  input [3:0]pin_in;
  input i_Rst;
  input [7:0]i_WData;
  input i_Clk;
  input [31:0]i_WAddr;
  input i_WEnable;
  input i_REnable;
  input [31:0]i_RAddr;

  wire [7:4]Wr_Output;
  wire Wr_Output_0;
  wire \Wr_Output_reg_n_0_[0] ;
  wire \Wr_Output_reg_n_0_[1] ;
  wire \Wr_Output_reg_n_0_[2] ;
  wire \Wr_Output_reg_n_0_[3] ;
  wire direction;
  wire \direction_reg_n_0_[0] ;
  wire \direction_reg_n_0_[1] ;
  wire \direction_reg_n_0_[2] ;
  wire \direction_reg_n_0_[3] ;
  wire \direction_reg_n_0_[4] ;
  wire \direction_reg_n_0_[5] ;
  wire \direction_reg_n_0_[6] ;
  wire \direction_reg_n_0_[7] ;
  wire gpio_n_0;
  wire gpio_n_1;
  wire gpio_n_2;
  wire gpio_n_3;
  wire gpio_n_4;
  wire gpio_n_5;
  wire gpio_n_6;
  wire gpio_n_7;
  wire i_Clk;
  wire [31:0]i_RAddr;
  wire i_REnable;
  wire i_Rst;
  wire [31:0]i_WAddr;
  wire [7:0]i_WData;
  wire i_WEnable;
  wire o_Err;
  wire o_Err_i_10_n_0;
  wire o_Err_i_1_n_0;
  wire o_Err_i_2_n_0;
  wire o_Err_i_3_n_0;
  wire o_Err_i_4_n_0;
  wire o_Err_i_5_n_0;
  wire o_Err_i_6_n_0;
  wire o_Err_i_7_n_0;
  wire o_Err_i_8_n_0;
  wire o_Err_i_9_n_0;
  wire [7:0]o_RData;
  wire \o_RData[7]_i_10_n_0 ;
  wire \o_RData[7]_i_11_n_0 ;
  wire \o_RData[7]_i_1_n_0 ;
  wire \o_RData[7]_i_3_n_0 ;
  wire \o_RData[7]_i_4_n_0 ;
  wire \o_RData[7]_i_5_n_0 ;
  wire \o_RData[7]_i_6_n_0 ;
  wire \o_RData[7]_i_7_n_0 ;
  wire \o_RData[7]_i_8_n_0 ;
  wire \o_RData[7]_i_9_n_0 ;
  wire [3:0]pin_in;
  wire [3:0]pin_out;

  LUT2 #(
    .INIT(4'h2)) 
    \Wr_Output[7]_i_1 
       (.I0(i_WAddr[0]),
        .I1(o_Err_i_2_n_0),
        .O(Wr_Output_0));
  FDRE \Wr_Output_reg[0] 
       (.C(i_Clk),
        .CE(Wr_Output_0),
        .D(i_WData[0]),
        .Q(\Wr_Output_reg_n_0_[0] ),
        .R(i_Rst));
  FDRE \Wr_Output_reg[1] 
       (.C(i_Clk),
        .CE(Wr_Output_0),
        .D(i_WData[1]),
        .Q(\Wr_Output_reg_n_0_[1] ),
        .R(i_Rst));
  FDRE \Wr_Output_reg[2] 
       (.C(i_Clk),
        .CE(Wr_Output_0),
        .D(i_WData[2]),
        .Q(\Wr_Output_reg_n_0_[2] ),
        .R(i_Rst));
  FDRE \Wr_Output_reg[3] 
       (.C(i_Clk),
        .CE(Wr_Output_0),
        .D(i_WData[3]),
        .Q(\Wr_Output_reg_n_0_[3] ),
        .R(i_Rst));
  FDRE \Wr_Output_reg[4] 
       (.C(i_Clk),
        .CE(Wr_Output_0),
        .D(i_WData[4]),
        .Q(Wr_Output[4]),
        .R(i_Rst));
  FDRE \Wr_Output_reg[5] 
       (.C(i_Clk),
        .CE(Wr_Output_0),
        .D(i_WData[5]),
        .Q(Wr_Output[5]),
        .R(i_Rst));
  FDRE \Wr_Output_reg[6] 
       (.C(i_Clk),
        .CE(Wr_Output_0),
        .D(i_WData[6]),
        .Q(Wr_Output[6]),
        .R(i_Rst));
  FDRE \Wr_Output_reg[7] 
       (.C(i_Clk),
        .CE(Wr_Output_0),
        .D(i_WData[7]),
        .Q(Wr_Output[7]),
        .R(i_Rst));
  LUT2 #(
    .INIT(4'h1)) 
    \direction[7]_i_1 
       (.I0(i_WAddr[0]),
        .I1(o_Err_i_2_n_0),
        .O(direction));
  FDRE \direction_reg[0] 
       (.C(i_Clk),
        .CE(direction),
        .D(i_WData[0]),
        .Q(\direction_reg_n_0_[0] ),
        .R(i_Rst));
  FDRE \direction_reg[1] 
       (.C(i_Clk),
        .CE(direction),
        .D(i_WData[1]),
        .Q(\direction_reg_n_0_[1] ),
        .R(i_Rst));
  FDRE \direction_reg[2] 
       (.C(i_Clk),
        .CE(direction),
        .D(i_WData[2]),
        .Q(\direction_reg_n_0_[2] ),
        .R(i_Rst));
  FDRE \direction_reg[3] 
       (.C(i_Clk),
        .CE(direction),
        .D(i_WData[3]),
        .Q(\direction_reg_n_0_[3] ),
        .R(i_Rst));
  FDRE \direction_reg[4] 
       (.C(i_Clk),
        .CE(direction),
        .D(i_WData[4]),
        .Q(\direction_reg_n_0_[4] ),
        .R(i_Rst));
  FDRE \direction_reg[5] 
       (.C(i_Clk),
        .CE(direction),
        .D(i_WData[5]),
        .Q(\direction_reg_n_0_[5] ),
        .R(i_Rst));
  FDRE \direction_reg[6] 
       (.C(i_Clk),
        .CE(direction),
        .D(i_WData[6]),
        .Q(\direction_reg_n_0_[6] ),
        .R(i_Rst));
  FDRE \direction_reg[7] 
       (.C(i_Clk),
        .CE(direction),
        .D(i_WData[7]),
        .Q(\direction_reg_n_0_[7] ),
        .R(i_Rst));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GPIO_PORT gpio
       (.D({gpio_n_0,gpio_n_1,gpio_n_2,gpio_n_3,gpio_n_4,gpio_n_5,gpio_n_6,gpio_n_7}),
        .Q({Wr_Output,\Wr_Output_reg_n_0_[3] ,\Wr_Output_reg_n_0_[2] ,\Wr_Output_reg_n_0_[1] ,\Wr_Output_reg_n_0_[0] }),
        .i_RAddr(i_RAddr[1:0]),
        .\o_RData_reg[7] ({\direction_reg_n_0_[7] ,\direction_reg_n_0_[6] ,\direction_reg_n_0_[5] ,\direction_reg_n_0_[4] ,\direction_reg_n_0_[3] ,\direction_reg_n_0_[2] ,\direction_reg_n_0_[1] ,\direction_reg_n_0_[0] }),
        .pin_in(pin_in));
  LUT6 #(
    .INIT(64'h0000000002FE0202)) 
    o_Err_i_1
       (.I0(o_Err),
        .I1(i_REnable),
        .I2(i_WEnable),
        .I3(\o_RData[7]_i_3_n_0 ),
        .I4(o_Err_i_2_n_0),
        .I5(i_Rst),
        .O(o_Err_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    o_Err_i_10
       (.I0(i_WAddr[25]),
        .I1(i_WAddr[7]),
        .I2(i_WAddr[31]),
        .I3(i_WAddr[24]),
        .O(o_Err_i_10_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    o_Err_i_2
       (.I0(o_Err_i_3_n_0),
        .I1(o_Err_i_4_n_0),
        .I2(o_Err_i_5_n_0),
        .I3(o_Err_i_6_n_0),
        .O(o_Err_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    o_Err_i_3
       (.I0(i_WAddr[12]),
        .I1(i_WEnable),
        .I2(i_WAddr[9]),
        .I3(i_WAddr[15]),
        .I4(o_Err_i_7_n_0),
        .O(o_Err_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    o_Err_i_4
       (.I0(i_WAddr[1]),
        .I1(i_WAddr[29]),
        .I2(i_WAddr[16]),
        .I3(i_WAddr[22]),
        .I4(o_Err_i_8_n_0),
        .O(o_Err_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    o_Err_i_5
       (.I0(i_WAddr[17]),
        .I1(i_WAddr[23]),
        .I2(i_WAddr[3]),
        .I3(i_WAddr[28]),
        .I4(o_Err_i_9_n_0),
        .O(o_Err_i_5_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    o_Err_i_6
       (.I0(i_WAddr[6]),
        .I1(i_WAddr[30]),
        .I2(i_WAddr[2]),
        .I3(i_WAddr[27]),
        .I4(o_Err_i_10_n_0),
        .O(o_Err_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    o_Err_i_7
       (.I0(i_WAddr[21]),
        .I1(i_WAddr[19]),
        .I2(i_WAddr[10]),
        .I3(i_WAddr[5]),
        .O(o_Err_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    o_Err_i_8
       (.I0(i_WAddr[18]),
        .I1(i_WAddr[14]),
        .I2(i_WAddr[26]),
        .I3(i_WAddr[4]),
        .O(o_Err_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    o_Err_i_9
       (.I0(i_WAddr[20]),
        .I1(i_WAddr[8]),
        .I2(i_WAddr[13]),
        .I3(i_WAddr[11]),
        .O(o_Err_i_9_n_0));
  FDRE o_Err_reg
       (.C(i_Clk),
        .CE(1'b1),
        .D(o_Err_i_1_n_0),
        .Q(o_Err),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h08)) 
    \o_RData[7]_i_1 
       (.I0(\o_RData[7]_i_3_n_0 ),
        .I1(i_REnable),
        .I2(i_Rst),
        .O(\o_RData[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \o_RData[7]_i_10 
       (.I0(i_RAddr[29]),
        .I1(i_RAddr[2]),
        .I2(i_RAddr[27]),
        .I3(i_RAddr[3]),
        .O(\o_RData[7]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \o_RData[7]_i_11 
       (.I0(i_RAddr[28]),
        .I1(i_RAddr[7]),
        .I2(i_RAddr[22]),
        .I3(i_RAddr[8]),
        .O(\o_RData[7]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \o_RData[7]_i_3 
       (.I0(\o_RData[7]_i_4_n_0 ),
        .I1(\o_RData[7]_i_5_n_0 ),
        .I2(\o_RData[7]_i_6_n_0 ),
        .I3(\o_RData[7]_i_7_n_0 ),
        .O(\o_RData[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \o_RData[7]_i_4 
       (.I0(i_RAddr[10]),
        .I1(i_RAddr[12]),
        .I2(i_RAddr[30]),
        .I3(\o_RData[7]_i_8_n_0 ),
        .I4(\o_RData[7]_i_9_n_0 ),
        .O(\o_RData[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \o_RData[7]_i_5 
       (.I0(i_RAddr[11]),
        .I1(i_RAddr[19]),
        .I2(i_WEnable),
        .I3(i_RAddr[14]),
        .I4(\o_RData[7]_i_10_n_0 ),
        .O(\o_RData[7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \o_RData[7]_i_6 
       (.I0(i_RAddr[4]),
        .I1(i_RAddr[31]),
        .I2(i_RAddr[5]),
        .I3(i_RAddr[9]),
        .I4(\o_RData[7]_i_11_n_0 ),
        .O(\o_RData[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \o_RData[7]_i_7 
       (.I0(i_RAddr[0]),
        .I1(i_RAddr[1]),
        .I2(i_RAddr[13]),
        .I3(i_RAddr[21]),
        .I4(i_RAddr[15]),
        .I5(i_RAddr[25]),
        .O(\o_RData[7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \o_RData[7]_i_8 
       (.I0(i_RAddr[26]),
        .I1(i_RAddr[23]),
        .I2(i_RAddr[24]),
        .I3(i_RAddr[20]),
        .O(\o_RData[7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \o_RData[7]_i_9 
       (.I0(i_RAddr[16]),
        .I1(i_RAddr[6]),
        .I2(i_RAddr[18]),
        .I3(i_RAddr[17]),
        .O(\o_RData[7]_i_9_n_0 ));
  FDRE \o_RData_reg[0] 
       (.C(i_Clk),
        .CE(\o_RData[7]_i_1_n_0 ),
        .D(gpio_n_7),
        .Q(o_RData[0]),
        .R(1'b0));
  FDRE \o_RData_reg[1] 
       (.C(i_Clk),
        .CE(\o_RData[7]_i_1_n_0 ),
        .D(gpio_n_6),
        .Q(o_RData[1]),
        .R(1'b0));
  FDRE \o_RData_reg[2] 
       (.C(i_Clk),
        .CE(\o_RData[7]_i_1_n_0 ),
        .D(gpio_n_5),
        .Q(o_RData[2]),
        .R(1'b0));
  FDRE \o_RData_reg[3] 
       (.C(i_Clk),
        .CE(\o_RData[7]_i_1_n_0 ),
        .D(gpio_n_4),
        .Q(o_RData[3]),
        .R(1'b0));
  FDRE \o_RData_reg[4] 
       (.C(i_Clk),
        .CE(\o_RData[7]_i_1_n_0 ),
        .D(gpio_n_3),
        .Q(o_RData[4]),
        .R(1'b0));
  FDRE \o_RData_reg[5] 
       (.C(i_Clk),
        .CE(\o_RData[7]_i_1_n_0 ),
        .D(gpio_n_2),
        .Q(o_RData[5]),
        .R(1'b0));
  FDRE \o_RData_reg[6] 
       (.C(i_Clk),
        .CE(\o_RData[7]_i_1_n_0 ),
        .D(gpio_n_1),
        .Q(o_RData[6]),
        .R(1'b0));
  FDRE \o_RData_reg[7] 
       (.C(i_Clk),
        .CE(\o_RData[7]_i_1_n_0 ),
        .D(gpio_n_0),
        .Q(o_RData[7]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \pin_out[0]_INST_0 
       (.I0(\Wr_Output_reg_n_0_[0] ),
        .I1(\direction_reg_n_0_[0] ),
        .O(pin_out[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \pin_out[1]_INST_0 
       (.I0(\Wr_Output_reg_n_0_[1] ),
        .I1(\direction_reg_n_0_[1] ),
        .O(pin_out[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \pin_out[2]_INST_0 
       (.I0(\Wr_Output_reg_n_0_[2] ),
        .I1(\direction_reg_n_0_[2] ),
        .O(pin_out[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \pin_out[3]_INST_0 
       (.I0(\Wr_Output_reg_n_0_[3] ),
        .I1(\direction_reg_n_0_[3] ),
        .O(pin_out[3]));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_GPIO_Slave_0_0,GPIO_Slave,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "GPIO_Slave,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (i_Clk,
    i_Rst,
    i_WEnable,
    i_WAddr,
    i_WData,
    i_REnable,
    i_RAddr,
    o_RData,
    o_Err,
    pin_in,
    pin_out);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_Clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_Clk, ASSOCIATED_RESET i_Rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_CPU_0_0_o_Clk, INSERT_VIP 0" *) input i_Clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_Rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_Rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input i_Rst;
  input i_WEnable;
  input [31:0]i_WAddr;
  input [31:0]i_WData;
  input i_REnable;
  input [31:0]i_RAddr;
  output [31:0]o_RData;
  output o_Err;
  input [3:0]pin_in;
  output [3:0]pin_out;

  wire \<const0> ;
  wire i_Clk;
  wire [31:0]i_RAddr;
  wire i_REnable;
  wire i_Rst;
  wire [31:0]i_WAddr;
  wire [31:0]i_WData;
  wire i_WEnable;
  wire o_Err;
  wire [7:0]\^o_RData ;
  wire [3:0]pin_in;
  wire [3:0]pin_out;

  assign o_RData[31] = \<const0> ;
  assign o_RData[30] = \<const0> ;
  assign o_RData[29] = \<const0> ;
  assign o_RData[28] = \<const0> ;
  assign o_RData[27] = \<const0> ;
  assign o_RData[26] = \<const0> ;
  assign o_RData[25] = \<const0> ;
  assign o_RData[24] = \<const0> ;
  assign o_RData[23] = \<const0> ;
  assign o_RData[22] = \<const0> ;
  assign o_RData[21] = \<const0> ;
  assign o_RData[20] = \<const0> ;
  assign o_RData[19] = \<const0> ;
  assign o_RData[18] = \<const0> ;
  assign o_RData[17] = \<const0> ;
  assign o_RData[16] = \<const0> ;
  assign o_RData[15] = \<const0> ;
  assign o_RData[14] = \<const0> ;
  assign o_RData[13] = \<const0> ;
  assign o_RData[12] = \<const0> ;
  assign o_RData[11] = \<const0> ;
  assign o_RData[10] = \<const0> ;
  assign o_RData[9] = \<const0> ;
  assign o_RData[8] = \<const0> ;
  assign o_RData[7:0] = \^o_RData [7:0];
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GPIO_Slave inst
       (.i_Clk(i_Clk),
        .i_RAddr(i_RAddr),
        .i_REnable(i_REnable),
        .i_Rst(i_Rst),
        .i_WAddr(i_WAddr),
        .i_WData(i_WData[7:0]),
        .i_WEnable(i_WEnable),
        .o_Err(o_Err),
        .o_RData(\^o_RData ),
        .pin_in(pin_in),
        .pin_out(pin_out));
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