; File "0:/gcodes/NinjaFlex_cube_v1.gcode" resume print after print paused at 2022-07-13 15:35
G21
M141 P1 S0.0
G29 S1
T-1 P0
G92 X182.720 Y38.000 Z3.580 U-102.000 V-10.000 W0.000
G60 S1
G10 P1 S-273 R-273
G10 P3 S-273 R-273
G10 P4 S-273 R-273
G10 P5 S-273 R-273
G10 P2 S235 R235
T2 P0
M98 P"resurrect-prologue.g"
M116
M290 X0.000 Y0.000 Z0.000 U0.000 V0.000 W0.000 R0
T-1 P0
T2 P6
; Workplace coordinates
G10 L2 P1 X0.00 Y0.00 Z0.00 U0.00 V0.00 W0.00
G10 L2 P2 X-50.00 Y0.00 Z0.00 U0.00 V0.00 W0.00
G10 L2 P3 X-0.01 Y0.00 Z0.00 U0.00 V0.00 W0.00
G10 L2 P4 X0.00 Y0.00 Z0.00 U0.00 V0.00 W0.00
G10 L2 P5 X0.00 Y0.00 Z0.00 U0.00 V0.00 W0.00
G10 L2 P6 X0.00 Y0.00 Z0.00 U0.00 V0.00 W0.00
G10 L2 P7 X0.00 Y0.00 Z0.00 U0.00 V0.00 W0.00
G10 L2 P8 X0.00 Y0.00 Z0.00 U0.00 V0.00 W0.00
G10 L2 P9 X0.20 Y0.60 Z32.51 U0.00 V0.00 W0.00
G54
M106 S0.00
M106 P1 S1.00
M116
G92 E0.00000
M83
M23 "0:/gcodes/NinjaFlex_cube_v1.gcode"
M26 S1657
G0 F6000 Z5.000
G0 F6000 X180.000 Y30.000 U0.000 V-10.000 W0.000
G0 F6000 Z3.000
G1 F3000.0 P0
G21
M24
