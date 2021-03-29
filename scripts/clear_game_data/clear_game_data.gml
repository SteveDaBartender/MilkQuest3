// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function clear_game_data(){
	ini_open("savedata.ini");
	ini_write_real("game progress", "intro watched", 0)
	ini_write_real("game progress", "beat level once", 0)
	ini_write_real("game progress", "beat level fast", 0)
	ini_write_real("game progress", "beat level amilk", 0)
	ini_write_real("game progress", "beat level nmilk", 0)
	ini_write_real("game progress", "watched last cutscene", 0)
	
	ini_write_real("stats", "best time", 999999)
	
	show_debug_message("saving");
	
	ini_close();
}