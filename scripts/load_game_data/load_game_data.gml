// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function load_game_data(){
	ini_open("savedata.ini");
	global.intro = ini_read_real("game progress", "intro watched", 0);
	global.body = ini_read_real("game progress", "beat level once", 0);
	global.leg = ini_read_real("game progress", "beat level fast", 0);
	global.arm = ini_read_real("game progress", "beat level amilk", 0);
	global.head = ini_read_real("game progress", "beat level nmilk", 0);
	global.finished = ini_read_real("game progress", "watched last cutscene", 0);
	
	global.besttime = ini_read_real("stats", "best time", 999999);
	
	show_debug_message("saving");
	
	ini_close();
}