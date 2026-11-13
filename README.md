# Design and Simulation of a 4-Bit Adder Using CMOS Logic

## Project Overview
This project focuses on the design and simulation of a 4-bit binary adder using Verilog and CMOS logic.

## Tools Used
- Xschem
- Ngspice
- Sky130 PDK
- Icarus Verilog
- Ubuntu WSL

## Project Files

### Verilog
- `adder4.v` – 4-bit adder design.
-

## Exhaustive Verification
The 4-bit adder was tested with all 512 possible input combinations.
Result: PASS – All 512 test cases passed.

## Logic Synthesis
The design was synthesized successfully using Yosys.
- Synthesized netlist: synthesis/adder4_synth.v
- Synthesis log: synthesis/synthesis_log.txt
- Four full-adder stages in the design hierarchy.
