///@param saveslot
function save_game_data(argument0){
	ini_open("mqmcsave"+".ini");
	
	show_debug_message("saved game!");
	
	//write save version & game version
	ini_write_real("saveinfo","saveversion",oPersistent.saveVersion)

	ini_write_real("savedata","intro",global.intro)
	ini_write_real("savedata","head",global.head)
	ini_write_real("savedata","legs",global.leg)
	ini_write_real("savedata","arms",global.arm)
	ini_write_real("savedata","body",global.body)
	ini_write_real("savedata","complete",global.finished)
	
	ini_close();
}
