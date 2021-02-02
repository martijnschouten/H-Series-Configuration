; resume.g
; Called when a paused job is resumed

if state.machineMode="FFF" ; If we're in FFF mode...
    if heat.heaters[0] != null ; ...and we have defined a bed heater...
        if heat.heaters[0].state != "fault" ; ...and it's not in a fault state...
            M144 S0 ; Set bed heater to active.

T{state.restorePoints[1].toolNumber} ; Select the tool that was active when the job was paused.

if {state.currentTool} != -1 ; If we have a tool selected...
    elif #tools[{state.nextTool}].name == 9 ; ...and it's a spindle...
        M3 P{state.currentTool - 1} S{state.restorePoints[1].spindleSpeeds[{state.currentTool - 1}]} ; ...restore spindle speed to the active value when the job was paused.

G1 R1 Y0 F3000 ; Return to Y position stored in slot 1 at 3000 mm/min
G1 R1 Z0 F3000 ; Return to Z position stored in slot 1 at 3000 mm/min

if state.machineMode="FFF" ; If we're in FFF mode...
    if heat.heaters[0] != null ; ...and we have defined a bed heater...
        if heat.heaters[0].state == "active" ; ...and it's active...
            M116 H0 S5 ; Wait until Heater 0 (bed) reaches +/-5C of target temperature

M116 P{state.currentTool} ; Wait until current tool reaches target temperature

if state.machineMode="FFF"
    M83 ; Set extruder to relative mode
    G1 E10 F6000 ; Extrude the retracted 10mm of filament at 6000 mm/min

M400 ; Wait for current moves to finish
