//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
//Date        : Sun Mar 24 19:40:50 2024
//Host        : mariolima-CREF-XX running 64-bit Ubuntu 22.04.4 LTS
//Command     : generate_target vespa_soc.bd
//Design      : vespa_soc
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "vespa_soc,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=vespa_soc,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=4,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "vespa_soc.hwdef" *) 
module vespa_soc
   (CLK,
    RST,
    uartRx,
    uartTx);
  input CLK;
  input RST;
  input uartRx;
  output uartTx;

  wire CLK_1;
  wire [31:0]CustomInterconnect_0_o_RAddr_0;
  wire [31:0]CustomInterconnect_0_o_RAddr_3;
  wire [31:0]CustomInterconnect_0_o_RData;
  wire CustomInterconnect_0_o_REnable_0;
  wire CustomInterconnect_0_o_REnable_3;
  wire [31:0]CustomInterconnect_0_o_WAddr_0;
  wire [31:0]CustomInterconnect_0_o_WAddr_3;
  wire [31:0]CustomInterconnect_0_o_WData_0;
  wire [31:0]CustomInterconnect_0_o_WData_3;
  wire CustomInterconnect_0_o_WEnable_0;
  wire CustomInterconnect_0_o_WEnable_3;
  wire DataMemory_0_o_MemBusy;
  wire [31:0]DataMemory_0_o_RData;
  wire RST_1;
  wire [31:0]UartSlave_0_o_RData;
  wire UartSlave_0_o_Tx;
  wire uartRx_1;
  wire vespa_cpu_0_o_Clk;
  wire [31:0]vespa_cpu_0_o_RAddr;
  wire vespa_cpu_0_o_REnable;
  wire vespa_cpu_0_o_Rst;
  wire [31:0]vespa_cpu_0_o_WAddr;
  wire [31:0]vespa_cpu_0_o_WData;
  wire vespa_cpu_0_o_WEnable;

  assign CLK_1 = CLK;
  assign RST_1 = RST;
  assign uartRx_1 = uartRx;
  assign uartTx = UartSlave_0_o_Tx;
  vespa_soc_CustomInterconnect_0_0 CustomInterconnect_0
       (.i_RAddr(vespa_cpu_0_o_RAddr),
        .i_RData_0(DataMemory_0_o_RData),
        .i_RData_1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_RData_2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_RData_3(UartSlave_0_o_RData),
        .i_RData_4({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_RData_5({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_RData_6({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_REnable(vespa_cpu_0_o_REnable),
        .i_WAddr(vespa_cpu_0_o_WAddr),
        .i_WData(vespa_cpu_0_o_WData),
        .i_WEnable(vespa_cpu_0_o_WEnable),
        .o_RAddr_0(CustomInterconnect_0_o_RAddr_0),
        .o_RAddr_3(CustomInterconnect_0_o_RAddr_3),
        .o_RData(CustomInterconnect_0_o_RData),
        .o_REnable_0(CustomInterconnect_0_o_REnable_0),
        .o_REnable_3(CustomInterconnect_0_o_REnable_3),
        .o_WAddr_0(CustomInterconnect_0_o_WAddr_0),
        .o_WAddr_3(CustomInterconnect_0_o_WAddr_3),
        .o_WData_0(CustomInterconnect_0_o_WData_0),
        .o_WData_3(CustomInterconnect_0_o_WData_3),
        .o_WEnable_0(CustomInterconnect_0_o_WEnable_0),
        .o_WEnable_3(CustomInterconnect_0_o_WEnable_3));
  vespa_soc_DataMemory_0_0 DataMemory_0
       (.i_Clk(vespa_cpu_0_o_Clk),
        .i_RAddr(CustomInterconnect_0_o_RAddr_0),
        .i_REnable(CustomInterconnect_0_o_REnable_0),
        .i_Rst(vespa_cpu_0_o_Rst),
        .i_WAddr(CustomInterconnect_0_o_WAddr_0),
        .i_WData(CustomInterconnect_0_o_WData_0),
        .i_WEnable(CustomInterconnect_0_o_WEnable_0),
        .o_MemBusy(DataMemory_0_o_MemBusy),
        .o_RData(DataMemory_0_o_RData));
  vespa_soc_UartSlave_0_0 UartSlave_0
       (.i_Clk(vespa_cpu_0_o_Clk),
        .i_RAddr(CustomInterconnect_0_o_RAddr_3),
        .i_REnable(CustomInterconnect_0_o_REnable_3),
        .i_Rst(vespa_cpu_0_o_Rst),
        .i_Rx(uartRx_1),
        .i_WAddr(CustomInterconnect_0_o_WAddr_3),
        .i_WData(CustomInterconnect_0_o_WData_3),
        .i_WEnable(CustomInterconnect_0_o_WEnable_3),
        .o_RData(UartSlave_0_o_RData),
        .o_Tx(UartSlave_0_o_Tx));
  vespa_soc_vespa_cpu_0_0 vespa_cpu_0
       (.data_mem_initialized(DataMemory_0_o_MemBusy),
        .i_Clk(CLK_1),
        .i_RData(CustomInterconnect_0_o_RData),
        .i_Rst(RST_1),
        .int_number({1'b0,1'b0}),
        .int_req(1'b0),
        .o_Clk(vespa_cpu_0_o_Clk),
        .o_RAddr(vespa_cpu_0_o_RAddr),
        .o_REnable(vespa_cpu_0_o_REnable),
        .o_Rst(vespa_cpu_0_o_Rst),
        .o_WAddr(vespa_cpu_0_o_WAddr),
        .o_WData(vespa_cpu_0_o_WData),
        .o_WEnable(vespa_cpu_0_o_WEnable));
endmodule
