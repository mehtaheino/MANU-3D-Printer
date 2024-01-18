; pause.g
; called when a print from SD card is paused
;
M83            ; relative extruder moves
G1 E-1 F3600  ; retract 1mm of filament
G91            ; relative positioning
G1 Z5 F360     ; lift Z by 5mm
G90            ; absolute positioning
G1 X100 Z190 F6000 ; go to X=0 Y=0

; Changed to G1 X120 Z205 F6000 from G1 X0 Y0 F6000



