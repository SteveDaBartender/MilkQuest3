function sh_milk_set (args) {
	if (global.sv_cheats) {
		if (args[1] != "") {
		global.milk = round(clamp(args[1],0,9999))
		return "Set milks to " + string(global.milk) + ".";
		} else return "Current Milks is " + string(global.milk)
	} else return "Please Enable Cheats."
}
