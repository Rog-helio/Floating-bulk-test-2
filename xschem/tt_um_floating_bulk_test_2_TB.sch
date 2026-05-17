v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -50 -20 -50 240 {
lab=GND}
N -110 240 -50 240 {
lab=GND}
N -130 40 -100 40 {
lab=VOUT}
N -100 -20 -50 -20 {
lab=GND}
N -240 -50 -160 -50 {
lab=#net1}
N -240 10 -240 40 {
lab=GND}
N -240 40 -240 100 {
lab=GND}
N -330 100 -240 100 {
lab=GND}
N -160 240 -160 260 {
lab=GND}
N -330 100 -330 220 {
lab=GND}
N -330 220 -160 220 {
lab=GND}
N -260 170 -260 180 {
lab=#net2}
N -260 170 -200 170 {
lab=#net2}
N -160 220 -160 240 {
lab=GND}
N -160 240 -110 240 {
lab=GND}
N -160 -50 60 -50 {
lab=#net1}
N -140 40 -130 40 {
lab=VOUT}
N -140 40 -140 110 {
lab=VOUT}
N -140 110 90 110 {
lab=VOUT}
N 90 -120 90 110 {
lab=VOUT}
N 90 -140 90 -120 {
lab=VOUT}
N -200 170 0 170 {lab=#net2}
N 90 -200 90 -140 {lab=VOUT}
N -40 -200 90 -200 {lab=VOUT}
N -50 -20 40 -20 {lab=GND}
N 40 -180 40 -20 {lab=GND}
N -40 -180 40 -180 {lab=GND}
N -40 -160 40 -160 {lab=GND}
N 60 -120 60 -50 {lab=#net1}
N -40 -120 60 -120 {lab=#net1}
N 0 -140 0 170 {lab=#net2}
N -40 -140 0 -140 {lab=#net2}
C {devices/gnd.sym} -160 260 0 0 {name=l18 lab=GND
}
C {devices/vsource.sym} -260 210 0 0 {name=VG2 value=0.3 savecurrent=false
}
C {devices/gnd.sym} -260 240 0 0 {name=l25 lab=GND
}
C {devices/vsource.sym} -240 -20 0 0 {name=VG1 value=0.6 savecurrent=false
}
C {devices/vsource.sym} -100 10 2 0 {name=VDS1 value="PWL(0 0.1 20u 6 40u 0.1 60u 6 80u 0.1 100u 6 120u 0.1 140u 6 160u 0.1 180u 6 200u 0.1 220u 6 240u 0.1)" savecurrent=false
}
C {devices/lab_pin.sym} -120 40 3 0 {name=p4 sig_type=std_logic lab=VOUT
}
C {sky130_fd_pr/corner.sym} -770 -190 0 0 {name=CORNER only_toplevel=true corner=tt}
C {code.sym} -610 -190 0 0 {name=STDCELLS_INCLUDE only_toplevel=false 
format="tcleval( @value )"
value="
.include /home/rogel/pdk/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
"
place=header}
C {code_shown.sym} -770 90 0 0 {name=s2 only_toplevel=false value="
.control
set num_threads=8
option klu
save i(VDS1) v(VOUT)
foreach val_vg1 1.0 1.2 1.4
    alter VG1 $val_vg1
    foreach val_vg2 0.5 0.6 0.7
        alter VG2 $val_vg2
        
        tran 1u 240u
        let idrain = -i(VDS1)
    end
end
*plot tran1.idrain vs tran1.v(VOUT) tran2.idrain vs tran2.v(VOUT) tran3.idrain vs tran3.v(VOUT) tran4.idrain vs tran4.v(VOUT) tran5.idrain vs tran5.v(VOUT) tran6.idrain vs tran6.v(VOUT) tran7.idrain vs tran7.v(VOUT) tran8.idrain vs tran8.v(VOUT) tran9.idrain vs tran9.v(VOUT) ylog title 'Optimizacion: Buscando la maxima ventana de histeresis'
plot tran2.idrain vs tran2.v(VOUT) title 'VG1 = 1V, VG2 = 0.7V'
write tt_um_floating_bulk_test_2_TB.raw
.endc
"
}
C {tt_um_floating_bulk_test_2.sym} -190 -160 0 0 {name=x1}
