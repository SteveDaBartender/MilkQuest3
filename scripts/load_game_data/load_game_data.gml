///@param saveslot
function load_game_data(argument0){
	ini_open("savedata"+string(argument0)+".ini");
	/*
	var bigmilkstring = ini_read_string("progress","bigmilks",64);
	if (bigmilkstring != 64) {
		var bigMilks = ds_list_read(bigmilkString);
		oPersistent.bigMilksCollected = bigMilks
	}
	*/
	show_debug_message("loaded game!");
	ini_close();
}