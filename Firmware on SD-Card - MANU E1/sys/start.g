;****start.g****
;****setup print****
G29 S2	; clear previous height map
G21	; units to mm
G90	; absolute positioning
M83	; relative extruder mode
M280 P0 S160	; BLTouch alarm release
G4 P100	; delay for BLTouch
G28	; home all
M400	; Finish commands
;****BLTouch routine****
G1 X10 Y0 Z15 F9000	; probe one point 1/2
G30	; probe one point 2/2
G29	; probe heightmap
;****Pressure advance [PA], default values, for PLA****
M572 D0 S0.06	; PA value S0.** 
M400	; Finish commands