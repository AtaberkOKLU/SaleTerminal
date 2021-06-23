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
add wave -noupdate -radix unsigned /SaleTerminal_tb/SaleTerminal_inst0/HoverController_inst0/Barcode_Digit_0
add wave -noupdate -radix unsigned /SaleTerminal_tb/SaleTerminal_inst0/HoverController_inst0/Barcode_Digit_1
add wave -noupdate -radix unsigned /SaleTerminal_tb/SaleTerminal_inst0/HoverController_inst0/Barcode_Digit_2
add wave -noupdate -radix unsigned /SaleTerminal_tb/SaleTerminal_inst0/HoverController_inst0/Barcode_Digit_3
add wave -noupdate -radix unsigned /SaleTerminal_tb/SaleTerminal_inst0/HoverController_inst0/NumOfBarcodeDigitsEntered
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/HoverController_inst0/ValidID
add wave -noupdate -radix unsigned /SaleTerminal_tb/SaleTerminal_inst0/HoverController_inst0/SelectedProductID
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/HoverController_inst0/HighlightedProductList
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/HoverController_inst0/HighlightedBarcodeOut
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/HoverController_inst0/HighlightedDecoderOut
add wave -noupdate -radix unsigned /SaleTerminal_tb/SaleTerminal_inst0/VGA_Controller_inst0/PixelController_inst0/Image_Shape_Submodule_inst0/ImageLocator_inst0/CounterX
add wave -noupdate -radix unsigned /SaleTerminal_tb/SaleTerminal_inst0/VGA_Controller_inst0/PixelController_inst0/Image_Shape_Submodule_inst0/ImageLocator_inst0/CounterY
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/VGA_Controller_inst0/PixelController_inst0/Image_Shape_Submodule_inst0/ImageLocator_inst0/ROM_Addr
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/VGA_Controller_inst0/PixelController_inst0/Image_Shape_Submodule_inst0/ImageLocator_inst0/PixelBus
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/VGA_Controller_inst0/PixelController_inst0/Image_Shape_Submodule_inst0/ImageLocator_inst0/isImage
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/VGA_Controller_inst0/PixelController_inst0/Image_Shape_Submodule_inst0/ImageLocator_inst0/inHighlightedArea
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/VGA_Controller_inst0/PixelController_inst0/Image_Shape_Submodule_inst0/ImageLocator_inst0/inHighlightedPrdArea_Reg
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/VGA_Controller_inst0/PixelController_inst0/Image_Shape_Submodule_inst0/ImageLocator_inst0/inHighlightedImgArea_Reg
add wave -noupdate -radix unsigned /SaleTerminal_tb/SaleTerminal_inst0/VGA_Controller_inst0/PixelController_inst0/Image_Shape_Submodule_inst0/ImageLocator_inst0/ImageID
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
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
configure wave -timelineunits ps
update
WaveRestoreZoom {18620934653 ps} {19229798153 ps}
