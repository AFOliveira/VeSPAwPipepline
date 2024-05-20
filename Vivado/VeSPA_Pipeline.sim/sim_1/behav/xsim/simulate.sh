#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2023.1 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Mon May 20 10:15:55 WEST 2024
# SW Build 3865809 on Sun May  7 15:04:56 MDT 2023
#
# IP Build 3864474 on Sun May  7 20:36:21 MDT 2023
#
# usage: simulate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# simulate design
echo "xsim Pipeline_tb_behav -key {Behavioral:sim_1:Functional:Pipeline_tb} -tclbatch Pipeline_tb.tcl -view /home/mariolima/Desktop/vespa_git/VeSPA/Vivado/RegisterFile_TestBench_behav.wcfg -log simulate.log"
xsim Pipeline_tb_behav -key {Behavioral:sim_1:Functional:Pipeline_tb} -tclbatch Pipeline_tb.tcl -view /home/mariolima/Desktop/vespa_git/VeSPA/Vivado/RegisterFile_TestBench_behav.wcfg -log simulate.log

