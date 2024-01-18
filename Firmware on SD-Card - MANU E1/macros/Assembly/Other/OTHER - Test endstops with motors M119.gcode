G28
G4 P200				;pause
M119				;Report endstops
M291 P"Homed XYZ. Console should read M119: Endstops - X: stopped, Y: stopped, Z: stopped, Z probe: not stopped" S3
G1 X125 Y75 Z150 F9000
M119
M291 P"XYZ in middle of area. Console should read M119: Endstops - X: not stopped, Y: not stopped, Z: not stopped, Z probe: not stopped" S3

;Notes:
;Ask user prompt with M291 or with M118 if that doesnt work
;note m291 P"message" double quotation mark
