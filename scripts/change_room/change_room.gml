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
	room_goto(argument0);
	if (argument1 != 0) {
		//global.spawnX = argument1;
		//global.spawnY = argument2;
		oPlayer.x = global.spawnX;
		oPlayer.y = global.spawnY;
	}
	if (argument3) {
		audio_stop_all();	
	}


}
