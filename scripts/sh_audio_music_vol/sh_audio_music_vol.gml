function sh_audio_music_vol (args) {
	if (args[1] != "") {
	global.volMus = clamp(args[1],0,1)
	return "Music Volume set to " + string(global.volMus) + ".";
	} else return "Music Volume is set to " + string(global.volMus)
}
function meta_audio_music_vol(){
	return {
		description: "Sets Music volume. 0.5 is the default.",
		arguments: ["volume"],
		suggestions: [
			["1","0.5","0"]
		],
		argumentDescriptions: [
			"what volume to set"
		]
	}
}