///@param saveslot
function load_game_data(argument0){
	ini_open("mqmcsave"+".ini");
	
	global.intro = ini_read_real("savedata","intro",0)
	global.head = ini_read_real("savedata","head",0)
	global.arm = ini_read_real("savedata","arms",0)
	global.leg = ini_read_real("savedata","legs",0)
	global.body = ini_read_real("savedata","body",0)
	global.finished = ini_read_real("savedata","complete",0)

	show_debug_message("loaded game!");
	ini_close();
}