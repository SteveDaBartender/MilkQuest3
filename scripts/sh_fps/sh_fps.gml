function sh_fps (args) {
	if (args[1] != "") {
	room_speed = round(clamp(args[1],0,9999))
	return "Set FPS to " + string(room_speed) + ".";
	} else return "Current FPS is " + string(room_speed)
}
function meta_fps(){
	return {
		description: "either changes FPS to value or gets current FPS if no value provided. Vsync limits FPS to refresh rate.",
		arguments: ["fps"],
		suggestions: [
			["60"]
		],
		argumentDescriptions: [
			"fps"
		]
	}
}