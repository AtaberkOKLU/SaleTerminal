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
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/BasketController_inst0/ENABLE
add wave -noupdate -radix unsigned /SaleTerminal_tb/SaleTerminal_inst0/BasketController_inst0/ID
add wave -noupdate -radix unsigned /SaleTerminal_tb/SaleTerminal_inst0/BasketController_inst0/QTT
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/BasketController_inst0/CANCEL
add wave -noupdate -radix unsigned /SaleTerminal_tb/SaleTerminal_inst0/BasketController_inst0/NUM
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/BasketController_inst0/T_PRICE
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/BasketController_inst0/PRICE_LIST_0
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/BasketController_inst0/PRICE_LIST_1
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/BasketController_inst0/PRICE_LIST_2
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/BasketController_inst0/PRICE_LIST_3
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/BasketController_inst0/T_PRICE_REG
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/BasketController_inst0/PRICE
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/BasketController_inst0/DELETE_PRICE
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/BasketController_inst0/NUM_REG
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/BasketController_inst0/EN_Price_Level
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/BasketController_inst0/Price_Enable_Pulse
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/VGA_Controller_inst0/PixelController_inst0/TextController_inst0/output_bit
add wave -noupdate -radix unsigned /SaleTerminal_tb/SaleTerminal_inst0/VGA_Controller_inst0/PixelController_inst0/TextController_inst0/H_counter
add wave -noupdate -radix unsigned /SaleTerminal_tb/SaleTerminal_inst0/VGA_Controller_inst0/PixelController_inst0/TextController_inst0/V_counter
add wave -noupdate -radix hexadecimal /SaleTerminal_tb/SaleTerminal_inst0/VGA_Controller_inst0/PixelController_inst0/TextController_inst0/output_bit_char
add wave -noupdate -radix unsigned /SaleTerminal_tb/SaleTerminal_inst0/VGA_Controller_inst0/PixelController_inst0/TextController_inst0/text_controller1/letter_writer_1/row_counter
add wave -noupdate -radix unsigned /SaleTerminal_tb/SaleTerminal_inst0/VGA_Controller_inst0/PixelController_inst0/TextController_inst0/text_controller1/letter_writer_1/coloumn_counter
add wave -noupdate -radix unsigned /SaleTerminal_tb/SaleTerminal_inst0/VGA_Controller_inst0/PixelController_inst0/TextController_inst0/text_controller1/letter_writer_1/char_counter
add wave -noupdate /SaleTerminal_tb/SaleTerminal_inst0/VGA_Controller_inst0/PixelController_inst0/TextController_inst0/text_controller1/letter_writer_1/enable
add wave -noupdate -radix hexadecimal /SaleTerminal_tb/SaleTerminal_inst0/VGA_Controller_inst0/PixelController_inst0/TextController_inst0/addr
add wave -noupdate -radix unsigned /SaleTerminal_tb/SaleTerminal_inst0/VGA_Controller_inst0/PixelController_inst0/TextController_inst0/coloumn_counter
add wave -noupdate -radix unsigned /SaleTerminal_tb/SaleTerminal_inst0/VGA_Controller_inst0/PixelController_inst0/TextController_inst0/coloumn_counter1
add wave -noupdate -radix unsigned /SaleTerminal_tb/SaleTerminal_inst0/VGA_Controller_inst0/PixelController_inst0/TextController_inst0/coloumn_counter2
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2113454691 ps} 0}
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
WaveRestoreZoom {2111784166 ps} {2117859396 ps}
