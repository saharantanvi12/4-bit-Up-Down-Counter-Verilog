# 4-Bit Synchronous Up/Down Counter using Verilog HDL

**Verilog HDL | Digital Design | FPGA | RTL Design | Xilinx Vivado**

---

## Overview

This project implements a 4-bit Synchronous Binary Up/Down Counter based on the functionality of the SN74LS669 IC using Verilog HDL. The design supports synchronous counting in both directions, synchronous parallel loading of data, count enable control, and Ripple Carry Output (RCO) generation. The design was simulated, synthesized, and implemented using Xilinx Vivado and targeted for the Spartan-7 FPGA development board.

---

## Features

- Synchronous Up Counting (0 → 15)
- Synchronous Down Counting (15 → 0)
- Parallel Data Loading
- Count Enable Control (ENP and ENT)
- Ripple Carry Output (RCO)
- FPGA Compatible Design
- RTL Design and Verification using Verilog HDL

---

## Design Specifications

| Parameter | Description |
|------------|------------|
| Counter Width | 4-bit |
| Counting Modes | Up / Down |
| Load Operation | Synchronous Parallel Load |
| Enable Signals | ENP, ENT |
| Ripple Carry Output | Active Low |
| HDL Language | Verilog HDL |
| Development Tool | Xilinx Vivado |
| FPGA Board | Spartan-7 |

---

## Inputs and Outputs

### Inputs

| Signal | Description |
|----------|-------------|
| clk | Clock Input |
| load | Active-Low Synchronous Load |
| en_p | Active-Low Count Enable |
| en_t | Active-Low Terminal Enable |
| up_down | Count Direction Control |
| data_in[3:0] | Parallel Data Input |

### Outputs

| Signal | Description |
|----------|-------------|
| count_out[3:0] | Counter Output |
| rco_bar | Active-Low Ripple Carry Output |

---

## Project Structure

```text
4-bit-Up-Down-Counter-Verilog
│
├── README.md
│
├── RTL
│   └── four_bit_counter.v
│
├── Testbench
│   └── testbench.v
│
├── Constraints
│   └── counter.xdc
│
├── Results
│   ├── RTL_Schematic
│   │   └── rtl_schematic.png
│   │
│   └── Waveforms
│       └── up_down_counter_waveform.png
│
└── Documentation
    └── DSD_Report.pdf
```

---

## RTL Design

The RTL architecture consists of:

- Clock Divider Circuit
- 4-bit Register
- Increment Logic
- Decrement Logic
- Multiplexer-based Direction Selection
- Ripple Carry Output Logic
- Enable and Load Control Logic

RTL schematic generated using Xilinx Vivado is included in the repository.

---

## Verification Methodology

A dedicated Verilog testbench was developed to verify:

- Synchronous Parallel Load
- Up Counting Operation
- Down Counting Operation
- Enable Control Functionality
- Ripple Carry Output Generation

The design was verified using behavioural simulation in Xilinx Vivado.

---

## Simulation Results

The simulation waveform confirms:

- Correct incrementing sequence during Up Count mode
- Correct decrementing sequence during Down Count mode
- Successful synchronous loading of input data
- Proper assertion of Ripple Carry Output at terminal counts
- Stable operation without glitches

Simulation waveform screenshots are available in the `Results/Waveforms` directory.

---

## FPGA Implementation

The design was synthesized and implemented on the Spartan-7 FPGA board using Xilinx Vivado.

### Hardware Configuration

| Parameter | Value |
|------------|--------|
| FPGA Device | XC7S50-CSGA324 |
| Board | Spartan-7 |
| Clock Frequency | 100 MHz |
| Slow Clock | Generated using 26-bit Clock Divider |
| I/O Standard | LVCMOS33 |

---

## Tools Used

- Verilog HDL
- Xilinx Vivado
- Spartan-7 FPGA Board
- Git
- GitHub

---

## Applications

- Digital Counters
- FPGA-Based Systems
- Frequency Division Circuits
- Embedded Systems
- Digital Timing Applications
- Sequential Logic Design Learning

---

## Documentation

Detailed project documentation, implementation details, simulation analysis, truth tables, and FPGA configuration are available in:

📄 `Documentation/DSD_Report.pdf`

---

## Results Preview

### RTL Schematic
RTL schematic generated after elaboration in Xilinx Vivado.

### Simulation Waveform
Behavioural simulation showing correct Up Count, Down Count, Load, and Ripple Carry Output functionality.

---

## Author

**Tanvi Saharan**

B.Tech Electronics and Computer Engineering  
Thapar Institute of Engineering and Technology

GitHub: https://github.com/saharantanvi12

---

## License

This project is intended for educational and academic purposes.
