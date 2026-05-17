loading history file ... 47 events added
Running NetGen Console Functions
Netgen 1.5.303 compiled on Mon Oct 13 19:31:07 PDT 2025
Warning: netgen command 'format' use fully-qualified name '::netgen::format'
Warning: netgen command 'global' use fully-qualified name '::netgen::global'
Main console display active (Tcl8.6.14 / Tk8.6.14)
(NETGEN_Floating_bulk_test_2) 48 % lvs tt_um_floating_bulk_test_2_NETGEN.spice tt_um_floating_bulk_test_2.spice sky130A_setup.tcl
Reading netlist file tt_um_floating_bulk_test_2_NETGEN.spice
Call to undefined subcircuit sky130_fd_pr__nfet_01v8
Creating placeholder cell definition.
Reading netlist file tt_um_floating_bulk_test_2.spice
Call to undefined subcircuit sky130_fd_pr__nfet_01v8
Creating placeholder cell definition.

Reading setup file sky130A_setup.tcl

Model sky130_fd_pr__nfet_01v8 pin 1 == 3
No property area found for device sky130_fd_pr__nfet_01v8
No property perim found for device sky130_fd_pr__nfet_01v8
No property topography found for device sky130_fd_pr__nfet_01v8
Model sky130_fd_pr__nfet_01v8 pin 1 == 3
No property mult found for device sky130_fd_pr__nfet_01v8
No property sa found for device sky130_fd_pr__nfet_01v8
No property sb found for device sky130_fd_pr__nfet_01v8
No property sd found for device sky130_fd_pr__nfet_01v8
No property nf found for device sky130_fd_pr__nfet_01v8
No property nrd found for device sky130_fd_pr__nfet_01v8
No property nrs found for device sky130_fd_pr__nfet_01v8
No property area found for device sky130_fd_pr__nfet_01v8
No property perim found for device sky130_fd_pr__nfet_01v8
No property topography found for device sky130_fd_pr__nfet_01v8
Comparison output logged to file comp.out
Logging to file "comp.out" enabled
Circuit sky130_fd_pr__nfet_01v8 contains no devices.

Contents of circuit 1:  Circuit: 'tt_um_floating_bulk_test_2_NETGEN.spice'
Circuit tt_um_floating_bulk_test_2_NETGEN.spice contains 2 device instances.
  Class: sky130_fd_pr__nfet_01v8 instances:   2
Circuit contains 6 nets.
Contents of circuit 2:  Circuit: 'tt_um_floating_bulk_test_2.spice'
Circuit tt_um_floating_bulk_test_2.spice contains 2 device instances.
  Class: sky130_fd_pr__nfet_01v8 instances:   2
Circuit contains 6 nets.

Circuit 1 contains 2 devices, Circuit 2 contains 2 devices.
Circuit 1 contains 6 nets,    Circuit 2 contains 6 nets.


Final result: 
Circuits match uniquely.
Property errors were found.

The following cells had property errors:
 tt_um_floating_bulk_test_2_NETGEN.spice

Logging to file "comp.out" disabled
LVS Done.
(NETGEN_Floating_bulk_test_2) 49 % 