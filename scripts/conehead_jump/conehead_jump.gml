// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function conehead_jump(){
	if ((place_meeting(x,y+1,oCollide) || position_meeting(x-32,y+1,o1Way) || position_meeting(x+32,y+1,o1Way) || roll) && key_space_press && !place_meeting(x,y-13,oCollide))
	{
		vsp =-10.5;
		jumpExtendable = 1;
		audio_play_sound(sJump, 0, false);
	}
	
	//if jump extendable is enabled, continue increasing it.
	if (jumpExtendable >= 1) jumpExtendable +=1;

	//depending on the jump counter, your jump height will increase.
	if (key_space && jumpExtendable > 5 && jumpExtendable < 12) {
		vsp += -1.12;	
	}
	
	if (key_down && !place_meeting(x,y+8,oCollide)  && !position_meeting(x,y+2,o1Way)) {
		state = states.stomp;	
	}
	
	vsp += grv;
}