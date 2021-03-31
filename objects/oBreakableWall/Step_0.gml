/// @description Insert description here
// You can write your code in this editor
if (global.character.smashing = true && distance_to_object(global.character) < 15) {
	instance_destroy(self);
	audio_play_sound(sBreak,0,false);
	for(i = 0; i < 15; i++) {
		particle(sBoxParticle,x,y-16,2,3, random_range(-4,4), -2);
	}
}