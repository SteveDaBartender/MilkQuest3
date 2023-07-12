// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function clear_game_data(){
	ini_open("mqmcsave.ini");
	ini_write_real("savedata","intro",0)
	ini_write_real("savedata","head",0)
	ini_write_real("savedata","legs",0)
	ini_write_real("savedata","arms",0)
	ini_write_real("savedata","body",0)
	ini_write_real("savedata","complete",0)
	
	ini_write_real("persistent","besttime",215999)
	
	show_debug_message("clearing save");
	
	ini_close();
}