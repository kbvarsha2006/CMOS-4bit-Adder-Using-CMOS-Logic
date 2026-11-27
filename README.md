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

## Sky130 Technology Mapping

- Technology mapping performed using Yosys ABC and the Sky130 HD Liberty library.
- 4-bit adder mapped to Sky130 standard cells.
- 4 x sky130_fd_sc_hd__maj3_1 cells.
- 8 x sky130_fd_sc_hd__xnor2_1 cells.
- Mapped netlist: synthesis/adder4_sky130_mapped.v
- Mapping log: synthesis/sky130_mapping_log.txt

## Sky130 Technology Mapping
- Technology mapping performed using Yosys ABC and Sky130 HD Liberty library.
- Mapped netlist: synthesis/adder4_sky130_mapped.v
- Mapping log: synthesis/sky130_mapping_log.txt
- Mapping result: 4 MAJ3 cells and 8 XNOR2 cells.


## Signal Routing Results

- Signal routing performed using Qrouter 1.4.88.T.
- 69 routing connections completed.
- Zero failed routes reported.
- Routed DEF successfully exported.
- 29 ROUTED records present in the exported DEF.

Note: This is signal routing. Power distribution, final physical verification,
and LVS sign-off are not yet established.
