; Bed.g sets up and then runs a Mesh bed probing routine (G29)
T10 ; Select Tool 10 (Probe)
M561 ; Set Identity Transform (Clears any existing bed-plane fitting)

G90 ; Set to Absolute Positioning
;G1 X0 Y-45 Z8 F8000 ; Move to X=0, Y=-45, and Z=3 at 8000 mm/min
;for printing on pieces of Delrin
G1 X50 Y20 Z8 F8000 ; Move to X=0, Y=-45, and Z=3 at 8000 mm/min
G30 ; Probe the bed at the current XY position. When the probe is triggered, set the Z coordinate to the probe trigger height.

;Use with Flat Print Bed
; M557 X-180:180 Y-80:80 S90:45 ; Define a probing grid bounded for X between -180 and 180 and Y between -80 and 80 with X and Y probe point spacings of 90mm and 45mm, respectively

;For printing the test pattern
;M557 X-30:30 Y-30:30 S40:30 :default
M557 X-30:30 Y-30:30 S20 ; Heime for wafer probing
;M557 X-30:30 Y-12:8 S5 ; Heime for pcb probing
;M557 X-60:60 Y-10:10 S5 ; Heime for electrify probing

;for printing on a piece of delrin
;M557 X-20:20 Y-5:5 S10:5
;M557 X30:80 Y15:25 S10:5

;Use with Dovetail Bed
;M557 X-180:180 Y-45:45 S90

;Rotary Axis level
;M557 X-100:100 Y-180:180 S50:40

G29; Probe the bed using the grid defined by M557, save the height map in /sys/heightmap.csv, and activate bed compensation
