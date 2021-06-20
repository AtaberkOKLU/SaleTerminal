onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /VGA_Contoller_tb/CLOCK_50
add wave -noupdate /VGA_Contoller_tb/RESET_N
add wave -noupdate /VGA_Contoller_tb/SW2
add wave -noupdate /VGA_Contoller_tb/HighlightedProductList
add wave -noupdate /VGA_Contoller_tb/VGA_R
add wave -noupdate /VGA_Contoller_tb/VGA_G
add wave -noupdate /VGA_Contoller_tb/VGA_B
add wave -noupdate /VGA_Contoller_tb/VGA_CLK
add wave -noupdate /VGA_Contoller_tb/VGA_HS
add wave -noupdate /VGA_Contoller_tb/VGA_VS
add wave -noupdate /VGA_Contoller_tb/VGA_BLANK_N
add wave -noupdate /VGA_Contoller_tb/VGA_SYNC_N
add wave -noupdate /VGA_Contoller_tb/VGA_Controller_inst0/HVSync_Generator_inst0/cHD
add wave -noupdate /VGA_Contoller_tb/VGA_Controller_inst0/HVSync_Generator_inst0/cVD
add wave -noupdate /VGA_Contoller_tb/VGA_Controller_inst0/HVSync_Generator_inst0/cDEN
add wave -noupdate /VGA_Contoller_tb/VGA_Controller_inst0/HVSync_Generator_inst0/CounterX
add wave -noupdate /VGA_Contoller_tb/VGA_Controller_inst0/HVSync_Generator_inst0/CounterY
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {16956749229 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 231
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
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {46059822375 ps}
