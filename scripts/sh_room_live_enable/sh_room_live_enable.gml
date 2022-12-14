function sh_room_live_enable(args){
	live_room_updated = room_live_update;
	audio_stop_all();
	var charx = global.character.x;
	var chary = global.character.y;
	global.spawnX = charx
	global.spawnY = chary
	room_set_live(room, true);
	room_goto_live(room);
	return "Live Editing Enabled.";
}
function meta_room_live_enable() {
	return {
		description: "enables GMLive live editing in room. will restart room.",
		arguments: [""],
		suggestions: [
			[""]
		],
		argumentDescriptions: [
			""
		]
	}
}
