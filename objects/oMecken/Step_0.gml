/// @description Insert description here
// You can write your code in this editor

if (on_screen_check(self)) {
	//clamps the mechken to the ground
	while !(position_meeting(x,y+1,oCollide) || position_meeting(x,y+1,o1Way)) {
		y += 1;
		if (y > room_height) instance_destroy(self);
	}
	//moves 
	x += 1.5 * -image_xscale;
	//bounce off walls
	if ((!position_meeting(x,y+1,oCollide) && !position_meeting(x,y+1,o1Way)) || (place_meeting(x,y-32,oCollide) || place_meeting(x,y-32,o1Way))){
		image_xscale *= -1;
		x += 3 * -image_xscale;
	}
}


line = false;
if !collision_line(eyeX,eyeY,global.character.x,global.character.y,oCollide, false, false) {
	line = true;
	oMecken.patrolX = global.character.x;
	oMecken.patrolY = global.character.y;
	if (timer > snowballCooldown) {
		var snowball = instance_create_layer(eyeX,eyeY,self.layer,oLaser);
		snowball.goalX = global.character.x+(global.character.hsp*3);
		snowball.goalY = global.character.y-32+(global.character.vsp*3);
		timer = 0;
		audio_play_sound(sBatKill, 0, false);
	}
}

//increase enemy timers and check if the mecken should be damaged
timer++;
hitTimer--;
enemyKillScript()

if (killType != kt.none && hitTimer < 0) {
	if (hp = 1) {
		audio_play_sound(sAntKill, 0, false);
		global.character.hsp *= 1.25;
		for (i = 0; i < 35; i += 1) {
			particle(sParticleSmoke,x,y - 32,4,3,irandom_range(-1,1),irandom_range(-1,-16));
		}
		if (killType = kt.jump) {
			if (global.character.key_space){
				global.character.vsp = -17;
			} else global.character.vsp = -10;
		} 
		instance_destroy(self);
	} else {
		hp -=1;
		hitTimer = 50
	}
} else if (global.character.vsp > 0 && global.character.state = states.normal && place_meeting(x,y+global.character-22,global.character)) {
	global.character.vsp = -15;	
	global.character.y -= 20;
} else if (place_meeting(x,y+global.character.vsp,global.character) && hitTimer < 0){
	damage_character();
}