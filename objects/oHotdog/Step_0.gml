//gathers the keyboard info
key_left = keyboard_check(vk_left);
key_down = keyboard_check_pressed(ord("X"));
key_right = keyboard_check(vk_right);
key_space_press = keyboard_check_pressed(ord("Z"));
//gives a value of -1, 0 or 1 depending on keys
//sets the movement speed.
if (!lock) {
if (!roll) {
move = key_right - key_left;
if (!place_meeting(x,y+1,oWall)){
hsp += move * walksp;
}
hsp *= 0.80
} else {
	hsp *= 0.99;
	if (!place_meeting(x,y-12,oWall) && (abs(hsp)< 10 || abs(vsp)< -10)) {
	roll = false;
	}
}
//initiate rolling
if (key_down && !roll && (place_meeting(x,y+1,oWall)||place_meeting(x,y+1,o1Way)||place_meeting(x,y+1,oBox))) {
	roll = true;
	if (key_left or key_right) {
		hsp = 15*image_xscale;
	}
	if (keyboard_check(vk_up)){
		vsp = -25;	
	}
}
if ((place_meeting(x,y+1,oWall)) || roll) && (key_space_press)
{
	vsp =-15;
	if (!place_meeting(x,y+1,oWall)) roll = false;
	audio_play_sound(sJump, 0, false);
}
if (place_meeting(x,y+1,o1Way)) && (key_space_press)
{
	vsp =-15;
	audio_play_sound(sJump, 0, false);
}
//horizontal collison check
if (place_meeting(x+hsp,y,oWall) || place_meeting(x+hsp,y,oBox))
{
	if (place_meeting(x+hsp,y,oBox)) roll = false;
	while (!place_meeting(x+sign(hsp),y,oWall) && !place_meeting(x+sign(hsp),y,oBox))
	{
		x += sign(hsp);
	}
	hsp = 0;
}
//move the character based on hsp
x += hsp;

//set gravity
vsp += grv;
//vetical collison check
if (place_meeting(x,y+vsp,oWall) || place_meeting(x,y+vsp,oBox))
{
	while (!place_meeting(x,y+sign(vsp),oWall) && !place_meeting(x,y+sign(vsp),oBox))
	{
		y += sign(vsp);
	}
	vsp = 0;
}

//1 way playform check
if (place_meeting(x,y+vsp,o1Way) && vsp>=0)
{
	while (place_meeting(x,y+1,o1Way))
	{
		y -= 1;
	}
	y += 1;
	vsp = 0;
}

//bumper check :)
if (place_meeting(x,y+vsp,oBumper)) {
	hsp = -15*sign(hsp);
	vsp = -15*sign(vsp);
	audio_play_sound(sSpring, 0, false);
}
//move the character based on hsp
y += vsp;
//animation bois
if (roll){
	sprite_index = sHotrock;
	if (irandom_range(0,15) = 1 && (place_meeting(x,y+1,oWall)||place_meeting(x,y+1,o1Way))) {
		instance_create_layer(x,y+15,"Object",oParticle);
	}
}
else
if (!place_meeting(x,y+1,oWall) and !place_meeting(x,y+1,o1Way) and !place_meeting(x,y+1,oBox))
{
	sprite_index = sHotfall;
}
else
{
	if (round(hsp) == 0)
	{
		sprite_index = sHotdog;
	} else {
		if (irandom_range(0,25) = 1) {
			instance_create_layer(x,y+15,"Object",oParticle);
		}
	}
}

//change the direction the character faces depending on input
if (move != 0)
image_xscale = move;

//cheat: create another fezhead
if (keyboard_check_pressed(vk_tab)){
	instance_create_layer(x,y-105,"Object",oFezhead);
	cloneCheat = true;
}}
if (cloneCheat) {
	if (y > 540) {
		instance_destroy(self)
	}
}