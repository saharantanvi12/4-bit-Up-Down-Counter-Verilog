# 4-Bit Synchronous Up/Down Counter using Verilog HDL

This project was developed as part of the Digital System Design course. The objective was to design and implement a 4-bit synchronous Up/Down Counter using Verilog HDL and verify its functionality using simulation in Xilinx Vivado.

## Project Description

The counter can count in both upward and downward directions depending on the control signal. It also supports parallel loading of data and generates a Ripple Carry Output (RCO) signal. The design was written in Verilog HDL, simulated using a testbench, and synthesized in Vivado.

## Features

- 4-bit synchronous counter
- Up counting and Down counting modes
- Parallel data loading
- Enable control using ENP and ENT signals
- Ripple Carry Output (RCO)
- RTL design and simulation in Vivado

## Inputs

| Signal | Description |
|----------|-------------|
| clk | Clock input |
| load | Parallel load control |
| en_p | Count enable input |
| en_t | Terminal count enable |
| up_down | Selects counting direction |
| data_in[3:0] | Parallel data input |

## Outputs

| Signal | Description |
|----------|-------------|
| count_out[3:0] | Counter output |
| rco_bar | Ripple carry output |

## Project Structure

```text
RTL/
 └── four_bit_counter.v

Testbench/
 └── testbench.v

Constraints/
 └── counter.xdc

Results/
 ├── RTL_Schematic/
 └── Waveforms/

Documentation/
 └── DSD_Report.pdf
```

## Simulation Results

The design was verified using a Verilog testbench. Simulation waveforms show correct operation of:

- Up counting
- Down counting
- Parallel loading
- Enable control functionality

Waveform screenshots are available in the Results/Waveforms folder.

## RTL Schematic

The RTL schematic generated in Xilinx Vivado is included in the Results/RTL_Schematic folder.

## Tools Used

- Verilog HDL
- Xilinx Vivado
- Spartan-7 FPGA Board
- GitHub

## Learning Outcomes

Through this project, I learned:

- Writing Verilog HDL modules
- Designing sequential circuits
- Creating testbenches for verification
- Analyzing simulation waveforms
- FPGA design flow using Vivado
- Working with GitHub for project documentation

## Author

**Tanvi Saharan**

B.Tech Electronics and Computer Engineering  
Thapar Institute of Engineering and Technology
