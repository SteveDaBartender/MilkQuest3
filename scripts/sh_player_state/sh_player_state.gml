function sh_player_state(args){
	oPlayer.state = args[1]
	return "Sucecfully changed player state.";
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
