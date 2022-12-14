function sh_audio_sfx_vol (args) {
	if (args[1] != "") {
	global.volSFX = clamp(args[1],0,1)
	return "SFX Volume set to " + string(global.volSFX) + ".";
	} else return "SFX Volume is set to " + string(global.volSFX)
}
function meta_audio_sfx_vol(){
	return {
		description: "Sets SFX volume. 0.5 is the default.",
		arguments: ["volume"],
		suggestions: [
			["1","0.5","0"]
		],
		argumentDescriptions: [
			"what volume to set"
		]
	}
}