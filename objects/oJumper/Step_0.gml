//movement
if (!active) {
	if (distance_to_object(global.character) < 15) {
		vsp = -15;	
		
	}
} else if (position_meeting(x,y+1,oCollide)){
	if (global.character.x > x) hsp += .2
	else hsp -= .2;
} else hsp = 0;

vsp += 0.5;
hsp *= 0.98;
//checks if the enemy is supposed to die
enemyKillScript();

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

x += hsp;
if (hsp != 0) image_xscale = -sign(hsp);
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
	//destroy the jumper!!!!
	instance_destroy(self);	
} else if (place_meeting(x,y+global.character.vsp,global.character)){ //if not damaged and touching, damage player
	damage_character();
}
