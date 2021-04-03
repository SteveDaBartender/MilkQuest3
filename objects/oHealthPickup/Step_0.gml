/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y,global.character) && global.character.hp < 3) {
	audio_play_sound(sMunch,0,false);	
	global.character.hp++
	instance_destroy(self);
}