/// @description Insert description here
// You can write your code in this editor
if (abs(global.character.x - x) < 1200) {
	if (!flying) {
		if (distance_to_object(oPlayer) < 128) {
			flying = true;
			image_xscale = sign(global.character.hsp) * -1;
		}
		vsp += 0.7;
		if (place_meeting(x,y+round(vsp),oCollide))
			{
				while (!place_meeting(x,y+sign(vsp),oCollide) && round(vsp) != 0)
				{
					y += sign(vsp);
				}
				vsp = 0;
		}
		y += vsp;
	} else {
		vsp += flyingY + random_range(0.05,-0.05)
		x += image_xscale*flyingX;
		y += vsp;
		sprite_index = sBirdFly;
	}
}