if (place_meeting(x,y+1,oWater) && !place_meeting(x,y-32,oWater)) vsp -= 1.2
vsp += 0.6;
y += vsp;
if (place_meeting(x,y,oSpiderDust) || global.character.roll || global.character.punch || global.character.vsp > 0 && global.character.state != states.hooked) && place_meeting(x,y,global.character) {
	audio_play_sound(sBatKill, 0, false);
	global.character.hsp *= 1.25;
	for (i = 0; i < 35; i += 1) {
		particle(sParticleSmoke,x,y - 32,4,3,irandom_range(-1,1),irandom_range(-1,-16));
	}
	if (!global.character.punch || !global.character.roll || global.character = oKidhead) {
		if (global.character.key_space){
			global.character.vsp = -24;
		} else global.character.vsp = -15;
	} 
	instance_destroy(self);
} else if (place_meeting(x,y,global.character)){
	damage_character();
}
//if ((global.character.vsp > 0 && globa