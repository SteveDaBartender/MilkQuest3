function sh_player_info (args) {
	var c = global.character;
	return "Player Info:\n"+"Player X:"+string(c.x)+"\nPlayer Y:"+string(c.y);
}
function meta_player_info() {
	return {
		description: "gets info of the player",
		arguments: [""]
	}
}