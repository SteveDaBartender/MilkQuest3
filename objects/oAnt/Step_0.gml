//only run code if the ant is on screen!!
if (on_screen_check(self) && !global.gameLock) {
	//clamps the ant to the ground
	while !(position_meeting(x,y+1,oCollide) || position_meeting(x,y+1,o1Way)) {
		y += 1;
		if (y > room_height) instance_destroy(self);
	}
	//moves ant
	x += 1.5 * -image_xscale;
	//bounce off walls
	if ((!position_meeting(x,y+1,oCollide) && !position_meeting(x,y+1,o1Way)) || (place_meeting(x,y-32,oCollide) || place_meeting(x,y-32,o1Way))){
		image_xscale *= -1;
		x += 3 * -image_xscale;
	}

	//checks if the enemy is supposed to die
	enemyKillScript();

	//enemy death  sequence
	if (killType != kt.none) {
		audio_play_sound(sAntKill, 0, false);
		//speed up player
		global.character.hsp *= 1.25;
		//summon smoke
		for (i = 0; i < 35; i += 1) {
			particle(sParticleSmoke,x,y - 32,4,3,irandom_range(-1,1),irandom_range(-1,-16));
		}
		//allow bouncing off if killed by a jump
		if (killType = kt.jump) {
			if (global.character.key_space){
				global.character.vsp = -17;
			} else global.character.vsp = -10;
		} 
		//destroy the ant!!!!
		instance_destroy(self);
	} else if (place_meeting(x,y+global.character.vsp,global.character)){ //if not damaged and touching, damage player
		damage_character();
	}
}