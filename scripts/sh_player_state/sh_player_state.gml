function sh_player_state(args){
	if (global.sv_cheats) {
		oPlayer.state = args[1]
		return "Sucecfully changed player state.";
	} else return "Please Enable Cheats."
}
function meta_player_state() {
	return {
		description: "sets player state. use 'states.' in front of state. please.",
		arguments: ["state"],
		suggestions: [
			["0"]
		],
		argumentDescriptions: [
			"state"
		]
	}
}
