function sh_player_goto (args) {
	if (global.sv_cheats) {
		if (args[1] = "~") args[2] = oPlayer.x;
		if (args[2] = "~") args[3] = oPlayer.y;
		global.character.x = real(args[1])
		global.character.y = real(args[2])
		return "Sucecfully moved player.";
	} else return "Please Enable Cheats."
}
function meta_player_goto() {
	return {
		description: "moves player to position",
		arguments: ["x", "y"],
		suggestions: [
			["~"],
			["~"]
		],
		argumentDescriptions: [
			"x coords",
			"y coords"
		]
	}
}