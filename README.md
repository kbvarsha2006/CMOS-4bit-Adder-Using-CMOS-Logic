# Design of a 4-Bit Adder Using CMOS Logic

## Project Overview
Design and simulation of a 4-bit ripple-carry adder using Verilog HDL and Sky130 CMOS standard cells.

## Tools Used
- Verilog HDL
- Icarus Verilog
- GTKWave
- Xschem
- Ngspice
- Yosys
- Magic
- Sky130 PDK

## Project Structure
- verilog/ - Verilog design and testbench
- simulation/ - SPICE testbenches and simulation results
- synthesis/ - Synthesized netlist and synthesis log
- xschem/ - Circuit schematics and generated netlists
- layout/ - Magic layout and extraction files

## Completed Work
- 1-bit full-adder design
- 4-bit ripple-carry adder design
- Verilog simulation
- CMOS transistor-level simulation
- Sky130 standard-cell simulation
- Full-adder input combination verification
- 4-bit adder simulation (3 + 5 = 8)
- Yosys synthesis
- Xschem schematic design
- Initial Magic standard-cell placement
- Initial layout extraction
- DRC check on the current partial layout: 0 errors

## Remaining Work
- Complete physical routing and layout
- DRC verification of the complete routed layout
- LVS verification

## Note
The current Magic layout is an initial placement and is not a fully routed physical layout. Full DRC and LVS verification are not yet completed.
