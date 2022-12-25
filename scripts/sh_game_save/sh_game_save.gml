function sh_game_save (args) {
	save_game_data()
	return "Force Saving Game..."
}
function meta_game_save(){
	return {
		description: "forces a game save."
	}
}