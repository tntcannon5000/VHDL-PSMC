# VHDL-PSMC

Phase Shifter and Frequency Measurement Circuit designed in VHDL

## Overview

This project was a 3rd year final project for Digital Systems Design. It involves building a Frequency Calculator and Phase Shifter, and deploying them onto an FPGA.

## Key Components

### Frequency Calculator

The frequency calculator is responsible for measuring the frequency of an input signal. Key files include:

- `FREQUENCY_CALCULATOR.vhd`: Main VHDL file for the frequency calculator.
- `DIV10_fin.vhd`: Divider module used in the frequency calculator.
- `DIV5k.vhd`: Another divider module used in the frequency calculator.
- `SELECT.vhd`: Selector module for the frequency calculator.

### Phase Shifter

The phase shifter adjusts the phase of an input signal. Key files include:

- `PHASE_SHIFTER.vhd`: Main VHDL file for the phase shifter.
- `CLK_DIV.vhd`: Clock divider module used in the phase shifter.

## Simulation and Synthesis

The project includes various scripts and log files for simulation and synthesis:

- `runme.log`: Logs for synthesis runs.
- `vivado.log`: Logs for Vivado operations.
- `vivado.jou`: Journal file for Vivado operations.

## Usage

To use this project, open the Vivado project files and run the synthesis and implementation processes. The design can then be deployed onto an FPGA.

