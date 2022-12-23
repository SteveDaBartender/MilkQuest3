function sh_christmas_progress (args) {
	global.head = round(clamp(args[1],0,1))
	global.body = round(clamp(args[2],0,1))
	global.arm = round(clamp(args[3],0,1))
	global.leg = round(clamp(args[4],0,1))
	global.intro = round(clamp(args[5],0,1))
	global.finished = round(clamp(args[6],0,1))
	return "Updated Christmas Progress.";
}