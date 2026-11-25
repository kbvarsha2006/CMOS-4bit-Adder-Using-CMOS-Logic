v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -175 -20 -170 200 {
lab=#net1}
N -135 10 -130 175 {
lab=#net2}
N 235 10 235 170 {
lab=#net3}
N 230 370 320 370 {
lab=#net4}
N -300 140 -300 400 {
lab=#net5}
N -395 135 -300 140 {
lab=#net5}
N 440 390 540 390 {
lab=#net6}
N 540 10 540 390 {
lab=#net6}
N 540 10 620 10 {
lab=#net6}
N 615 -15 620 10 {
lab=#net6}
N -410 -15 -260 -20 {
lab=#net7}
N -260 -20 -250 620 {
lab=#net7}
N -250 620 110 620 {
lab=#net7}
N -410 60 -230 60 {
lab=B}
N -230 60 -220 660 {
lab=B}
N -220 660 110 660 {
lab=B}
N 270 370 270 610 {
lab=#net4}
N 270 610 330 610 {
lab=#net4}
N 50 350 110 350 {
lab=#net7}
N 50 350 50 620 {
lab=#net7}
N 80 390 110 390 {
lab=B}
N 80 390 80 660 {
lab=B}
N -300 400 320 410 {
lab=#net5}
N 250 410 250 650 {
lab=#net8}
N 250 650 330 650 {
lab=#net8}
N 230 760 590 760 {
lab=#net9}
N 230 640 230 760 {
lab=#net9}
N 450 630 450 800 {
lab=#net10}
N 450 800 590 800 {
lab=#net10}
N 710 160 710 780 {
lab=#net11}
N 630 155 710 160 {}
C {sky130_fd_pr/nfet_01v8.sym} 215 200 0 0 {name=M1
W=1
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -155 -20 0 0 {name=M2
W=1
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {lab_pin.sym} -410 -15 0 0 {name=p2 sig_type=std_logic lab=A}
C {lab_pin.sym} -410 60 0 0 {name=p3 sig_type=std_logic lab=B}
C {lab_pin.sym} -395 135 0 0 {name=p4 sig_type=std_logic lab=Cin}
C {lab_pin.sym} 615 -15 0 0 {name=p5 sig_type=std_logic lab=sum}
C {lab_pin.sym} 630 155 0 0 {name=p6 sig_type=std_logic lab=Cout}
C {vsource.sym} -415 250 0 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} -415 -95 0 0 {name=V2 value=0 savecurrent=false}
C {gnd.sym} -220 -60 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} -150 205 0 0 {name=M3
W=1
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 215 -20 0 0 {name=M4
W=1
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_stdcells/xor2_1.sym} 170 370 0 0 {name=x1 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/xor2_1.sym} 380 390 0 0 {name=x2 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/and2_1.sym} 170 640 0 0 {name=x3 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/and2_1.sym} 390 630 0 0 {name=x4 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/or2_1.sym} 650 780 0 0 {name=x5 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
