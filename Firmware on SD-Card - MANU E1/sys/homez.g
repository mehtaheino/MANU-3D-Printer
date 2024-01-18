
G91              ; relative positioning
G1 H1 Z215 F1800 ; move Z up until the endstop is triggered ;f1800
G1 H2 Z-0.5 F1200    ; go back a few mm
G1 H1 Z215 F600  ; move slowly to Z axis endstop once more (second pass)
G92 Z210         ; set Z position to axis maximum (you may want to adjust this)
G90               ; absolute positioning

; homez.g
; called to home the Z axis
;
; generated by RepRapFirmware Configuration Tool v3.1.4 on Mon Oct 19 2020 17:24:09 GMT+0300 (Eastern European Summer Time)
;G91               ; relative positioning
;G1 H2 Z5 F1800    ; lift Z relative to current position
;G90               ; absolute positioning
;G1 X0 Y84.9 F1800 ; go to first probe point
;G30               ; home Z by probing the bed

; Uncomment the following lines to lift Z after probing
;G91              ; relative positioning
;G1 Z5 F30        ; lift Z relative to current position
;G90              ; absolute positioning

