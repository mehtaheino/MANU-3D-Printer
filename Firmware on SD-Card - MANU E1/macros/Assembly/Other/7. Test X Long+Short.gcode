;****Troubleshooting start****
T0
M104 S200
M109 S200
M106 S102
M400 ;Finish all commands
G28

G1 X200 F6000
G1 X5
G1 X200 F6000
G1 X5
G1 X200 F6000
G1 X5
G1 X200 F6000
G1 X5
G1 X200 F6000
G1 X80
G1 X120 F6000
G1 X80
G1 X120 F6000
G1 X80
G1 X120 F6000
G1 X80
G1 X120 F6000
G1 X80
G1 X120 F6000

;****Troubleshooting end****
G4 P500 ;Wait for 0.5 seconds
G1 Z300 F600 H3 ;Approach and set the detection point as zero (in reference to start)
G1 X-300 F900 H3 ;Approach and set the detection point as zero (in reference to start)
G1 Y-300 F900 H3 ;Approach and set the detection point as zero (in reference to start)
M114 ;Get current position
G4 P1000 ;Wait for 1 seconds
M18 ;Turn off steppers
M104 S0 T0 ;set extruder temperature
