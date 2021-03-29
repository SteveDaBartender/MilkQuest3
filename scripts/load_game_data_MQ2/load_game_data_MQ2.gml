// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function load_game_data_MQ2(){
	ini_open("savedataMQ2.ini");
	
	global.bestFezTime = ini_read_real("stats", "bestfeztime", 999999);
	global.bestConeTime = ini_read_real("stats", "bestconetime", 999999);	
	
	show_debug_message("loading MQ2");
	
	ini_close();
}