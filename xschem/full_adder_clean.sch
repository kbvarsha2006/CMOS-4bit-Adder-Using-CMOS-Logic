v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 160 100 250 100 {}
N 250 80 250 100 {}
N 250 80 290 80 {}
N 250 100 250 280 {}
N 250 280 290 280 {}
N 20 80 40 80 {}
N 20 80 20 280 {}
N 20 280 40 280 {}
N 0 120 40 120 {}
N 0 120 0 320 {}
N 0 320 40 320 {}
N 290 120 520 120 {}
N 520 120 520 320 {}
N 290 320 520 320 {}
N 160 300 180 300 {}
N 180 240 180 300 {}
N 180 240 640 240 {}
N 640 240 640 280 {}
N 410 300 450 300 {}
N 450 300 450 360 {}
N 450 360 640 360 {}
N 640 320 640 360 {}
C {/home/kbvar/open_pdks/sky130/sky130A/libs.tech/xschem/sky130_stdcells/xor2_1.sym} 100 100 0 0 {name=x1 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__}
C {/home/kbvar/open_pdks/sky130/sky130A/libs.tech/xschem/sky130_stdcells/xor2_1.sym} 350 100 0 0 {name=x2 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__}
C {/home/kbvar/open_pdks/sky130/sky130A/libs.tech/xschem/sky130_stdcells/and2_1.sym} 100 300 0 0 {name=x3 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__}
C {/home/kbvar/open_pdks/sky130/sky130A/libs.tech/xschem/sky130_stdcells/and2_1.sym} 350 300 0 0 {name=x4 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__}
C {/home/kbvar/open_pdks/sky130/sky130A/libs.tech/xschem/sky130_stdcells/or2_1.sym} 700 300 0 0 {name=x5 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__}
C {ipin.sym} 40 80 0 0 {name=p1 lab=A}
C {ipin.sym} 40 120 0 0 {name=p2 lab=B}
C {lab_pin.sym} 40 280 0 0 {name=p3 lab=A}
C {lab_pin.sym} 40 320 0 0 {name=p4 lab=B}
C {lab_pin.sym} 160 100 0 0 {name=p5 lab=P}
C {lab_pin.sym} 290 80 0 0 {name=p6 lab=P}
C {ipin.sym} 290 120 0 0 {name=p7 lab=Cin}
C {lab_pin.sym} 290 320 0 0 {name=p8 lab=Cin}
C {opin.sym} 410 100 0 0 {name=p9 lab=Sum}
C {lab_pin.sym} 160 300 0 0 {name=p10 lab=G1}
C {lab_pin.sym} 290 280 0 0 {name=p11 lab=P}
C {lab_pin.sym} 410 300 0 0 {name=p12 lab=G2}
C {lab_pin.sym} 640 280 0 0 {name=p13 lab=G1}
C {lab_pin.sym} 640 320 0 0 {name=p14 lab=G2}
C {opin.sym} 760 300 0 0 {name=p15 lab=Cout}
