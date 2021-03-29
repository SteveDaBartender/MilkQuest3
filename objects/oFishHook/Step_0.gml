/// @description Insert description here
// You can write your code in this editor
vsp += grv;
hsp *= 0.97;
vsp *= 0.97;

if (place_meeting(x,y+vsp,oCollide)) {
	while (!place_meeting(x,y+sign(vsp),oCollide) && round(vsp) != 0){
		y += sign(vsp - 0.01);
	}
	vsp = 0;
}
if (place_meeting(x+hsp,y,oCollide)) {
	while (!place_meeting(x+sign(hsp),y,oCollide) && round(hsp) != 0){
		x+= sign(hsp - 0.01);
	}
	hsp = 0;
}


if (y >=  560) vsp -= 0.7;

x += hsp;
y += vsp;
