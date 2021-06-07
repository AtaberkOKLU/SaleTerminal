set_global_assignment -entity "FP_MULT" -library "lib_FP_MULT" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "FP_MULT" -library "lib_FP_MULT" -name IP_TOOL_VERSION "20.1"
set_global_assignment -entity "FP_MULT" -library "lib_FP_MULT" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_FP_MULT" -name SPD_FILE [file join $::quartus(sip_path) "../FP_MULT.spd"]
set_global_assignment -library "lib_FP_MULT" -name MISC_FILE [file join $::quartus(sip_path) "../../FP_MULT.qsys"]

set_global_assignment -library "lib_FP_MULT" -name MISC_FILE [file join $::quartus(sip_path) "FP_MULT.v"]
set_global_assignment -library "lib_FP_MULT" -name MISC_FILE [file join $::quartus(sip_path) "submodules/fpoint2_combi.vhd"]
set_global_assignment -library "lib_FP_MULT" -name MISC_FILE [file join $::quartus(sip_path) "submodules/FPMinMaxFused/FPMinMaxFused.vhd"]
set_global_assignment -library "lib_FP_MULT" -name MISC_FILE [file join $::quartus(sip_path) "submodules/FPCompareFused/FPCompareFused.vhd"]
set_global_assignment -library "lib_FP_MULT" -name MISC_FILE [file join $::quartus(sip_path) "submodules/FPNeg_Abs/FPNeg.vhd"]
set_global_assignment -library "lib_FP_MULT" -name MISC_FILE [file join $::quartus(sip_path) "submodules/FPNeg_Abs/FPAbs.vhd"]
