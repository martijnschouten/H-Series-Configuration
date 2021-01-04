if state.machineMode="FFF"
    M83                 ; relative extruder moves
    G1 E-10 F6000       ; retract 10mm
G91                 ; relative moves
G1 Z40 H1 F3000     ; raise tool 40mm
G90                 ; absolute moves
G1 Y85 F10000       ; move head out of the way of the print
if state.machineMode="CNC"
    M5 P0
    M5 P1
