![](../../workflows/gds/badge.svg) ![](../../workflows/docs/badge.svg)

# Integrated Neurosynaptic Circuit
A compact SKY130 neurosynaptic circuit implemented as a custom analog layout for Tiny Tapeout. This project focuses on the integration of a synaptic cell that leverages transistor hysteresis to emulate neural behavior.
## General Description
This repository contains the design collateral for a neurosynaptic circuit targeting the Tiny Tapeout SKY130 analog/custom layout flow. The project covers the use of standard silicon transistors to achieve synaptic memory by interconnecting the bulk of a "synaptic" transistor with the drain of a control transistor.
## Academic Motivation
The design is motivated by the paper “Synaptic and neural behaviours in a standard silicon transistor” by Pazos, S., et al. While the original work utilizes external components for part of the circuit, this project integrates a second transistor, placing both the synaptic and control transistors on the same silicon die using the SKY130 process.
This project was developed as a final project for the Integrated Circuit Design course at the Faculty of Engineering Mexicali, Universidad Autónoma de Baja California (UABC).
## Project Objectives
Implement a neurosynaptic cell using the SKY130 open-source PDK.
Validate the presence of the hysteresis loop in the $I_{drain}$ vs $V_{DD}$ characteristics through post-layout simulations.
Export GDS and LEF collateral compatible with the Tiny Tapeout analog/custom layout flow.
## Project Summary

| Item | Value |
| --- | --- |
| Top module | `tt_um_floating_bulk_test_2` |
| Process | SKY130 |
| Target | Tiny Tapeout analog/custom layout |
| Tile size | `1x2` |
| Design type | Neurosynaptic circuit |
| Implementation style | Custom layout using SKY130 n-fets |
| Supply |  |
| Project participants | Arangure Jacqueline, Garzón Rogelio, Leal Cesar, Lopez Alejandra, Lopez Brenda, Salinas Felipe, Valtierra José |

## Design Concept
The circuit consists of two MOSFETs: a Synaptic Transistor and a Control Transistor. By connecting the body (bulk) of the synaptic transistor to the drain of the control transistor, the circuit achieves a non-volatile-like memory effect. The hysteresis observed in the output current allows the transistor to "remember" previous states.

## Simulation Results
The circuit was evaluated using post-layout simulations in Xschem/Ngspice to verify neurosynaptic behavior.
Hysteresis can be observed in the drain current, confirming the memory effect required for synaptic emulation.

## Layout Strategy
The physical implementation was performed using a full-custom analog layout approach in Magic VLSI:
Deep N-Well Isolation: sky130_fd_pr__nfet transistors were used, integrated within a manually generated Deep N-Well layer. This step is fundamental to isolating the transistor bulk from the common wafer substrate.
Unconventional Connections: The layout strategy focused on establishing the interconnection between the synaptic transistor's bulk and the control transistor's drain—a configuration that serves as the physical basis for the hysteresis observed in simulations.
Manual vs. Automated Design: Given the analog nature of the design and the need to manipulate terminals that are usually tied to fixed potentials, a custom design approach is more appropriate than an automated digital flow.

## Repository Structure
src/project.v: Tiny Tapeout wrapper module.
gds/: Final GDS files.
lef/: LEF abstracts for the Tiny Tapeout flow.
xschem/: Schematic capture files.
mag/: Magic layout files.

## Acknowledgments
This project was developed at the Faculty of Engineering Mexicali, Universidad Autónoma de Baja California (UABC), within the Semiconductors and Microelectronics program. We acknowledge the use of the SKY130 process and the Tiny Tapeout platform for enabling open-source silicon fabrication.
