function sh_godmode (args) {
	global.godmode = round(clamp(args[1],0,1))
	return "Godmode set to " + string(global.godmode) + ".";
}