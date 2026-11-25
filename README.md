# Design of a 4-Bit Adder Using CMOS Logic

## Project Overview
Design and simulation of a 4-bit ripple-carry adder using Verilog HDL and Sky130 CMOS standard cells.

## Tools Used
- Xschem
- Ngspice
- Magic
- Sky130 PDK
- Yosys
- Icarus Verilog
- GTKWave

## Project Structure
- verilog/ – Verilog design and testbench
- simulation/ – SPICE circuits, testbenches and simulation results
- synthesis/ – Yosys synthesized netlist and logs
- xschem/ – Schematic files and generated netlist
- layout/ – Magic layout file

## Completed Work
- 1-bit full-adder logic design
- 4-bit ripple-carry adder in Verilog
- Verilog simulation
- CMOS transistor-level simulation
- Sky130 standard-cell full-adder simulation using Ngspice
- Verification of all 8 full-adder input combinations
- 4-bit adder simulation (3 + 5 = 8)
- Yosys logic synthesis
- Initial Magic layout creation
- DRC check on the current partial layout: 0 errors

## Work Remaining
- Complete hierarchical 4-bit Xschem schematic
- Complete physical layout of the 4-bit adder
- DRC verification of the complete layout
- LVS verification
