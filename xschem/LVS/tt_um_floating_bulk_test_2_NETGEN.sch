v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -370 -370 -370 -240 {lab=#net1}
N -340 -370 -230 -370 {lab=ua[0]}
N -620 -410 -370 -410 {lab=#net2}
N -370 -180 -370 -160 {lab=ua[2]}
N -370 -160 -370 -120 {lab=ua[2]}
N -370 -210 -320 -210 {lab=ua[2]}
N -320 -210 -320 -160 {lab=ua[2]}
N -370 -160 -320 -160 {lab=ua[2]}
N -230 -370 110 -370 {lab=ua[0]}
N 110 -370 110 -80 {lab=ua[0]}
N -450 -370 -400 -370 {lab=ua[1]}
N -450 -370 -450 -290 {lab=ua[1]}
N -450 -290 -130 -290 {lab=ua[1]}
N -130 -290 -130 -80 {lab=ua[1]}
N -370 -120 -370 -80 {lab=ua[2]}
N -570 -210 -410 -210 {lab=ua[3]}
N -570 -210 -570 -80 {lab=ua[3]}
N -760 -410 -620 -410 {lab=#net2}
N -760 -410 -760 -80 {lab=#net2}
C {sky130_fd_pr/nfet_01v8.sym} -370 -390 1 0 {name=M1
W=1
L=0.15
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -390 -210 0 0 {name=M2
W=1
L=0.15
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {ipin.sym} 110 -80 3 0 {name=p1 lab=ua[0]}
C {ipin.sym} -130 -80 3 0 {name=p2 lab=ua[1]}
C {ipin.sym} -370 -80 3 0 {name=p3 lab=ua[2]}
C {ipin.sym} -570 -80 3 0 {name=p4 lab=ua[3]}
C {ipin.sym} -760 -80 3 0 {name=p5 lab=ua[4]}
