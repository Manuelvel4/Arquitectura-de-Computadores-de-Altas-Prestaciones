onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -height 25 -expand -group Inputs -height 30 -radix binary /s4bits/A
add wave -noupdate -height 25 -expand -group Inputs -height 30 -radix hexadecimal -childformat {{/s4bits/B(3) -radix hexadecimal} {/s4bits/B(2) -radix hexadecimal} {/s4bits/B(1) -radix hexadecimal} {/s4bits/B(0) -radix hexadecimal}} -subitemconfig {/s4bits/B(3) {-radix hexadecimal} /s4bits/B(2) {-radix hexadecimal} /s4bits/B(1) {-radix hexadecimal} /s4bits/B(0) {-radix hexadecimal}} /s4bits/B
add wave -noupdate -height 25 -expand -group Inputs -height 30 /s4bits/cen
add wave -noupdate -height 25 -expand -group Output -height 30 -radix hexadecimal /s4bits/SUM
add wave -noupdate -height 25 -expand -group Output -height 30 /s4bits/csal
add wave -noupdate -expand -group Internal -height 30 /s4bits/c1
add wave -noupdate -expand -group Internal -height 30 /s4bits/c2
add wave -noupdate -expand -group Internal -height 30 /s4bits/c3
add wave -noupdate -expand -group Internal -height 30 /s4bits/c4
add wave -noupdate -height 30 -expand -group {Sum Peso 0} /s4bits/S1bit0/x
add wave -noupdate -height 30 -expand -group {Sum Peso 0} /s4bits/S1bit0/y
add wave -noupdate -height 30 -expand -group {Sum Peso 0} /s4bits/S1bit0/cen
add wave -noupdate -height 30 -expand -group {Sum Peso 0} /s4bits/S1bit0/s
add wave -noupdate -height 30 -expand -group {Sum Peso 0} /s4bits/S1bit0/csal
add wave -noupdate -height 30 -expand -group {Sum Peso 1} /s4bits/S1bit1/x
add wave -noupdate -height 30 -expand -group {Sum Peso 1} /s4bits/S1bit1/y
add wave -noupdate -height 30 -expand -group {Sum Peso 1} /s4bits/S1bit1/cen
add wave -noupdate -height 30 -expand -group {Sum Peso 1} /s4bits/S1bit1/s
add wave -noupdate -height 30 -expand -group {Sum Peso 1} /s4bits/S1bit1/csal
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {65000 ps} 0} {{Cursor 2} {50000 ps} 0} {{Cursor 3} {25082 ps} 0}
quietly wave cursor active 3
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {56820 ps}
