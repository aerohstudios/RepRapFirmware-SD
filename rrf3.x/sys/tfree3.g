; tfree3.g
; called when tool 3 is freed

;Drop the bed
G91
G1 Z4 F1000
G90

;Purge nozzle
;M98 P"purge.g"

;Move In
G53 G1 X302.5 Y150 F5000
G53 G1 X302.5 Y200 F5000
G53 G1 X302.5 Y205 F5000
G53 G1 X302.5 Y227 F5000

;Open Coupler
M98 P"/macros/Coupler - Unlock"

;fan off
M106 P8 S0

;Move Out
G53 G1 X302.5 Y175 F50000

