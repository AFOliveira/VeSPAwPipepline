## FPGA Implementation of VesPA: Pipelined Design

This repository contains the final FPGA design resulting from a team project of 20 individuals. I had the privilege of leading a smaller group of 8 within this larger project.

### Project Overview

- **Team Structure:** A 20-person project divided into 3 smaller teams, with me leading a group of 8.
- **Primary Goal:** Transform VesPA from a single-cycle to a five-stage pipelined design.
- **Technical Focus:** FPGA implementation, pipeline architecture, hardware optimization.
- **Collaboration:** Close collaboration with other teams working on different aspects of the project.

### Key Contributions

- **Pipeline Design:** Developed and implemented the five-stage pipeline architecture.
- **Hazard Mitigation:** Addressed potential hazards like data dependencies and control flow issues.
- **Performance Optimization:** Balance each stage so that one doesn't slow the whole pipeline.
- **Verification:** Thoroughly tested and validated the pipeline design using post-synthesis simulation and on-board physical tests on the Zybo-Z7 development board. Waveform analysis was performed using an oscilloscope to confirm correct signal behavior and timing.
- **Documentation:** Prepared comprehensive documentation detailing the pipeline design and implementation.

### Repository Contents

- **Source Code:** Verilog code for the five-stage pipelined VesPA design.
- **Testbenches:** Simulation testbenches for validating the pipeline functionality.
- **Documentation:** Detailed documentation of the pipeline design and implementation.
