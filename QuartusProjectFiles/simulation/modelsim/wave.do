onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /SaleTerminal_tb/CLOCK_50
add wave -noupdate /SaleTerminal_tb/RESET_N
add wave -noupdate /SaleTerminal_tb/KEY
add wave -noupdate /SaleTerminal_tb/SW
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/ButtonController_inst0/CMD_En
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/ButtonController_inst0/KEY_En
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/ButtonController_inst0/CMD_Reg
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/ButtonController_inst0/KEY_Reg
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/ButtonController_inst0/CleanSWOut
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/HighlightedProductList
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/ProductQuantity
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/Dir_in
add wave -noupdate -radix unsigned /SaleTerminal_tb/SaleTerminal_inst0/State
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/Barcode_Enable_Pulse
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/RSTN_BarcodeController_Pulse
add wave -noupdate -radix unsigned /SaleTerminal_tb/SaleTerminal_inst0/Barcode_Digit_out
add wave -noupdate -radix unsigned /SaleTerminal_tb/SaleTerminal_inst0/ProductID_out
add wave -noupdate -radix unsigned /SaleTerminal_tb/SaleTerminal_inst0/BarcodeController_inst0/Barcode_Digit_0
add wave -noupdate -radix unsigned /SaleTerminal_tb/SaleTerminal_inst0/BarcodeController_inst0/Barcode_Digit_1
add wave -noupdate -radix unsigned /SaleTerminal_tb/SaleTerminal_inst0/BarcodeController_inst0/Barcode_Digit_2
add wave -noupdate -radix unsigned /SaleTerminal_tb/SaleTerminal_inst0/BarcodeController_inst0/Barcode_Digit_3
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/VGA_Controller_inst0/CLOCK_50
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/VGA_Controller_inst0/RESET_N
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/VGA_Controller_inst0/HighlightedProductList
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/VGA_Controller_inst0/SW2
add wave -noupdate -radix unsigned /SaleTerminal_tb/SaleTerminal_inst0/VGA_Controller_inst0/VGA_R
add wave -noupdate -radix unsigned /SaleTerminal_tb/SaleTerminal_inst0/VGA_Controller_inst0/VGA_G
add wave -noupdate -radix unsigned /SaleTerminal_tb/SaleTerminal_inst0/VGA_Controller_inst0/VGA_B
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/VGA_Controller_inst0/VGA_CLK
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/VGA_Controller_inst0/VGA_HS
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/VGA_Controller_inst0/VGA_VS
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/VGA_Controller_inst0/VGA_BLANK_N
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/VGA_Controller_inst0/VGA_SYNC_N
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/VGA_Controller_inst0/PixBux_wire
add wave -noupdate -radix unsigned /SaleTerminal_tb/SaleTerminal_inst0/VGA_Controller_inst0/CounterX
add wave -noupdate -radix unsigned /SaleTerminal_tb/SaleTerminal_inst0/VGA_Controller_inst0/CounterY
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 484
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
WaveRestoreZoom {0 ps} {730 ps}
