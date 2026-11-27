from pathlib import Path

cells = [
    ("_07_", "sky130_fd_sc_hd__xnor2_1"),
    ("_08_", "sky130_fd_sc_hd__maj3_1"),
    ("_09_", "sky130_fd_sc_hd__xnor2_1"),
    ("_10_", "sky130_fd_sc_hd__maj3_1"),
    ("_11_", "sky130_fd_sc_hd__xnor2_1"),
    ("_12_", "sky130_fd_sc_hd__xnor2_1"),
    ("_13_", "sky130_fd_sc_hd__maj3_1"),
    ("_14_", "sky130_fd_sc_hd__xnor2_1"),
    ("_15_", "sky130_fd_sc_hd__maj3_1"),
    ("_16_", "sky130_fd_sc_hd__xnor2_1"),
    ("_17_", "sky130_fd_sc_hd__xnor2_1"),
    ("_18_", "sky130_fd_sc_hd__xnor2_1"),
]

nets = {
"A[0]": [("PIN","A[0]"),("_07_","B"),("_08_","B")],
"B[0]": [("PIN","B[0]"),("_07_","A"),("_08_","A")],
"A[1]": [("PIN","A[1]"),("_09_","B"),("_10_","B")],
"B[1]": [("PIN","B[1]"),("_09_","A"),("_10_","A")],
"A[2]": [("PIN","A[2]"),("_11_","B"),("_13_","B")],
"B[2]": [("PIN","B[2]"),("_11_","A"),("_13_","A")],
"A[3]": [("PIN","A[3]"),("_14_","B"),("_15_","B")],
"B[3]": [("PIN","B[3]"),("_14_","A"),("_15_","A")],
"Cin": [("PIN","Cin"),("_08_","C"),("_17_","A")],
"Sum[0]": [("PIN","Sum[0]"),("_17_","Y")],
"Sum[1]": [("PIN","Sum[1]"),("_18_","Y")],
"Sum[2]": [("PIN","Sum[2]"),("_12_","Y")],
"Sum[3]": [("PIN","Sum[3]"),("_16_","Y")],
"Cout": [("PIN","Cout"),("_15_","X")],
"_00_": [("_07_","Y"),("_17_","B")],
"_01_": [("_08_","X"),("_10_","C"),("_18_","A")],
"_02_": [("_09_","Y"),("_18_","B")],
"_03_": [("_10_","X"),("_12_","A"),("_13_","C")],
"_04_": [("_11_","Y"),("_12_","B")],
"_05_": [("_13_","X"),("_15_","C"),("_16_","A")],
"_06_": [("_14_","Y"),("_16_","B")],
}

lines = [
'VERSION 5.8 ;',
'DIVIDERCHAR "/" ;',
'BUSBITCHARS "[]" ;',
'DESIGN adder4 ;',
'UNITS DISTANCE MICRONS 1000 ;',
'DIEAREA ( 0 0 ) ( 25000 18000 ) ;',
'ROW ROW_0 unithd 4600 2720 N DO 40 BY 1 STEP 460 2720 ;',
'ROW ROW_1 unithd 4600 5440 N DO 40 BY 1 STEP 460 2720 ;',
'ROW ROW_2 unithd 4600 8160 N DO 40 BY 1 STEP 460 2720 ;',
'ROW ROW_3 unithd 4600 10880 N DO 40 BY 1 STEP 460 2720 ;',
'TRACKS X 230 DO 55 STEP 460 LAYER li1 met2 ;',
'TRACKS Y 170 DO 74 STEP 340 LAYER met1 ;',
'TRACKS Y 340 DO 37 STEP 680 LAYER met3 ;',
'TRACKS X 460 DO 28 STEP 920 LAYER met4 ;',
f'COMPONENTS {len(cells)} ;'
]

for i, (name, macro) in enumerate(cells):
    row, col = divmod(i, 3)
    x = 4600 + col * 4600
    y = 2720 + row * 2720
    lines.append(f'- {name} {macro} + PLACED ( {x} {y} ) N ;')
lines.append('END COMPONENTS')

pins = [
    ("A[0]","INPUT",0),("B[0]","INPUT",1),
    ("A[1]","INPUT",2),("B[1]","INPUT",3),
    ("A[2]","INPUT",4),("B[2]","INPUT",5),
    ("A[3]","INPUT",6),("B[3]","INPUT",7),
    ("Cin","INPUT",8),
    ("Sum[0]","OUTPUT",0),("Sum[1]","OUTPUT",1),
    ("Sum[2]","OUTPUT",2),("Sum[3]","OUTPUT",3),
    ("Cout","OUTPUT",4)
]
lines.append(f'PINS {len(pins)} ;')
for name, direction, idx in pins:
    y = 510 + idx * 340
    if direction == "INPUT":
        x, rect = 230, "( -70 -70 ) ( 70 70 )"
    else:
        x, rect = 24610, "( -70 -70 ) ( 70 70 )"
    lines.append(
        f'- {name} + NET {name} + DIRECTION {direction} + USE SIGNAL '
        f'+ LAYER li1 {rect} + FIXED ( {x} {y} ) N ;'
    )
lines.append('END PINS')

lines.append(f'NETS {len(nets)} ;')
for name, connections in nets.items():
    terms = " ".join(f"( {inst} {pin} )" for inst, pin in connections)
    lines.append(f'- {name} {terms} ;')
lines += ['END NETS', 'END DESIGN']

Path("layout/adder4_placed.def").write_text("\n".join(lines) + "\n")
print("Created layout/adder4_placed.def")
print(f"Components: {len(cells)} | Pins: {len(pins)} | Nets: {len(nets)}")
