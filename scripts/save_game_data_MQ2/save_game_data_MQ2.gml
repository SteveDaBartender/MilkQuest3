// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function save_game_data_MQ2(){
	ini_open("savedataMQ2.ini");
	
	//ini_write_real("stats", "bestfeztime", global.bestFezTime)
	//ini_write_real("stats", "bestconetime", global.bestConeTime)
	show_debug_message("saving MQ2");
	
	ini_close();
}