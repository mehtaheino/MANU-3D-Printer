; Configuration file for Duet WiFi (firmware version 3) 
; executed by the firmware on start-up 
 
; General preferences 
G90                                            ; send absolute coordinates... 
M83                                            ; ...but relative extruder moves 
M550 P"MANU 3DPrinter [mehtaheino.com]"       ; set printer name, Serial 
 
; Network 
M552 S1                                        ; enable network 
M586 P0 S1                                     ; enable HTTP 
M586 P1 S0                                     ; disable FTP 
M586 P2 S0                                     ; disable Telnet 

; Drives 
; Note direction of motors, may be different according to revision of wiring. 
; Confirm production series with serial number. 
M569 P0 S1 
M569 P1 S0 
M569 P2 S0 
M569 P3 S1 
M584 X0 Y1 Z2 E3 
M350 X16 Y16 Z16 I1 
M350 E256 I0 
M92 X80.00 Y80.00 Z400.0 E2210.000 
M906 X2000 Y2000 Z1400 E1400 I30 ; PH 1.10.23 test raising it from 1100 to 1400
M84 S30 

;Kinematics 
M566 X300 Y300 Z600 E3000 
M566 P1 
M203 X6000 Y6000 Z3600 E6000 
M201 X2000 Y2000 Z200 E9000 
M204 P600 T600 

; Axis Limits 
M208 X0 Y0 Z-1 S1                               ; set axis minima 
M208 X256 Y165 Z210 S0                       ; set axis maxima 
;M208 X256 Y165 Z202.85 S0                       ; PH BLTOUCH TEST: Nozzle touches bed at Z0.15. At Z203 it was already working. Adjusting it to Z202.85 for more accuracy


; Endstops 
M574 Z0 P"nil" ;reset z preconfigurations TEST
M574 X1 S1 P"xstop"                             ; configure active-high endstop for low end on X via pin null 
M574 Y1 S1 P"ystop"                             ; configure active-high endstop for low end on Y via pin null 
M574 Z2 S1 P"zstop"                                    ; configure Z-probe endstop for high end on Z 

; Z-Probe 
M950 S0 C"exp.heater3" 
M558 P9 C"^exp.e2stop" H3 F120 T6000 ;Bltouch setup 
G31 P25 X0 Y40 Z2.00 ;Measured value of bltouch is Z1.94 (2.10.23) but layer measures 0.1mm too high. Forcing Z closer 0.06, to Z2.00
 
M557 X10:240 Y40:140 P10:6 

;G29 S1 ;Enable mesh compensation with a level parameter of 1 by SM 2023-01-01 1936

; Heaters 
M308 S1 P"e0temp" Y"thermistor" T100000 B5020 C1.09016e-7 ; configure sensor 1 as thermistor on pin e0temp 
M950 H1 C"e0heat" T1                           ; create nozzle heater output on e0heat and map it to sensor 1 
M307 H1 B0 S1.00                               ; disable bang-bang mode for heater  and set PWM limit 
M143 H1 S300                                   ; set temperature limit for heater 1 to 300C 

; Fans 
M950 F0 C"exp.heater4" Q250 ;12V Fan Extension - Print cooling fan 
M106 P0 S0 H-1 ; Set fan 0 value. 
 
M950 F1 C"exp.heater5" Q250 
M106 P1 T40 H1 
 
M950 F2 C"fan2" Q250 
M106 P2 T40 H1 
;Other fan connectors: Always on: LED 24V. 

; Tools 
M563 P0 D0 H1 F0                               ; define tool 0 
G10 P0 X0 Y0 Z0                                ; set tool 0 axis offsets 
G10 P0 R0 S0                                   ; set initial tool 0 active and standby temperatures to 0C 

; Miscellaneous 
M575 P1 S1 B57600                              ; enable support for PanelDue 
M501 