/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y-12,global.character)) {
	global.character.vsp = -20;
	audio_stop_sound(sBurn);
	audio_play_sound(sBurn,1,false);
	audio_play_sound(sBurn,1,false);
	audio_play_sound(sBurn,1,false);
	audio_play_sound(sBurn,1,false);
	global.character.state = states.burn;
	global.character.y -= 5;
	//damage_character();
	//global.character.invincibleTimer = 25;
}