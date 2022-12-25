function sh_godmode (args) {
	if (global.sv_cheats) {
		global.godmode = round(clamp(args[1],0,1))
		return "Godmode set to " + string(global.godmode) + ".";
	} else return "Please Enable Cheats."
}