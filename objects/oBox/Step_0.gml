try {
if (abs(x - global.character.x) < 128 && !global.gameLock) {
	switch (global.character) {
		case oFezhead:
			//if player is fezhead,rolling, and nearby the box, destroy it.
			if (place_meeting(x+global.character.image_xscale*-20,y,global.character) && global.character.roll) {
				instance_destroy(self);
				//set player speed based on their direction 
				global.character.hsp = 13*global.character.image_xscale;
				//make particle :)
				for(var i = 0; i < 5; i++) {
					particle(sBoxParticle,x,y,2,3, global.character.hsp * random_range(0.05,0.25), -3);
				}
				audio_play_sound(sBreak, 1, false);
			}
			break;
		case oConehead:
			//if conehead is above the box, while stomping destroy the crate 
			if (place_meeting(x,y + sign(global.character.vsp)*-23,global.character) && global.character.state = states.stomp) {
				for(var i = 0; i < 5; i++) {
					particle(sBoxParticle,x,y-16,2,3, random_range(-4,4), -2);
				}
				instance_destroy(self);
				audio_play_sound(sBreak, 1, false);
			}
			break;
	}
}
} catch (_exception) {
	show_debug_message("lol...?")	
	show_debug_message(object_get_name(global.character))
}