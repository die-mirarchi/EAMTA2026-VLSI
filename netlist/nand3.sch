v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 20 130 20 170 {lab=VSS}
N 20 -100 60 -100 {lab=VSS}
N 20 100 60 100 {lab=VSS}
N 60 100 60 170 {lab=VSS}
N 60 0 60 100 {lab=VSS}
N 20 -140 20 -130 {lab=VOUT}
N -100 -270 -100 -230 {lab=VDD}
N 20 -270 20 -230 {lab=VDD}
N -100 -200 -60 -200 {lab=VDD}
N 20 -200 60 -200 {lab=VDD}
N -180 -200 -140 -200 {lab=VA}
N -100 -170 -100 -150 {lab=VOUT}
N -100 -150 20 -150 {lab=VOUT}
N 20 -170 20 -150 {lab=VOUT}
N -40 -200 -20 -200 {lab=VB}
N -60 -270 -60 -200 {lab=VDD}
N 60 -270 60 -200 {lab=VDD}
N 20 -270 60 -270 {lab=VDD}
N -20 -270 20 -270 {lab=VDD}
N -100 -270 -60 -270 {lab=VDD}
N -20 -310 -20 -270 {lab=VDD}
N -60 -270 -20 -270 {lab=VDD}
N 40 170 60 170 {lab=VSS}
N 40 170 40 210 {lab=VSS}
N 20 170 40 170 {lab=VSS}
N 20 30 20 70 {lab=#net1}
N 20 -140 180 -140 {lab=VOUT}
N 20 -150 20 -140 {lab=VOUT}
N -180 -100 -20 -100 {lab=VC}
N -330 -170 -280 -170 {lab=VB}
N -330 -200 -280 -200 {lab=VA}
N -180 100 -20 100 {lab=#net2}
N -330 -140 -280 -140 {lab=VC}
N 150 -270 150 -230 {lab=VDD}
N 150 -200 190 -200 {lab=VDD}
N 150 -170 150 -150 {lab=VOUT}
N 90 -200 110 -200 {lab=VC}
N 190 -270 190 -200 {lab=VDD}
N 60 -270 150 -270 {lab=VDD}
N 150 -270 190 -270 {lab=VDD}
N 20 -150 150 -150 {lab=VOUT}
N 20 0 60 -0 {lab=VSS}
N 20 -70 20 -30 {lab=#net3}
N -190 -0 -20 -0 {lab=VB}
N 60 -100 60 -0 {lab=VSS}
C {sg13g2_pr/sg13_lv_nmos.sym} 0 100 0 0 {name=M1
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 0 -100 0 0 {name=M2
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 0 -200 0 0 {name=M3
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -120 -200 0 0 {name=M4
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {iopin.sym} -20 -310 0 0 {name=p1 lab=VDD}
C {iopin.sym} 40 210 0 0 {name=p2 lab=VSS}
C {ipin.sym} -330 -200 0 0 {name=p3 lab=VA}
C {ipin.sym} -330 -170 0 0 {name=p4 lab=VB}
C {opin.sym} 180 -140 0 0 {name=p5 lab=VOUT}
C {lab_wire.sym} -180 -200 0 0 {name=p6 sig_type=std_logic lab=VA}
C {lab_wire.sym} -180 100 0 0 {name=p7 sig_type=std_logic lab=VA}
C {lab_wire.sym} -180 -100 0 0 {name=p8 sig_type=std_logic lab=VC}
C {lab_wire.sym} -30 -200 0 0 {name=p9 sig_type=std_logic lab=VB}
C {ipin.sym} -330 -140 0 0 {name=p10 lab=VC}
C {sg13g2_pr/sg13_lv_pmos.sym} 130 -200 0 0 {name=M5
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_wire.sym} 100 -200 0 0 {name=p11 sig_type=std_logic lab=VC}
C {sg13g2_pr/sg13_lv_nmos.sym} 0 0 0 0 {name=M6
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} -180 0 0 0 {name=p12 sig_type=std_logic lab=VB}
