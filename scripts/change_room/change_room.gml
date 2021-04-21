/// @description Change Room
///@param rm
///@param x
///@param y
///@param mute
///@param char
function change_room(argument0, argument1, argument2, argument3, argument4) {
	if (argument4 != 0) {
		global.character = argument4;
	}
	if (argument1 != 0) {
		//global.spawnX = argument1;
		//global.spawnY = argument2;
		global.spawnX = argument1;
		global.spawnY = argument2;
		//oPlayer.x = global.spawnX;
		//oPlayer.y = global.spawnY;
		show_debug_message("set spawn globals");
		show_debug_message(string(global.spawnX));
		show_debug_message(string(global.spawnY));
	} else show_debug_message(" didnt set spawn globals");
	room_goto(argument0);
	if (argument3) {
		audio_stop_all();	
	}


}
