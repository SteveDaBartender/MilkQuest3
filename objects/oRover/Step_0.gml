//gathers the keyboard info
key_left = keyboard_check(vk_left);
key_down = keyboard_check_pressed(ord("X"));
key_right = keyboard_check(vk_right);
key_space = keyboard_check(ord("Z"));
key_space_press = keyboard_check_pressed(ord("Z"));
//gives a value of -1, 0 or 1 depending on keys
//sets the movement speed.
if (!lock) {
	
if (!roll) {
move = key_right - key_left;
hsp += move * walksp;
hsp *= 0.93
} else {
	hsp *= 0.99;
	if (!place_meeting(x,y-12,oWall) && (abs(hsp)< 10)) {
		roll = false;
	}
}
//initiate rolling
if (key_down && !roll && (place_meeting(x,y+1,oWall)||place_meeting(x,y+1,o1Way)||place_meeting(x,y+1,oBox))) {
	roll = true;
	hsp = 13*image_xscale;
}
// commit a jump
if ((place_meeting(x,y+1,oBox) || (place_meeting(x,y+1,oWall))) || roll) && (key_space_press)
{
	vsp =-15;
	roll = false;
	//if (!place_meeting(x,y+1,oWall)) roll = false;
	audio_play_sound(sJump, 0, false);
}
//dupe code for jumping on a one way. i'll remove this soon :)
if (place_meeting(x,y+1,o1Way)) && (key_space_press)
{
	vsp =-15;
	audio_play_sound(sJump, 0, false);
}

//set gravity
vsp += grv;

standard_collision();

//change the direction the character faces depending on input
if (move != 0)
image_xscale = move;

angle += hsp;
draw_sprite_ext(sRover,0,x,y,1,1,angle,0,1);
player_wide_function();
}