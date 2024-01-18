; bed.g
; called to perform automatic bed compensation via G32
M561 ; clear any bed transform
; 7 points, 6 factors, probing radius: 150, probe offset (0, 40)
G30 P0 X0.00 Y118.42 Z-99999 H0
G30 P1 X129.90 Y-75.00 Z-99999 H0
G30 P2 X-129.90 Y-75.00 Z-99999 H0
G30 P3 X0.00 Y48.91 Z-99999 H0
G30 P4 X64.95 Y-37.50 Z-99999 H0
G30 P5 X-64.95 Y-37.50 Z-99999 H0
G30 P6 X0 Y0 Z-99999 S6


