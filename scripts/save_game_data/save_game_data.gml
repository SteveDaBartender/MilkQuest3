// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function save_game_data(){
	ini_open("savedata.ini");
	
	ini_write_real("stats", "best time", global.bestFezTime)
	
	show_debug_message("saving");
	
	ini_close();
}