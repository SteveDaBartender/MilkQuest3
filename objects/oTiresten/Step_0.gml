/// @description Insert description here
// You can write your code in this editor

//this dude's code is literally the same as the ant except he zooms


if (place_meeting(x+image_xscale*3,y,oSlope) && !place_meeting(x+image_xscale*3,y-18,oSlope)) {
	while (place_meeting(x+(3*image_xscale),y,oCollide)) y -= 1;	
}

	//if there's no block three blocks up then image_xscale up
if (!place_meeting(x+image_xscale,y,oSlope) && place_meeting(x+image_xscale,y+9,oSlope)) {
	while (!place_meeting(x+(3*image_xscale),y,oCollide)) y += 1;
	y -= 1;
}

while !(position_meeting(x,y+1,oCollide) || position_meeting(x,y+1,oSlope) || position_meeting(x,y+1,o1Way)) {
	y += 1;
	if (y > room_height) instance_destroy(self);
}
x += 6.3 * -image_xscale;
if (!place_meeting(x+image_xscale*6,y,oSlope) && (!position_meeting(x,y+1,oCollide) && !position_meeting(x,y+1,o1Way)) || (place_meeting(x,y-32,oCollide) || place_meeting(x,y-32,o1Way))){
	image_xscale *= -1;
	x += 3 * -image_xscale;
}

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
//if ((global.character.vsp > 0 && globa