// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function down_script(){
	hsp = 0;
	if (vsp > 15) vsp = 15;
	move = 1;
	if (place_meeting(x,y+vsp,oCollide) && !roll) {
		roll = true;
		for (i = 0; i < 40; i += 1) {
			particle(sParticleSmoke,x,y - 32,0.5,irandom_range(2,5),irandom_range(-1.3,1.3),irandom_range(-2,-3));
		}
	}
	vsp += grv;
	if (key_space_press && place_meeting(x,y+5,oCollide)) {
		state = states.normal;
		fezhead_jump();
		audio_play_sound(sLevel1, 0, true);
	}
}