transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {/home/joseleite/Vivado_Projects/Vivado/VeSPA_Pipeline.cache/compile_simlib/riviera}
vlib riviera/xpm
vlib riviera/xil_defaultlib
vlib riviera/blk_mem_gen_v8_4_6

vlog -work xpm  -incr  +define+BUS_MSB=31  +define+BUS_WIDTH=32 "+incdir+../../../bd/design_1/ipshared/3cc4/src" "+incdir+../../../../VeSPA_Pipeline.gen/sources_1/bd/design_1/ipshared/3cc4/src" -l xpm -l xil_defaultlib -l blk_mem_gen_v8_4_6 \
"/media/joseleite/ExternDisk/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"/media/joseleite/ExternDisk/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -v2k5  +define+BUS_MSB=31  +define+BUS_WIDTH=32 "+incdir+../../../bd/design_1/ipshared/3cc4/src" "+incdir+../../../../VeSPA_Pipeline.gen/sources_1/bd/design_1/ipshared/3cc4/src" -l xpm -l xil_defaultlib -l blk_mem_gen_v8_4_6 \
"../../../bd/design_1/ipshared/762d/src/ps2_new.v" \
"../../../bd/design_1/ipshared/762d/src/custom_ps2_interface.v" \
"../../../bd/design_1/ip/design_1_PS2_Slave_0_0/sim/design_1_PS2_Slave_0_0.v" \
"../../../bd/design_1/ipshared/4038/src/timer.v" \
"../../../bd/design_1/ipshared/4038/src/timerSlave.v" \
"../../../bd/design_1/ip/design_1_timerSlave_0_0/sim/design_1_timerSlave_0_0.v" \

vlog -work blk_mem_gen_v8_4_6  -incr -v2k5  +define+BUS_MSB=31  +define+BUS_WIDTH=32 "+incdir+../../../bd/design_1/ipshared/3cc4/src" "+incdir+../../../../VeSPA_Pipeline.gen/sources_1/bd/design_1/ipshared/3cc4/src" -l xpm -l xil_defaultlib -l blk_mem_gen_v8_4_6 \
"../../../../VeSPA_Pipeline.gen/sources_1/bd/design_1/ip/design_1_DataMemory_0_0/src/VeSPA_RAM/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -v2k5  +define+BUS_MSB=31  +define+BUS_WIDTH=32 "+incdir+../../../bd/design_1/ipshared/3cc4/src" "+incdir+../../../../VeSPA_Pipeline.gen/sources_1/bd/design_1/ipshared/3cc4/src" -l xpm -l xil_defaultlib -l blk_mem_gen_v8_4_6 \
"../../../bd/design_1/ip/design_1_DataMemory_0_0/src/VeSPA_RAM/sim/VeSPA_RAM.v" \
"../../../bd/design_1/ipshared/bf0f/src/SlaveInterface.v" \
"../../../bd/design_1/ip/design_1_DataMemory_0_0/sim/design_1_DataMemory_0_0.v" \
"../../../bd/design_1/ipshared/8a87/src/UartBaudRate.v" \
"../../../bd/design_1/ipshared/8a87/src/UartRx.v" \
"../../../bd/design_1/ipshared/8a87/src/UartTx.v" \
"../../../bd/design_1/ipshared/8a87/src/Uart.v" \
"../../../bd/design_1/ip/design_1_UartSlave_0_0/sim/design_1_UartSlave_0_0.v" \
"../../../bd/design_1/ipshared/d5a3/src/CustomInterconnect.v" \
"../../../bd/design_1/ip/design_1_CustomInterconnect_0_0/sim/design_1_CustomInterconnect_0_0.v" \
"../../../bd/design_1/ipshared/f98f/src/interruptController.v" \
"../../../bd/design_1/ipshared/f98f/src/interruptController_wrapper.v" \
"../../../bd/design_1/ip/design_1_interruptControllerS_0_0/sim/design_1_interruptControllerS_0_0.v" \
"../../../bd/design_1/ipshared/1af0/src/gpio.v" \
"../../../bd/design_1/ipshared/1af0/src/Gpio_Slave.v" \
"../../../bd/design_1/ip/design_1_GPIO_Slave_0_0/sim/design_1_GPIO_Slave_0_0.v" \
"../../../bd/design_1/ip/design_1_CPU_0_0/src/CodeMemory/sim/CodeMemory.v" \
"../../../bd/design_1/ipshared/3cc4/src/ALU.v" \
"../../../bd/design_1/ipshared/3cc4/src/ControlUnit.v" \
"../../../bd/design_1/ipshared/3cc4/src/DecodeExecuteReg.v" \
"../../../bd/design_1/ipshared/3cc4/src/ExecuteMemoryReg.v" \
"../../../bd/design_1/ipshared/3cc4/src/FetchDecodeReg.v" \
"../../../bd/design_1/ipshared/3cc4/src/HazardUnit.v" \
"../../../bd/design_1/ipshared/3cc4/src/InstructionDecode.v" \
"../../../bd/design_1/ipshared/3cc4/src/InstructionExecute.v" \
"../../../bd/design_1/ipshared/3cc4/src/InstructionFetch.v" \
"../../../bd/design_1/ipshared/3cc4/src/InstructionMemory.v" \
"../../../bd/design_1/ipshared/3cc4/src/InstructionWriteBack.v" \
"../../../bd/design_1/ipshared/3cc4/src/MemoryWriteBackReg.v" \
"../../../bd/design_1/ipshared/3cc4/src/RegisterFile.v" \
"../../../bd/design_1/ipshared/3cc4/src/check_branchcond.v" \
"../../../bd/design_1/ipshared/3cc4/src/control_hazards.v" \
"../../../bd/design_1/ipshared/3cc4/src/forwarding_unit.v" \
"../../../bd/design_1/ipshared/3cc4/src/CPU.v" \
"../../../bd/design_1/ipshared/3cc4/src/barrel_shifter.v" \
"../../../bd/design_1/ip/design_1_CPU_0_0/sim/design_1_CPU_0_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

