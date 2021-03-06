transcript on
if ![file isdirectory SaleTerminal_iputf_libs] {
	file mkdir SaleTerminal_iputf_libs
}

if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

###### Libraries for IPUTF cores 
###### End libraries for IPUTF cores 
###### MIF file copy and HDL compilation commands for IPUTF cores 


vlog "D:/EE/EE314/Project/QuartusProjectFiles/VGA_PLL_sim/VGA_PLL.vo"

vlog -vlog01compat -work work +incdir+D:/EE/EE314/Project/QuartusProjectFiles {D:/EE/EE314/Project/QuartusProjectFiles/Bin2BCD_5D.v}
vlog -vlog01compat -work work +incdir+D:/EE/EE314/Project/QuartusProjectFiles {D:/EE/EE314/Project/QuartusProjectFiles/Bin2BCD_4D.v}
vlog -vlog01compat -work work +incdir+D:/EE/EE314/Project/QuartusProjectFiles {D:/EE/EE314/Project/QuartusProjectFiles/text_controller_general.v}
vlog -vlog01compat -work work +incdir+D:/EE/EE314/Project/QuartusProjectFiles {D:/EE/EE314/Project/QuartusProjectFiles/price_writer.v}
vlog -vlog01compat -work work +incdir+D:/EE/EE314/Project/QuartusProjectFiles {D:/EE/EE314/Project/QuartusProjectFiles/number_writer_pixel.v}
vlog -vlog01compat -work work +incdir+D:/EE/EE314/Project/QuartusProjectFiles {D:/EE/EE314/Project/QuartusProjectFiles/num_calc.v}
vlog -vlog01compat -work work +incdir+D:/EE/EE314/Project/QuartusProjectFiles {D:/EE/EE314/Project/QuartusProjectFiles/mux_13x1.v}
vlog -vlog01compat -work work +incdir+D:/EE/EE314/Project/QuartusProjectFiles {D:/EE/EE314/Project/QuartusProjectFiles/mux_11x1.v}
vlog -vlog01compat -work work +incdir+D:/EE/EE314/Project/QuartusProjectFiles {D:/EE/EE314/Project/QuartusProjectFiles/writer.v}
vlog -vlog01compat -work work +incdir+D:/EE/EE314/Project/QuartusProjectFiles {D:/EE/EE314/Project/QuartusProjectFiles/text_controller.v}
vlog -vlog01compat -work work +incdir+D:/EE/EE314/Project/QuartusProjectFiles {D:/EE/EE314/Project/QuartusProjectFiles/mux_9x1.v}
vlog -vlog01compat -work work +incdir+D:/EE/EE314/Project/QuartusProjectFiles {D:/EE/EE314/Project/QuartusProjectFiles/mux_8x1.v}
vlog -vlog01compat -work work +incdir+D:/EE/EE314/Project/QuartusProjectFiles {D:/EE/EE314/Project/QuartusProjectFiles/mux_12x1.v}
vlog -vlog01compat -work work +incdir+D:/EE/EE314/Project/QuartusProjectFiles {D:/EE/EE314/Project/QuartusProjectFiles/letter_writer.v}
vlog -vlog01compat -work work +incdir+D:/EE/EE314/Project/QuartusProjectFiles {D:/EE/EE314/Project/QuartusProjectFiles/font_rom.v}
vlog -vlog01compat -work work +incdir+D:/EE/EE314/Project/QuartusProjectFiles {D:/EE/EE314/Project/QuartusProjectFiles/PriceCalculator.v}
vlog -vlog01compat -work work +incdir+D:/EE/EE314/Project/QuartusProjectFiles {D:/EE/EE314/Project/QuartusProjectFiles/BasketController.v}
vlog -vlog01compat -work work +incdir+D:/EE/EE314/Project/QuartusProjectFiles {D:/EE/EE314/Project/QuartusProjectFiles/Encoder16x4.v}
vlog -vlog01compat -work work +incdir+D:/EE/EE314/Project/QuartusProjectFiles {D:/EE/EE314/Project/QuartusProjectFiles/encoder8x3.v}
vlog -vlog01compat -work work +incdir+D:/EE/EE314/Project/QuartusProjectFiles {D:/EE/EE314/Project/QuartusProjectFiles/ButtonManager.v}
vlog -vlog01compat -work work +incdir+D:/EE/EE314/Project/QuartusProjectFiles {D:/EE/EE314/Project/QuartusProjectFiles/BarcodeController.v}
vlog -vlog01compat -work work +incdir+D:/EE/EE314/Project/QuartusProjectFiles {D:/EE/EE314/Project/QuartusProjectFiles/Segment7.v}
vlog -vlog01compat -work work +incdir+D:/EE/EE314/Project/QuartusProjectFiles {D:/EE/EE314/Project/QuartusProjectFiles/ImageROM.v}
vlog -vlog01compat -work work +incdir+D:/EE/EE314/Project/QuartusProjectFiles {D:/EE/EE314/Project/QuartusProjectFiles/HVSync_Generator.v}
vlog -vlog01compat -work work +incdir+D:/EE/EE314/Project/QuartusProjectFiles {D:/EE/EE314/Project/QuartusProjectFiles/VGA_Controller.v}
vlog -vlog01compat -work work +incdir+D:/EE/EE314/Project/QuartusProjectFiles {D:/EE/EE314/Project/QuartusProjectFiles/BarcodeShiftRegister.v}
vlog -vlog01compat -work work +incdir+D:/EE/EE314/Project/QuartusProjectFiles {D:/EE/EE314/Project/QuartusProjectFiles/ImageLocator.v}
vlog -vlog01compat -work work +incdir+D:/EE/EE314/Project/QuartusProjectFiles {D:/EE/EE314/Project/QuartusProjectFiles/ButtonDebouncer.v}
vlog -vlog01compat -work work +incdir+D:/EE/EE314/Project/QuartusProjectFiles {D:/EE/EE314/Project/QuartusProjectFiles/ButtonLevelPulseConverter.v}
vlog -vlog01compat -work work +incdir+D:/EE/EE314/Project/QuartusProjectFiles {D:/EE/EE314/Project/QuartusProjectFiles/ButtonController.v}
vlog -vlog01compat -work work +incdir+D:/EE/EE314/Project/QuartusProjectFiles {D:/EE/EE314/Project/QuartusProjectFiles/SwitchDebouncer.v}
vlog -vlog01compat -work work +incdir+D:/EE/EE314/Project/QuartusProjectFiles {D:/EE/EE314/Project/QuartusProjectFiles/Barcode2ProductID.v}
vlog -vlog01compat -work work +incdir+D:/EE/EE314/Project/QuartusProjectFiles {D:/EE/EE314/Project/QuartusProjectFiles/Direction2ProductID.v}
vlog -vlog01compat -work work +incdir+D:/EE/EE314/Project/QuartusProjectFiles {D:/EE/EE314/Project/QuartusProjectFiles/StateMachine.v}
vlog -vlog01compat -work work +incdir+D:/EE/EE314/Project/QuartusProjectFiles {D:/EE/EE314/Project/QuartusProjectFiles/HoverController.v}
vlog -vlog01compat -work work +incdir+D:/EE/EE314/Project/QuartusProjectFiles {D:/EE/EE314/Project/QuartusProjectFiles/Decoder4x16.v}
vlog -vlog01compat -work work +incdir+D:/EE/EE314/Project/QuartusProjectFiles {D:/EE/EE314/Project/QuartusProjectFiles/Image_Shape_Submodule.v}
vlog -vlog01compat -work work +incdir+D:/EE/EE314/Project/QuartusProjectFiles {D:/EE/EE314/Project/QuartusProjectFiles/PixelController.v}
vlog -vlog01compat -work work +incdir+D:/EE/EE314/Project/QuartusProjectFiles {D:/EE/EE314/Project/QuartusProjectFiles/SaleTerminal.v}
vlog -vlog01compat -work work +incdir+D:/EE/EE314/Project/QuartusProjectFiles {D:/EE/EE314/Project/QuartusProjectFiles/LED_Controller.v}
vlog -vlog01compat -work work +incdir+D:/EE/EE314/Project/QuartusProjectFiles {D:/EE/EE314/Project/QuartusProjectFiles/Decoder3x8.v}
vlog -vlog01compat -work work +incdir+D:/EE/EE314/Project/QuartusProjectFiles {D:/EE/EE314/Project/QuartusProjectFiles/DisplaySelectedIDSeg7.v}
vlog -vlog01compat -work work +incdir+D:/EE/EE314/Project/QuartusProjectFiles {D:/EE/EE314/Project/QuartusProjectFiles/Binary2BCD_2D.v}
vlog -vlog01compat -work work +incdir+D:/EE/EE314/Project/QuartusProjectFiles {D:/EE/EE314/Project/QuartusProjectFiles/BarcodeHoverController.v}

vlog -vlog01compat -work work +incdir+D:/EE/EE314/Project/QuartusProjectFiles {D:/EE/EE314/Project/QuartusProjectFiles/SaleTerminal_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  SaleTerminal_tb

add wave *
view structure
view signals
run -all
