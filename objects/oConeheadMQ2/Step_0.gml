//gathers the keyboard info
getInput();
//gives a value of -1, 0 or 1 depending on keys
//sets the movement speed.

if (!global.gameLock) {

oCamera.drag = 2.5;;

move = key_right - key_left;
hsp += move * walksp;
hsp *= 0.95;

if (hsp > 9) hsp = 9;
if (hsp < -9) hsp = -9;

	//initiates jump if collidiable object is below (or rolling) , space is pressed and a block is not above you.
if ((place_meeting(x,y+1,oCollide) || position_meeting(x,y+1,o1Way)) && key_space_press && !place_meeting(x,y-13,oCollide))
{
	vsp = -18;
	roll = false;
	jumpExtendable = 1;
	audio_play_sound(sJump, 0, false);
}
	vsp *= 0.965;
	vsp += grv;

if ((key_down_hold || key_space) && place_meeting(x,y+vsp,oCollide)) {
	vsp *= -1.3;
	if (key_right || key_left) vsp -= 10;
	audio_play_sound(sConeheadBounce, 1, false);
}
if ((key_down_hold || key_space) && place_meeting(x+hsp,y,oCollide)) {
	acl = hsp * -0.2;
	hsp *= -1;
	if (key_right || key_left) vsp = -12;
	audio_play_sound(sConeheadBounce, 1, false);
}
//set gravity
standard_collision();

player_wide_function();


// ANIMATION //
if (!place_meeting(x,y+1,oCollide))
	{
		sprite_index = sConeheadJumpMQ2;
	}
else
	{
		if (round(hsp) = 0){
			sprite_index = sConeheadIdleMQ;
		} else {
			sprite_index = sConeheadIdleMQ;;
		}
	}

}