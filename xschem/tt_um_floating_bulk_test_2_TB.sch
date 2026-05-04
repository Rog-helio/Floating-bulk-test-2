v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -1530 40 -1530 300 {
lab=GND}
N -1590 300 -1530 300 {
lab=GND}
N -1610 100 -1580 100 {
lab=VOUT}
N -1580 40 -1530 40 {
lab=GND}
N -1720 10 -1640 10 {
lab=#net1}
N -1720 70 -1720 100 {
lab=GND}
N -1720 100 -1720 160 {
lab=GND}
N -1810 160 -1720 160 {
lab=GND}
N -1640 300 -1640 320 {
lab=GND}
N -1810 160 -1810 280 {
lab=GND}
N -1810 280 -1640 280 {
lab=GND}
N -1740 230 -1740 240 {
lab=#net2}
N -1740 230 -1680 230 {
lab=#net2}
N -1640 280 -1640 300 {
lab=GND}
N -1640 300 -1590 300 {
lab=GND}
N -1640 10 -1420 10 {
lab=#net1}
N -1620 100 -1610 100 {
lab=VOUT}
N -1620 100 -1620 170 {
lab=VOUT}
N -1620 170 -1390 170 {
lab=VOUT}
N -1390 -60 -1390 170 {
lab=VOUT}
N -1390 -80 -1390 -60 {
lab=VOUT}
N -1680 230 -1480 230 {lab=#net2}
N -1390 -140 -1390 -80 {lab=VOUT}
N -1520 -140 -1390 -140 {lab=VOUT}
N -1530 40 -1440 40 {lab=GND}
N -1440 -120 -1440 40 {lab=GND}
N -1520 -120 -1440 -120 {lab=GND}
N -1520 -100 -1440 -100 {lab=GND}
N -1420 -60 -1420 10 {lab=#net1}
N -1520 -60 -1420 -60 {lab=#net1}
N -1480 -80 -1480 230 {lab=#net2}
N -1520 -80 -1480 -80 {lab=#net2}
C {devices/gnd.sym} -1640 320 0 0 {name=l18 lab=GND
}
C {devices/vsource.sym} -1740 270 0 0 {name=VG2 value=0.3 savecurrent=false
}
C {devices/gnd.sym} -1740 300 0 0 {name=l25 lab=GND
}
C {devices/vsource.sym} -1720 40 0 0 {name=VG1 value=0.6 savecurrent=false
}
C {devices/vsource.sym} -1580 70 2 0 {name=VDS1 value="PWL(0 0.1 20u 6 40u 0.1 60u 6 80u 0.1 100u 6 120u 0.1 140u 6 160u 0.1 180u 6 200u 0.1 220u 6 240u 0.1)" savecurrent=false
}
C {devices/lab_pin.sym} -1600 100 3 0 {name=p4 sig_type=std_logic lab=VOUT
}
C {sky130_fd_pr/corner.sym} -2250 -130 0 0 {name=CORNER only_toplevel=true corner=tt}
C {code.sym} -2090 -130 0 0 {name=STDCELLS_INCLUDE only_toplevel=false 
format="tcleval( @value )"
value="
.include /home/rogel/pdk/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
"
place=header}
C {code_shown.sym} -2250 150 0 0 {name=s2 only_toplevel=false value="
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
C {/home/rogel/xschem_attempts/VALTIERRA_PROJECT/tt_um_floating_bulk_test_2.sym} -1670 -100 0 0 {name=x1}
