# Design of a 4-Bit Adder Using CMOS Logic

## Project Overview
Design and verification of a 4-bit ripple-carry adder using Verilog HDL and the Sky130 CMOS technology.

## Tools Used
- Verilog HDL
- Icarus Verilog
- GTKWave
- Xschem
- Ngspice
- Yosys
- Magic
- Qrouter
- Sky130 PDK

## Project Structure
- `verilog/` - Verilog design and testbench
- `simulation/` - SPICE testbenches and simulation results
- `synthesis/` - Synthesized netlist and synthesis logs
- `xschem/` - Circuit schematics and generated netlists
- `layout/` - Layout, routed DEF, and extraction files

## Completed Work
- 1-bit full-adder design
- 4-bit ripple-carry adder design
- Exhaustive Verilog simulation: all 512 test cases passed
- CMOS transistor-level simulation test cases
- Xschem schematic design and netlist generation
- Yosys logic synthesis
- Sky130 HD standard-cell technology mapping
- Initial Magic layout and extraction
- Qrouter signal routing
- Routed DEF export and import verification
- Routed layout SPICE extraction

## Verilog Verification
- Testbench: `verilog/adder4_tb.v`
- Design: `verilog/adder4.v`
- Result: All 512 input combinations passed.

## Sky130 Technology Mapping
Technology mapping performed using Yosys ABC and the Sky130 HD Liberty library.

Mapped cells:
- 4 × `sky130_fd_sc_hd__maj3_1`
- 8 × `sky130_fd_sc_hd__xnor2_1`

Files:
- `synthesis/adder4_sky130_mapped.v`
- `synthesis/sky130_mapping_log.txt`

## Signal Routing Results
- Signal routing performed using Qrouter 1.4.88.T.
- 69 routing connections completed.
- Zero failed routes reported by Qrouter.
- Routed DEF exported to `layout/adder4_routed.def`.
- 29 ROUTED records present in the exported DEF.
- Routed DEF imported into Magic for inspection.

## Layout Extraction
- Routed layout extraction performed using Magic.
- Extracted SPICE netlist: `layout/adder4_routed_extracted.spice`
- Imported layout file: `layout/adder4_routed_import.mag`

## Verification Status and Limitations
The Verilog simulation and Qrouter signal-routing results have been verified.

The following sign-off checks are not yet established:
- Complete routed-layout DRC verification
- LVS verification against the corresponding schematic
- Final physical-design sign-off, including power distribution

Therefore, the project does not claim complete DRC or LVS sign-off.
