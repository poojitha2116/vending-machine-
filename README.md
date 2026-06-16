# Vending Machine Verilog Design

## Project Overview

This project implements a Vending Machine using Verilog HDL. The design accepts coin inputs and dispenses a product when the required amount is inserted.

## Features

* Coin input support
* Product dispensing logic
* Change return functionality
* Verilog testbench for simulation
* Waveform generation using GTKWave

## Files

* `design.v` - Main Verilog design
* `testbench.v` - Testbench for simulation
* `dump.vcd` - Generated waveform file
* `sim.out` - Simulation output file

## Tools Used

* Verilog HDL
* Icarus Verilog (iverilog)
* GTKWave
* Visual Studio Code

## Simulation Steps

Compile:

```bash
iverilog -o sim.out design.v testbench.v
```

Run Simulation:

```bash
vvp sim.out
```

View Waveform:

```bash
gtkwave dump.vcd
```

## Author

Poojitha
