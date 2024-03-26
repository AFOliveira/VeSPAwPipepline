-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
-- Date        : Sun Mar 24 19:05:03 2024
-- Host        : mariolima-CREF-XX running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/mariolima/Desktop/VESPA_SOC_V2/vespa_soc/vespa_soc.gen/sources_1/bd/vespa_soc/ip/vespa_soc_vespa_cpu_0_0/vespa_soc_vespa_cpu_0_0_stub.vhdl
-- Design      : vespa_soc_vespa_cpu_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity vespa_soc_vespa_cpu_0_0 is
  Port ( 
    i_Clk : in STD_LOGIC;
    i_Rst : in STD_LOGIC;
    o_Clk : out STD_LOGIC;
    o_Rst : out STD_LOGIC;
    o_WEnable : out STD_LOGIC;
    o_WAddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_WData : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_REnable : out STD_LOGIC;
    o_RAddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    i_RData : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_mem_initialized : in STD_LOGIC;
    int_req : in STD_LOGIC;
    int_number : in STD_LOGIC_VECTOR ( 1 downto 0 );
    int_ack_complete : out STD_LOGIC;
    int_ack_attended : out STD_LOGIC
  );

end vespa_soc_vespa_cpu_0_0;

architecture stub of vespa_soc_vespa_cpu_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "i_Clk,i_Rst,o_Clk,o_Rst,o_WEnable,o_WAddr[31:0],o_WData[31:0],o_REnable,o_RAddr[31:0],i_RData[31:0],data_mem_initialized,int_req,int_number[1:0],int_ack_complete,int_ack_attended";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "vespa_cpu,Vivado 2023.1";
begin
end;
