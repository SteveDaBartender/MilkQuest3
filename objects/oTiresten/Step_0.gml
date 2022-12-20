/// @description Insert description here
// You can write your code in this editor
if (on_screen_check(self)) {
//this dude's code is literally the same as the ant except he zooms
hsp = spd * image_xscale
obj_collision_step();

if (!place_meeting(x+hsp*2,y+5,oCollide) && place_meeting(x,y+5,oCollide) || place_meeting(x+(-5*image_xscale),y,oWall)){
	image_xscale *= -1;
	x += spd * -2;
}

if (y > room_height) instance_destroy(self);



	//if there's no block three blocks up then image_xscale up

	
enemyKillScript();

if (killType != kt.none) {
	audio_play_sound(sTirestenDeath, 0, false);
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
} else if (place_meeting(x,y+global.character.vsp,global.character)){
	damage_character();
}
}
//if ((global.character.vsp > 0 && globa