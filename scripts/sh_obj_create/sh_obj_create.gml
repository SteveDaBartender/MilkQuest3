function sh_obj_create (args) {
	if (global.sv_cheats) {
		if (args[1] = "~") args[1] = global.character.x;
		if (args[2] = "~") args[2] = global.character.y;
		instance_create_layer(real(args[1]),real(args[2]),"Object",asset_get_index(args[3]));
		return "Sucecfully created object.";
	} else return "Please Enable Cheats."
}
function meta_obj_create() {
	return {
		description: "creates a object",
		arguments: ["x", "y", "object"],
		suggestions: [
			["~"],
			["~"],
			[]
		],
		argumentDescriptions: [
			"x coords",
			"y coords",
			"which object to create"
		]
	}
}