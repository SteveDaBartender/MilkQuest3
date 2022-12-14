function sh_cheats (args) {
	global.sv_cheats = round(clamp(args[1],0,1))
	return "Cheats set to " + string(global.sv_cheats) + ".";
}