v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 270 210 270 250 {lab=VSS}
N 270 -20 310 -20 {lab=VSS}
N 270 180 310 180 {lab=VSS}
N 310 180 310 250 {lab=VSS}
N 310 80 310 180 {lab=VSS}
N 270 -60 270 -50 {lab=VOUT}
N 150 -190 150 -150 {lab=VDD}
N 270 -190 270 -150 {lab=VDD}
N 150 -120 190 -120 {lab=VDD}
N 270 -120 310 -120 {lab=VDD}
N 70 -120 110 -120 {lab=VA}
N 150 -90 150 -70 {lab=VOUT}
N 150 -70 270 -70 {lab=VOUT}
N 270 -90 270 -70 {lab=VOUT}
N 210 -120 230 -120 {lab=VB}
N 190 -190 190 -120 {lab=VDD}
N 310 -190 310 -120 {lab=VDD}
N 270 -190 310 -190 {lab=VDD}
N 230 -190 270 -190 {lab=VDD}
N 150 -190 190 -190 {lab=VDD}
N 230 -230 230 -190 {lab=VDD}
N 190 -190 230 -190 {lab=VDD}
N 290 250 310 250 {lab=VSS}
N 290 250 290 290 {lab=VSS}
N 270 250 290 250 {lab=VSS}
N 270 110 270 150 {lab=#net1}
N 270 -60 430 -60 {lab=VOUT}
N 270 -70 270 -60 {lab=VOUT}
N 70 -20 230 -20 {lab=VC}
N -80 -90 -30 -90 {lab=VB}
N -80 -120 -30 -120 {lab=VA}
N 70 180 230 180 {lab=VA}
N -80 -60 -30 -60 {lab=VC}
N 400 -190 400 -150 {lab=VDD}
N 400 -120 440 -120 {lab=VDD}
N 400 -90 400 -70 {lab=VOUT}
N 340 -120 360 -120 {lab=VC}
N 440 -190 440 -120 {lab=VDD}
N 310 -190 400 -190 {lab=VDD}
N 400 -190 440 -190 {lab=VDD}
N 270 -70 400 -70 {lab=VOUT}
N 270 80 310 80 {lab=VSS}
N 270 10 270 50 {lab=#net2}
N 60 80 230 80 {lab=VB}
N 310 -20 310 80 {lab=VSS}
C {code_shown.sym} -540 -140 0 0 {name=s1 only_toplevel=false 
value="
.title NAND3 schematic transient

.lib $MODEL mos_tt
.include $PWD/netlist/nand3.spice

VVSS VSS 0 0
VDD  VDD VSS 1.2

VVA VA VSS PULSE(0 1.2 1n 50p 50p 10n 20n)
VVB VB VSS PULSE(0 1.2 1n 50p 50p 20n 40n)
VVC VC VSS PULSE(0 1.2 1n 50p 50p 40n 80n)

XU1 VDD VA VB VC VOUT VSS nand3

CLOAD VOUT VSS 5f

.tran 20p 180n

.control
run
plot v(VA) v(VB)+1.5 v(VC)+3.0 v(VOUT)+4.5
.endc
"}
C {sg13g2_pr/sg13_lv_nmos.sym} 250 180 0 0 {name=M1
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 250 -20 0 0 {name=M2
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 250 -120 0 0 {name=M3
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 130 -120 0 0 {name=M4
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {iopin.sym} 230 -230 0 0 {name=p1 lab=VDD}
C {iopin.sym} 290 290 0 0 {name=p2 lab=VSS}
C {ipin.sym} -80 -120 0 0 {name=p3 lab=VA}
C {ipin.sym} -80 -90 0 0 {name=p4 lab=VB}
C {opin.sym} 430 -60 0 0 {name=p5 lab=VOUT}
C {lab_wire.sym} 70 -120 0 0 {name=p6 sig_type=std_logic lab=VA}
C {lab_wire.sym} 70 180 0 0 {name=p7 sig_type=std_logic lab=VA}
C {lab_wire.sym} 70 -20 0 0 {name=p8 sig_type=std_logic lab=VC}
C {lab_wire.sym} 220 -120 0 0 {name=p9 sig_type=std_logic lab=VB}
C {ipin.sym} -80 -60 0 0 {name=p10 lab=VC}
C {sg13g2_pr/sg13_lv_pmos.sym} 380 -120 0 0 {name=M5
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_wire.sym} 350 -120 0 0 {name=p11 sig_type=std_logic lab=VC}
C {sg13g2_pr/sg13_lv_nmos.sym} 250 80 0 0 {name=M6
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} 70 80 0 0 {name=p12 sig_type=std_logic lab=VB}
