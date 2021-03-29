// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function punch_script(){
	punch = 1;
	hsp *= frict
	if (round(image_index) = 3) {
		hsp = 11 * image_xscale;
		if (!audio_is_playing(sPunch)) audio_play_sound(sPunch,1,false);
	}
	hsp *= 1.12;
	if (abs(hsp) < 0.7 && image_index > 5 || image_index > 11) {
		state = states.normal;
		punch = 0;
	}
	vsp = 0;
}