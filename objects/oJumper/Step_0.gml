//movement
if (!active) {
	if (distance_to_object(global.character) < wakeupRange) {
		vsp = -15;	
		active = true;
	}
} else {
	if (global.character.x > x) hsp += .13
	else hsp -= .13;
	hsp = clamp(hsp,-8,8)
	if (irandom_range(0,50) = 10) particle(particleSprite,x,y,0.1,1,hsp * random_range(0.1,0.5) ,random_range(-5,-8));
	if (global.character.y < y-14 && !place_meeting(x,y-20,oCollide) && (place_meeting(x,y+5,oCollide) || place_meeting(x,y+5,o1Way))) {
		vsp = -12;
		if (on_screen_check(self)) audio_play_sound(sJumperHop,1,false);
		repeat(2) {
			particle(particleSprite,x,y,0.1,1,hsp * random_range(0.1,0.5) ,random_range(-5,-8));
		}
	}
}

vsp += 0.5;
hsp *= 0.996;

	if (place_meeting(x+hsp,y,oSlope) && !place_meeting(x+hsp,y-18,oSlope)) {
			while (place_meeting(x+hsp,y,oCollide)) y -= 1;	
	}

	//if there's no block three blocks up then move up
	if (!place_meeting(x+hsp,y,oSlope) && place_meeting(x+hsp,y+9,oSlope)) {
			while (!place_meeting(x+hsp,y,oCollide)) y += 1;
			y -= 1;
	}

if (place_meeting(x,y+round(vsp),oCollide))	{
	while (!place_meeting(x,y+sign(vsp),oCollide) && round(vsp) != 0)
	{
		y += sign(vsp);
	}
	vsp = 0;
	if (place_meeting(x,y,oCollide)) y -= 1;
}

if (place_meeting(x+hsp,y,oCollide))
	{

		while (!place_meeting(x+sign(hsp),y,oCollide))
		{
			x += sign(hsp);
		}
		hsp = 0;
	}
y += vsp;
x += hsp;
if (hsp != 0) image_xscale = -sign(hsp);

//checks if the enemy is supposed to die
enemyKillScript();

//enemy death  sequence
if (killType != kt.none) {
	audio_play_sound(sJumperDeath, 0, false);
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
	//destroy the jumper!!!!
	instance_destroy(self);	
} else if (place_meeting(x,y+global.character.vsp,global.character)){ //if not damaged and touching, damage player
	damage_character();
}
//animation
if (place_meeting(x,y+5,oCollide) || place_meeting(x,y+5,o1Way)) sprite_index = sJumperRun;
else if (vsp > 1) sprite_index = sJumperFall;
else if (vsp < 1) sprite_index = sJumperJump;
