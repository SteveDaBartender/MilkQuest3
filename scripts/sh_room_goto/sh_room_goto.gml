function sh_room_goto (args) {
	change_room(asset_get_index(args[1]),0,0,1,asset_get_index(args[2]));
	return "Sucecfully created object.";
}
function meta_room_goto() {
	return {
		description: "goes to a new room",
		arguments: ["room","character"],
		suggestions: [
			[],
			["oFezhead","oKidhead","oConehead"]
		],
		argumentDescriptions: [
			"room to change to",
			"character to play as"
		]
	}
}