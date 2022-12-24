char = global.character;

	switch (char) {
		case oFezhead:
			//if player is fezhead,rolling, and nearby the box, destroy it.
			if (place_meeting(x+char.image_xscale*-20,y,char) && char.roll) {
				instance_destroy(self);
				//set player speed based on their direction 
				char.hsp = 13*char.image_xscale;
				//make particle :)
				for(i = 0; i < 5; i++) {
					particle(sBoxParticle,x,y,2,3, char.hsp * random_range(0.05,0.25), -3);
				}
				audio_play_sound(sBreak, 1, false);
			}
			break;
		case oConehead:
			//if conehead is above the box, while stomping destroy the crate 
			if (place_meeting(x,y + sign(char.vsp)*-23,char) && char.state = states.stomp) {
				for(i = 0; i < 5; i++) {
					particle(sBoxParticle,x,y-16,2,3, random_range(-4,4), -2);
				}
				instance_destroy(self);
				audio_play_sound(sBreak, 1, false);
			}
			break;
	}
