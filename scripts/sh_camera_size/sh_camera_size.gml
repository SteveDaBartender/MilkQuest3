function sh_camera_size (args) {
	if (global.sv_cheats) {
		oCamera.view_width = abs(ceil(args[1]))
		oCamera.view_height = abs(ceil(args[2]))
		oCamera.scale = ceil(args[3])
		return "Changed window size.";
	} else return "Please Enable Cheats."
}
function meta_camera_size() {
	return {
		description: "creates a object",
		arguments: ["view_width", "view_width", "scale"],
		suggestions: [
			["640","640",],
			["360","480"],
			["3","1"]
		],
		argumentDescriptions: [
			"camera width",
			"camera height",
			"scale window size by integer"
		]
	}
}