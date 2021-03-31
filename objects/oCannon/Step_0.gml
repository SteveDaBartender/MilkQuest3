/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y,global.character) && !active) {
	oCannon.active = false;
	active = true;
}
if (active) {
	global.character.state = states.normal;
	global.character.x = x;
	global.character.vsp = 0;
	move = global.character.move;	
	angle = clamp(angle+(move*-3),0,180);
	if (global.character.key_space_press) {
		repeat (20) particle(sParticleSmoke,x,y,0.9,-0.5,random_range(-4,4),random_range(-10,20));
		audio_play_sound(sCannonExplode, 1, false);
		active = false;
		global.character.smashing = true;
		global.character.x = global.character.x+lengthdir_x(vel*3,angle);
		global.character.y = global.character.y+lengthdir_y(vel*3,angle);
		global.character.acl = (cos(degtorad(angle)) * vel) / 1.6;
		global.character.vsp = (sqrt(power(vel,2) - power(global.character.acl * 1.6,2))) * -1;
		if (global.character = oConehead) global.character.acl /= 2;
	}
}
