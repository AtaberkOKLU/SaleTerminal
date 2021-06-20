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

vlog -vlog01compat -work work +incdir+D:/EE/EE314/Project/QuartusProjectFiles {D:/EE/EE314/Project/QuartusProjectFiles/BarcodeController.v}
vlog -vlog01compat -work work +incdir+D:/EE/EE314/Project/QuartusProjectFiles {D:/EE/EE314/Project/QuartusProjectFiles/ImageROM.v}
vlog -vlog01compat -work work +incdir+D:/EE/EE314/Project/QuartusProjectFiles {D:/EE/EE314/Project/QuartusProjectFiles/HVSync_Generator.v}
vlog -vlog01compat -work work +incdir+D:/EE/EE314/Project/QuartusProjectFiles {D:/EE/EE314/Project/QuartusProjectFiles/VGA_Controller.v}
vlog -vlog01compat -work work +incdir+D:/EE/EE314/Project/QuartusProjectFiles {D:/EE/EE314/Project/QuartusProjectFiles/ImageLocator.v}
vlog -vlog01compat -work work +incdir+D:/EE/EE314/Project/QuartusProjectFiles {D:/EE/EE314/Project/QuartusProjectFiles/Image_Shape_Submodule.v}
vlog -vlog01compat -work work +incdir+D:/EE/EE314/Project/QuartusProjectFiles {D:/EE/EE314/Project/QuartusProjectFiles/PixelController.v}

vlog -vlog01compat -work work +incdir+D:/EE/EE314/Project/QuartusProjectFiles {D:/EE/EE314/Project/QuartusProjectFiles/VGA_Contoller_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  VGA_Controller_tb

add wave *
view structure
view signals
run -all
