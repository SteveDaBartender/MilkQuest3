//gathers the keyboard info
getInput();
//gives a value of -1, 0 or 1 depending on keys
//sets the movement speed.

if (!global.gameLock) {

oCamera.drag = 2.5;;

move = key_right - key_left;
hsp += move * walksp;
hsp *= 0.80;

if (hsp > 7.3) hsp = 7.3;
if (hsp < -7.3) hsp = -7.3;

	//initiates jump if collidiable object is below (or rolling) , space is pressed and a block is not above you.
if ((place_meeting(x,y+3,oCollide) || position_meeting(x,y+1,o1Way)) && key_space_press && !place_meeting(x,y-13,oCollide))
{
	vsp = -18;
	roll = false;
	jumpExtendable = 1;
	audio_play_sound(sJump, 0, false);
}
	vsp *= 0.965;
	vsp += grv;

//set gravity
standard_collision();

player_wide_function();


// ANIMATION //
if (!place_meeting(x,y+1,oCollide))
	{
		if (vsp < 3) {
			sprite_index = sFezJumpMQ2
		} else sprite_index = sFezFallMQ2;
	}
else
	{
		if (round(hsp) = 0){
			sprite_index = sFezIdleMQ2;
		} else {
			sprite_index = sFezWalkMQ2;
		}
	}

}