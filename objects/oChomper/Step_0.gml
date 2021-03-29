if (on_screen_check(self)) {
	//clamp enemy down to the floor
	if !(position_meeting(x,y+1,oCollide)) {
		y += 1;
		if (y > room_height) instance_destroy(self);
	}

	//check if the enemy is going to die
	enemyKillScript();

	//if u wanna know what this stuff below is just read 
	//the ant or smthin i dont wanna type it again im lazy

	if (killType != kt.none) {
		audio_play_sound(sChomperKill, 0, false);
		for (i = 0; i < 35; i += 1) {
			particle(sParticleSmoke,x,y - 32,4,3,irandom_range(-1,1),irandom_range(-1,-16));
		}
		particle(sChomper,x,y - 32,1,5,global.character.hsp * -0.1,irandom_range(-8,-16));
		global.character.hsp *= 1.25;
		instance_destroy(self);
	} else if (place_meeting(x,y,global.character)){
		damage_character();
	}
}