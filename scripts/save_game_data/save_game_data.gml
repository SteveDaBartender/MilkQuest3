///@param saveslot
function save_game_data(argument0){
	ini_open("savedata"+string(argument0)+".ini");
	
	show_debug_message("saved game!");
	
	//write save version & game version
	ini_write_real("saveinfo","saveversion",oPersistent.saveVersion)
	ini_write_real("saveinfo","gameversion",GM_version)
	
	//write game-specific info to file
	var bigMilks = ds_list_write(oPersistent.bigMilksCollected)
	ini_write_string("progress","bigmilks",bigMilks);
	
	ini_close();
}

/*FUTURE GLOBALS LIST
in the future, i need a LOT OF globals in order to keep playthrough records. 
they may either be normal globals or just variables in oPersistant (would be better)

DS list of milks gathered

For each level:
Cleared
Best times as each characters
Best Milks gathered
Least Hits 

*/