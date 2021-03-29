/// @description Insert description here
// You can write your code in this editor
line = false;
if (!collision_line(eyeX,eyeY,global.character.x,global.character.y,oCollide, false, false) && collision_line(eyeX,eyeY,patrolX,patrolY,global.character, false, false)){
	draw_set_colour(c_red);
	line = true;
	//theta = 0;
	oSnowMecken.patrolX = global.character.x;
	oSnowMecken.patrolY = global.character.y;
	if (timer > snowballCooldown) {
		var snowball = instance_create_layer(eyeX,eyeY,self.layer,oSnowball);
		snowball.goalX = global.character.x+(global.character.hsp*3);
		snowball.goalY = global.character.y-32+(global.character.vsp*3);
		timer = 0;
		audio_play_sound(sBatKill, 0, false);
	}
}  else {
	if (mode = "circle") {
		draw_set_colour(c_white);
		line = true;
		theta += theta_speed;
		if (theta >= vmax) theta -= vmax;

		patrolX = eyeX + lengthdir_x(r, theta);
		patrolY = eyeY + lengthdir_y(r, theta);
	} else if (mode = "semicircle") {
		draw_set_colour(c_white);
		line = true;
		theta += theta_speed;
		if (theta >= vmax +90) theta -= vmax + 90;
		patrolX = eyeX + lengthdir_x(r, theta);
		patrolY = eyeY + lengthdir_y(r, theta);
	} else {
		line = true;
		patrolX = eyeX + -1000*image_xscale;
		patrolY = eyeY;
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