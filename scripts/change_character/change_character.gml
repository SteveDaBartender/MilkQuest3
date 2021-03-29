/// @description Changes the current character to another
///@param character
function change_character(argument0) {
	var tempSX = global.spawnX;
	var tempSY = global.spawnY;
	xTo =  global.character.x 
	yTo =  global.character.y 
	var hsp = global.character.hsp;
	var vsp = global.character.vsp;
	instance_destroy(global.character);
	global.spawnX = xTo
	global.spawnY = yTo
	global.character = argument0;
	instance_create_layer(xTo, yTo, "Object", argument0);
	oCamera.follow = argument0;
	audio_stop_sound(sTrans);
	audio_play_sound(sTrans, 1, false);
	for (i = 0; i < 20; i += 1) {
		particle(sParticleSmoke,argument0.x,argument0.y - 32,5,irandom_range(-1,1),irandom_range(-1,1),irandom_range(-1,1));
	}
	global.spawnX = tempSX
	global.spawnY = tempSY
	argument0.hsp = hsp;
	argument0.vsp = vsp;


}
