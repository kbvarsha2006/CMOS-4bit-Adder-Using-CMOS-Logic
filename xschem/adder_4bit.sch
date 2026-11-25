v {xschem version=3.4.4 file_version=1.2}
G {}
K {}
V {}
S {}
E {}

C {full_adder_clean.sym} 300 300 0 0 {name=FA0}
C {full_adder_clean.sym} 700 300 0 0 {name=FA1}
C {full_adder_clean.sym} 1100 300 0 0 {name=FA2}
C {full_adder_clean.sym} 1500 300 0 0 {name=FA3}

C {/usr/share/xschem/xschem_library/devices/ipin.sym} 50 280 0 0 {name=p1 lab=A0}
C {/usr/share/xschem/xschem_library/devices/ipin.sym} 50 320 0 0 {name=p2 lab=B0}
C {/usr/share/xschem/xschem_library/devices/ipin.sym} 50 300 0 0 {name=p3 lab=Cin}

C {/usr/share/xschem/xschem_library/devices/ipin.sym} 500 280 0 0 {name=p4 lab=A1}
C {/usr/share/xschem/xschem_library/devices/ipin.sym} 500 320 0 0 {name=p5 lab=B1}

C {/usr/share/xschem/xschem_library/devices/ipin.sym} 900 280 0 0 {name=p6 lab=A2}
C {/usr/share/xschem/xschem_library/devices/ipin.sym} 900 320 0 0 {name=p7 lab=B2}

C {/usr/share/xschem/xschem_library/devices/ipin.sym} 1300 280 0 0 {name=p8 lab=A3}
C {/usr/share/xschem/xschem_library/devices/ipin.sym} 1300 320 0 0 {name=p9 lab=B3}

C {/usr/share/xschem/xschem_library/devices/opin.sym} 500 200 0 0 {name=p10 lab=Sum0}
C {/usr/share/xschem/xschem_library/devices/opin.sym} 900 200 0 0 {name=p11 lab=Sum1}
C {/usr/share/xschem/xschem_library/devices/opin.sym} 1300 200 0 0 {name=p12 lab=Sum2}
C {/usr/share/xschem/xschem_library/devices/opin.sym} 1750 280 0 0 {name=p13 lab=Sum3}
C {/usr/share/xschem/xschem_library/devices/opin.sym} 1750 300 0 0 {name=p14 lab=Cout}

N 50 280 150 280 {}
N 50 320 150 320 {}
N 50 300 150 300 {}

N 450 300 550 300 {}
N 850 300 950 300 {}
N 1250 300 1350 300 {}

N 500 280 550 280 {}
N 500 320 550 320 {}
N 900 280 950 280 {}
N 900 320 950 320 {}
N 1300 280 1350 280 {}
N 1300 320 1350 320 {}

N 450 280 450 200 {}
N 450 200 500 200 {}
N 850 280 850 200 {}
N 850 200 900 200 {}
N 1250 280 1250 200 {}
N 1250 200 1300 200 {}

N 1650 280 1750 280 {}
N 1650 300 1750 300 {}
