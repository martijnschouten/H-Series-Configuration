; H4 Configuration File
; written by Diabase Engineering

; General preferences
G90 ; Send absolute coordinates...
M83 ; ...but relative extruder moves

; Drive orientation
M569 P0 S1; Drive 0 goes backwards
M569 P1 S0; Drive 1 goes backwards
M569 P2 S0 ; Drive 2 goes forwards
M569 P3 S0 ; Drive 3 goes backwards
M569 P4 S0 ; Drive 4 goes backwards
M569 P5 S1 ; Drive 5 goes forwards
M569 P6 S0 ; Drive 6 goes forwards
M569 P7 S0 ; Drive 7 goes backwards
M569 P8 S0 ; Drive 8 goes backwards
M569 P9 S0 ; Drive 9 goes backwards

; Drive settings
M584 X0 Y1 Z2 U3 V8 E6:6:6:9 A4 C5  ; Set driver mapping, E drive is multiplexed. Hide the extra axes
M208 X-210 Y-93 Z-10 U-10.1 V-100 A-365 C-1000 S1 ; Set axis minima
M208 X210 Y93 Z202.64 U360 V200 A365 C10000 S0 ; Set axis maxima
M350 X16 Y16 Z16 U16 V16 A16 C16 E16:16:16:16 I1 ; Configure microstepping with interpolation
M92 X320 Y320 Z640 U322.31 V1600 A53.33 C53.33 E96:96:96:96 ; Set steps per mm
M566 X500 Y500 Z300 U120 V500 A1000 C1000 E1200:1200:1200:1200 ; Set maximum instantaneous speed changes (mm/min)
M203 X12000 Y12000 Z3000 U8900 V10000 A20000 C20000 E6000:6000:6000:6000 ; Set maximum speeds (mm/min)
M201 X700 Y800 Z450 U600 V500 A600 C600 E250:250:250:250 ; Set accelerations (mm/s^2)
M906 X1400 Y2100 Z1800 U1200 V800 A1600 C1600 E1500:1500:1500:500 I30 ; Set motor currents (mA) and motor idle factor in per cent
M84 S5 ; Set idle timeout

; Endstops
M574 X1 Y1 U1 V2 A1 C1 S1 ; Define active high microswitches
;M574 V2 S0 ; Define active low microswitches
M558 P5 I0 H2 F150 T12000 ; Set Z probe type to switch, probing height and the probe + travel speeds
G31 Z0; Set Z probe trigger height

; Heaters
M140 H0 ; Turn on bed
M143 H0 S110 ; Limit Bed temperature to 120C
M143 H3 S290 ; Limit H3/E2 temperature to 290C
M143 H4 S290 ; Limit H4/E3 temperature to 290C
M143 H5 S290 ; Limit H5/E4 temperature to 290C
M143 H6 S290 ; Limit H6/E5 temperature to 290C
M143 H7 S290 ; Limit H7/E6 temperature to 290C
M302 S150 ; Set minimum extrude temp

; Tools
M98 P"tcreate1.g"
M98 P"tcreate2.g"
M98 P"tcreate3.g"
M98 P"tcreate4.g"
M98 P"tcreate5.g"
;M563 P8 S"Camera"
M563 P10 S"Probe"

; Load config-override.g after the tools have been created
M501
M453 ;toggle CNC mode
G4 P100
M451 ;return to FFF mode
G4 P100

; Thermistors
M305 P0 T100000 B3950 C0 R4700 S"Bed"
M305 P1 T100000 B3950 C0 R4700 ; E0_HEATER is unused
M305 P2 T100000 B3950 C0 R4700 ; E1_HEATER is used for the dry cabinet, see below
;M305 P3 T100000 B3950 C0 R4700 S"Nozzle 1"
M305 P4 T100000 B3950 C0 R4700 S"Nozzle 2"
M305 P5 T100000 B3950 C0 R4700 S"Nozzle 3"
M305 P6 T100000 B3950 C0 R4700 S"Nozzle 4"
M305 P7 T100000 B3950 C0 R4700 S"Nozzle 5"

;Dry Cabinet
;M98 P"drycabinet.g"

; Network
M550 P"HS012" ; Set machine name
M552 S1 ; Enable network

; Fans
M106 P0 S0 I-1 ; Cleaning station
M106 P2 S0 I-1 ; Cleaning station
M106 P1 H5:6:7 T50 ; Nozzle fans
M106 P4 S0 B0 C"Spindle 1" ; Spindle 1 air flow
M106 P5 S0 B0 C"Spindle 2" ; Spindle 2 air flow
M106 P6 S0 B0 C"Spindle 3" ; Spindle 3 air flow
M106 P7 S0 B0 C"Spindle 4" ; Spindle 4 air flow

; Miscellaneous
;M911 S22 R23 P"M98 P""estop.g"""  ; Run estop.g on power loss during a print
;M575 P1 B250000 ; Set up UART for pendant input
;M750 ; Enable scanner
