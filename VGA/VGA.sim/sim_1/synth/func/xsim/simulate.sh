#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2023.1.1 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Tue May 21 11:04:51 WEST 2024
# SW Build 3900603 on Fri Jun 16 19:30:25 MDT 2023
#
# IP Build 3900379 on Sat Jun 17 05:28:05 MDT 2023
#
# usage: simulate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# simulate design
echo "xsim VgaTopLevel_tb_func_synth -key {Post-Synthesis:sim_1:Functional:VgaTopLevel_tb} -tclbatch VgaTopLevel_tb.tcl -log simulate.log"
xsim VgaTopLevel_tb_func_synth -key {Post-Synthesis:sim_1:Functional:VgaTopLevel_tb} -tclbatch VgaTopLevel_tb.tcl -log simulate.log
