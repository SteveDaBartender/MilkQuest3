char = global.character;
//same as oBox
switch (char) {
	case oFezhead:
		if (place_meeting(x+sign(char.hsp)*-20,y,char) && char.roll) {
			instance_destroy(self);
			char.hsp = 13*char.image_xscale;
			audio_play_sound(sBreak, 1, false);
		}
		break;
	case oConehead:
		if (place_meeting(x,y + sign(char.vsp)*-20,char) && char.roll) {
			particle(sBoxParticle,x,y,2,15, 0, 0);
			instance_destroy(self);
			audio_play_sound(sBreak, 1, false);
		}
		break;
}
if (place_meeting(x,y+vsp,char) && vsp != 0) {
	instance_destroy(self);
	audio_play_sound(sBreak, 1, false);
}
//calculate the box's vertical collsion.
vsp += grv;
if (place_meeting(x,y+vsp,oCollide) || place_meeting(x,y+vsp,char)) {
	while (!place_meeting(x,y+sign(vsp),char) && !place_meeting(x,y+sign(vsp),oCollide) && round(vsp) != 0){
		y += sign(vsp - 0.01);
	}
	vsp = 0;
}
//1 way platform check
for (i = 0; i < abs(vsp); i += 1) {
	 if !((position_meeting(x+16,y+1,o1Way) || position_meeting(x-16,y+1,o1Way)) && vsp > 0) {
		y += sign(vsp);
	 } else {
		 while (!((position_meeting(x+16,y+1,o1Way) || position_meeting(x-16,y+1,o1Way))))
			{
				y -=1;
			}
		vsp = 0;
	 }
}
//horizontal check
if (place_meeting(x+hsp,y,oCollide))
{
	while (!place_meeting(x+sign(hsp),y,oCollide))
	{
		x += sign(hsp);
	}
	hsp = 0;
}

//move gravity boxes on conveyers
if (place_meeting(x,y+3,oConveyer)) {
	var inst = instance_place(x,y+3,oConveyer);
	hsp = inst.vel * 1.5;;
	draw_text(20,20,hsp);
} 

if place_meeting(x,y,oConveyer) || place_meeting(x,y,oWall) y-=1;

//add up momentum
y += vsp;
hsp *= 0.9;
x += round(hsp);

//move player with box if they're on the box
if (place_meeting(x,y-1,global.character)) {
	global.character.x += round(hsp);
}

//destroy the box if it's off screen (for the factory's conveyers)
if (x > room_width + 64 || x < -64 || y > room_height){
	instance_destroy(self);
}
