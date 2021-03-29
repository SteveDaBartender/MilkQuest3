
//move enemy up/down based on theta
theta += theta_speed;
if (theta >= 360) theta -= 360;
//x = cx + lengthdir_x(r, theta);
y = cy + lengthdir_y(r, theta);

//check if enemy is supposed to die
enemyKillScript();

if (killType != kt.none) {
	audio_play_sound(sBatKill, 0, false);
	//summon smoke particles
	for (i = 0; i < 35; i += 1) {
		particle(sParticleSmoke,x,y - 32,4,3,irandom_range(-1,1),irandom_range(-1,-16));
	}
	//makes the player 'jump' if killed by jumping
	if (killType = kt.jump) {
		if (global.character.key_space){
			global.character.vsp = -17;
		} else global.character.vsp = -10;
		global.character.punch = false;
	} 
	instance_destroy(self); //DESTROY!!!!!
} else if (place_meeting(x,y+global.character.vsp,global.character)){ //hurt if touching and not in a killing state
	damage_character();
}
//if ((global.character.vsp > 0 && globa