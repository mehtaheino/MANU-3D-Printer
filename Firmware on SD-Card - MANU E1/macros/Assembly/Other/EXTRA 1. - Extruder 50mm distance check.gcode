M291 P"Extruder 50mm distance check. Make sure Heater is connected, insulator installed, and fans connected. And PLA Filament is removed." S3
M104 S200 ;Heat nozzle to printing temperature
M106 P0 S128 ;Fan has to run at 50% to imitate printing condition if the nozzle side has effect
G28
G1 X100 F9000
M400 ; wait
M291 P"Remove Bowden tube and the quick connector from arm (8mm spanner). Click OK to continue." S3
M291 P"Cut a 150mm long piece of PLA filament and insert inside extruder (make sure its on the motor teeth). Click OK to continue." S3
M291 P"Mark filament using a permanent marker with ruler at 100mm. Click OK to continue." S3

T0 G1 E50 F60 ;T0 activates the extruder and pushes 50mm at slow speed of 1mm/s to imitate printing condition

M291 P"Measure the filament distance. It should have decreased by 50mm. Click OK to continue." S3
M291 P"Done. Press OK to continue" S3
M400 ; wait

;Notes:
;Ask user prompt with M291 or with M118 if that doesnt work
;note m291 P"message" double quotation mark
