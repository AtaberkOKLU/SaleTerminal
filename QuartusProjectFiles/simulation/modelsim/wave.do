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
add wave -noupdate /SaleTerminal_tb/HEX0
add wave -noupdate /SaleTerminal_tb/HEX1
add wave -noupdate /SaleTerminal_tb/HEX2
add wave -noupdate /SaleTerminal_tb/HEX3
add wave -noupdate /SaleTerminal_tb/HEX5
add wave -noupdate /SaleTerminal_tb/LEDR
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/HoverController_inst0/HighlightedProductList
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/VGA_Controller_inst0/PixelController_inst0/Image_Shape_Submodule_inst0/ImageLocator_inst0/inHighlightedArea
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/CMD_En
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/CMD_Reg
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/KEY_En
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/KEY_Reg
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/CleanSWOut
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/HighlightedProductList
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/ProductQuantity
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/BasketController_Enable_Pulse
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/Dir_in
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/State
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/Barcode_Enable_Pulse
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/RSTN_BarcodeController_Pulse
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/Barcode_Digit_out
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/ProductID_out
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/BarcodeDigitCompleted
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/Barcode_Digit_0
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/Barcode_Digit_1
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/Barcode_Digit_2
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/Barcode_Digit_3
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/ValidID
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {3687805 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 220
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
WaveRestoreZoom {0 ps} {7350 ns}
