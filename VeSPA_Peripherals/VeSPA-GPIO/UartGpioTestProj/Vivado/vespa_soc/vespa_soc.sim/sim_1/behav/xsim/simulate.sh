#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2023.1 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Sun Apr 21 19:48:24 WEST 2024
# SW Build 3865809 on Sun May  7 15:04:56 MDT 2023
#
# IP Build 3864474 on Sun May  7 20:36:21 MDT 2023
#
# usage: simulate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# simulate design
echo "xsim soc_tb_behav -key {Behavioral:sim_1:Functional:soc_tb} -tclbatch soc_tb.tcl -protoinst "protoinst_files/vespa_soc.protoinst" -view /home/bruno/gitreps/VeSPA_UartTest/Vivado/vespa_soc/soc_tb_behav.wcfg -log simulate.log"
xsim soc_tb_behav -key {Behavioral:sim_1:Functional:soc_tb} -tclbatch soc_tb.tcl -protoinst "protoinst_files/vespa_soc.protoinst" -view /home/bruno/gitreps/VeSPA_UartTest/Vivado/vespa_soc/soc_tb_behav.wcfg -log simulate.log
