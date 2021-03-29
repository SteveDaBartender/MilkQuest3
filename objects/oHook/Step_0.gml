if (on_screen_check(self)) {
	if (active) {
		image_speed += timer / 500;
		timer++;
		if (timer > 5) {
			vsp += yv
			hsp += xv
		}  else {
			vsp -= yv;
			hsp -= xv
		}
		if (vsp >= 9) {
			vsp = 9;
		}
		if (hsp >= 7) {
			hsp = 7;
		}
		if (hsp <= -7) {
			hsp = -7;
		}
		if (!place_meeting(x+hsp,y+vsp,oCollide)){
			y -= vsp;
			x += hsp;
			
		} else image_speed = 0;
	} else if (place_meeting(x,y,global.character) && global.character.jumpExtendable != 0) {
		global.character.state = states.hooked;	
		global.character.x = x;	
		global.character.y = y;
		active = true;
		vsp = -1;
		hsp = xv * -1;
		audio_play_sound(sHookGrab,1,false);
	} else image_speed = 0.5;
} else if (active) {
	x = spawnX;
	y = spawnY;
	active = false;
	image_alpha = -1;
}
image_alpha += 0.07;