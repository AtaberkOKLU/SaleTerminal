set_global_assignment -entity "VGA_PLL" -library "lib_VGA_PLL" -name IP_TOOL_NAME "altera_pll"
set_global_assignment -entity "VGA_PLL" -library "lib_VGA_PLL" -name IP_TOOL_VERSION "20.1"
set_global_assignment -entity "VGA_PLL" -library "lib_VGA_PLL" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_VGA_PLL" -name SPD_FILE [file join $::quartus(sip_path) "VGA_PLL.spd"]

set_global_assignment -library "lib_VGA_PLL" -name MISC_FILE [file join $::quartus(sip_path) "VGA_PLL_sim/VGA_PLL.vo"]
