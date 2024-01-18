M552 S0					;stop wifi
G4 P500				;pause
M588 S"*"
G4 P500
M500 ;Save settings
M552 S1 ;start wifi again