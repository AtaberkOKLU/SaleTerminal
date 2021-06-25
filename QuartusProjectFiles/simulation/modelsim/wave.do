onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /SaleTerminal_tb/CLOCK_50
add wave -noupdate /SaleTerminal_tb/RESET_N
add wave -noupdate /SaleTerminal_tb/KEY
add wave -noupdate /SaleTerminal_tb/SW
add wave -noupdate /SaleTerminal_tb/VGA_R
add wave -noupdate /SaleTerminal_tb/VGA_G
add wave -noupdate /SaleTerminal_tb/VGA_B
add wave -noupdate /SaleTerminal_tb/VGA_CLK
add wave -noupdate /SaleTerminal_tb/VGA_HS
add wave -noupdate /SaleTerminal_tb/VGA_VS
add wave -noupdate /SaleTerminal_tb/VGA_BLANK_N
add wave -noupdate /SaleTerminal_tb/VGA_SYNC_N
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/BasketController_inst0/P_LIST_0
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/BasketController_inst0/P_LIST_1
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/BasketController_inst0/P_LIST_2
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/BasketController_inst0/P_LIST_3
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/VGA_Controller_inst0/PixelController_inst0/TextController_inst0/output_bit
add wave -noupdate -radix unsigned /SaleTerminal_tb/SaleTerminal_inst0/StateMachine_inst0/BasketProductNum
add wave -noupdate -radix unsigned /SaleTerminal_tb/SaleTerminal_inst0/StateMachine_inst0/State_out
add wave -noupdate -radix unsigned /SaleTerminal_tb/SaleTerminal_inst0/StateMachine_inst0/ProductQuantity
add wave -noupdate -radix unsigned /SaleTerminal_tb/SaleTerminal_inst0/StateMachine_inst0/ProductID_out
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/StateMachine_inst0/BasketController_Enable_Pulse
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/StateMachine_inst0/BasketController_Cancel_Pulse
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/StateMachine_inst0/Product_valid
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {5795427 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 457
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
WaveRestoreZoom {5736596 ps} {5957450 ps}
