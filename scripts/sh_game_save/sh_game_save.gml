function sh_game_save (args) {
	save_game_data()
	return "Saving Game..."
}
function meta_game_save(){
	return {
		description: "forces a game save."
	}
}