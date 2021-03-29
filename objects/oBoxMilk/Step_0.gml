//this is identical to oBox but it gives you 5 milks
char = global.character;
switch (global.character) {
	case oFezhead:
		if ((place_meeting(x+sign(char.hsp)*-20,y,char) && char.roll)  || global.milkGrabMode = true) {
			instance_destroy(self);
			char.hsp = 13*char.image_xscale;
			for(i = 0; i < 5; i++) {
				particle(sBoxParticle,x,y,2,3, char.hsp * random_range(0.05,0.25), -3);
			}
			audio_play_sound(sMilk, 1, false);
			global.milk += 5;
		}
		break;
	case oConehead:
		if (place_meeting(x,y + sign(char.vsp)*-20,char) && char.roll) {
			for(i = 0; i < 5; i++) {
				particle(sBoxParticle,x,y-16,2,3, random_range(-4,4), -2);
			}
			instance_destroy(self);
			audio_play_sound(sMilk, 1, false);
			global.milk += 5;
		}
		break;
}
