/*
 *		Module		:	Button Controller Block
 * 	Description	: 	It manages both KEY and SW inputs,
 *							enhances, syncronizes to clk and 
 *							filters.
 *		Inputs		: 	SW		=> SW[2:0] from the board
 *						:	KEY 	=> KEY# from the board (ACTIVE LOW)
 *						:	CLOCK	=> Button CLOCK
 *
 *		Outputs		: 	CMD_Reg	=> Provides Current States of CMD Keys
 *											for other blocks. (Active HIGH)
 * 					:	KEY_Reg 	=> Provides Current States of KEY values
 *											for other blocks. (Active HIGH)
 *						:	CMD_En	=> Provides CMD Enable pulse for other 
 *											logic systems.
 *						:	KEY_En	=> Provides KEY Enable pulse for other 
 *											logic systems.
 *		Owner			: 	Ataberk ÖKLÜ
 */

module ButtonController
#(
	parameter DBNCR_CNTR_REG_SIZE = 2

)(
		input  wire [3:0] KEY,
		input  wire [2:0] SW,
		input  wire 		CLOCK_50,
		output wire [3:0] CMD_En,
		output wire [3:0] KEY_En,
		output wire [3:0] CMD_Reg,
		output wire [3:0] KEY_Reg,
		output wire [2:0] CleanSWOut,
		output wire [3:0] CleanButtonOut
);

// Button and SW Debouncers

ButtonDebouncer
#(
	.COUNTER_REG_SIZE(DBNCR_CNTR_REG_SIZE)
)
ButtonDebouncer_Key0(
	.NoisyButtonIn(KEY[0]),
	.CLK(CLOCK_50),
	.CleanButtonOut(CleanButtonOut[0])
);

ButtonDebouncer
#(
	.COUNTER_REG_SIZE(DBNCR_CNTR_REG_SIZE)
)
ButtonDebouncer_Key1(
	.NoisyButtonIn(KEY[1]),
	.CLK(CLOCK_50),
	.CleanButtonOut(CleanButtonOut[1])
);

ButtonDebouncer
#(
	.COUNTER_REG_SIZE(DBNCR_CNTR_REG_SIZE)
)
ButtonDebouncer_Key2(
	.NoisyButtonIn(KEY[2]),
	.CLK(CLOCK_50),
	.CleanButtonOut(CleanButtonOut[2])
);

ButtonDebouncer
#(
	.COUNTER_REG_SIZE(DBNCR_CNTR_REG_SIZE)
)
ButtonDebouncer_Key3(
	.NoisyButtonIn(KEY[3]),
	.CLK(CLOCK_50),
	.CleanButtonOut(CleanButtonOut[3])
);

SwitchDebouncer
#(
	.COUNTER_REG_SIZE(DBNCR_CNTR_REG_SIZE)
)
SwitchDebouncer_SW0(
	.NoisySWIn(SW[0]),
	.CLK(CLOCK_50),
	.CleanSWOut(CleanSWOut[0])
);

SwitchDebouncer
#(
	.COUNTER_REG_SIZE(DBNCR_CNTR_REG_SIZE)
)
SwitchDebouncer_SW1(
	.NoisySWIn(SW[1]),
	.CLK(CLOCK_50),
	.CleanSWOut(CleanSWOut[1])
);

SwitchDebouncer
#(
	.COUNTER_REG_SIZE(DBNCR_CNTR_REG_SIZE)
)
SwitchDebouncer_SW2(
	.NoisySWIn(SW[2]),
	.CLK(CLOCK_50),
	.CleanSWOut(CleanSWOut[2])
);


// Button Manager

ButtonManager ButtonManager_inst0(
	.SW0(CleanSWOut[0]),
	.KEY(CleanButtonOut),
	.CMD_Reg(CMD_Reg),
	.KEY_Reg(KEY_Reg)
);

// Level to Pulse Converter

ButtonLevelPulseConverter ButtonLevelPulseConverter_KEY0(
	.CLK(CLOCK_50),
	.CleanButtonIn(KEY_Reg[0]),
	.ButtonPulseOut(KEY_En[0])
);

ButtonLevelPulseConverter ButtonLevelPulseConverter_KEY1(
	.CLK(CLOCK_50),
	.CleanButtonIn(KEY_Reg[1]),
	.ButtonPulseOut(KEY_En[1])
);

ButtonLevelPulseConverter ButtonLevelPulseConverter_KEY2(
	.CLK(CLOCK_50),
	.CleanButtonIn(KEY_Reg[2]),
	.ButtonPulseOut(KEY_En[2])
);

ButtonLevelPulseConverter ButtonLevelPulseConverter_KEY3(
	.CLK(CLOCK_50),
	.CleanButtonIn(KEY_Reg[3]),
	.ButtonPulseOut(KEY_En[3])
);

ButtonLevelPulseConverter ButtonLevelPulseConverter_CMD0(
	.CLK(CLOCK_50),
	.CleanButtonIn(CMD_Reg[0]),
	.ButtonPulseOut(CMD_En[0])
);

ButtonLevelPulseConverter ButtonLevelPulseConverter_CMD1(
	.CLK(CLOCK_50),
	.CleanButtonIn(CMD_Reg[1]),
	.ButtonPulseOut(CMD_En[1])
);

ButtonLevelPulseConverter ButtonLevelPulseConverter_CMD2(
	.CLK(CLOCK_50),
	.CleanButtonIn(CMD_Reg[2]),
	.ButtonPulseOut(CMD_En[2])
);

ButtonLevelPulseConverter ButtonLevelPulseConverter_CMD3(
	.CLK(CLOCK_50),
	.CleanButtonIn(CMD_Reg[3]),
	.ButtonPulseOut(CMD_En[3])
);

endmodule
