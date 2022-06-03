; Bed.g sets up and then runs a Mesh bed probing routine (G29)
T10 ; Select Tool 10 (Probe)
M561 ; Set Identity Transform (Clears any existing bed-plane fitting)

G90 ; Set to Absolute Positioning
;for printing on pieces of Delrin
;G1 X50 Y20 Z8 F8000 ; Move to X=0, Y=-45, and Z=3 at 8000 mm/min

;Use with Flat Print Bed
G1 X0 Y0 Z20 F8000 ; Move to X=0, Y=-45, and Z=3 at 8000 mm/min
G30 ; Probe the bed at the current XY position. When the probe is triggered, set the Z coordinate to the probe trigger height.

;Use with Flat Print Bed
;M557 X-180:180 Y-80:80 S45:40 ; Define a probing grid bounded for X between -180 and 180 and Y between -80 and 80 with X and Y probe point spacings of 45mm and 20mm, respectively\
M557 X-150:150 Y-40:40 S50:20 ; Define a probing grid bounded for X between -180 and 180 and Y between -80 and 80 with X and Y probe point spacings of 45mm and 20mm, respectively\
;M557 X-70:70 Y-30:30 S20:20 ; Define a probing grid bounded for X between -110 and 110 and Y between -40 and 40 with X and Y probe point spacings of 22mm and 10mm, respectively
;M557 X0:180 Y-80:80 S45:20 ; Define a probing grid bounded for X between 0 and 180 and Y between -80 and 80 with X and Y probe point spacings of 45mm and 20mm, respectively
;M557 X-100:100 Y-80:80 S40:40 ; Gerjan : M557 X-180:180 Y-80:80 S45:20 was default

;For printing the test pattern
;M557 X-80:80 Y-50:50 S40:25


;For printing on a jewcookie
;M557 X-20:20 Y-20:20 S20:20

;For printing on a milkacookie
;M557 X-15:15 Y-15:15 S15:15

;for printing on a piece of delrin
;M557 X-10:10 Y-20:20 S10:10
;M557 X-30:30 Y-5:5 S10:5
;M557 X-30:30 Y15:25 S10:5
;M557 X-30:30 Y35:45 S10:5
;M557 X-30:30 Y55:65 S10:5
;M557 X-30:30 Y75:85 S10:5
;M557 X-30:30 Y-25:-15 S10:5
;M557 X-30:30 Y-45:-35 S10:5
;M557 X-30:30 Y-65:-55 S10:5
;M557 X10:30 Y60:80 S5:5
;M557 X50:70 Y-60:-40 S5:5
;M557 X-20:20 Y-20:20 S10:10

;Use with Dovetail Bed
;M557 X-180:180 Y-45:45 S90

;Rotary Axis level
;M557 X-100:100 Y-180:180 S50:40

G29 ; Probe the bed using the grid defined by M557, save the height map in /sys/heightmap.csv, and activate bed compensation
