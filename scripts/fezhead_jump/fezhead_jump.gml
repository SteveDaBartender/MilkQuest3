// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fezhead_jump(){
	if (!roll)  { 
		hsp += move * walksp;
		hsp *= 0.80
	}
	
	if (place_meeting(x,y+1,oCollide)||position_meeting(x,y+1,o1Way)) punch = false;
	if (!place_meeting(x+move*3,y+1,oCollide) && !position_meeting(x,y+1,o1Way) && !punch && key_space_press && !roll) {
		state = states.tornado;
		vsp = 0;
		audio_play_sound(sTornadoSound, 1, false);
	}
	
	//initiates jump if collidiable object is below (or rolling) , space is pressed and a block is not above you.
	if ((place_meeting(x,y+1,oCollide) || position_meeting(x,y+1,o1Way) || roll) && key_space_press && !place_meeting(x,y-13,oCollide))
	{
		vsp =-10;
		roll = false;
		jumpExtendable = 1;
		audio_play_sound(sJump, 0, false);
	}
	
	//if jump extendable is enabled, continue increasing it.
	if (jumpExtendable >= 1) jumpExtendable +=1;

	//depending on the jump counter, your jump height will increase.
	if (key_space && jumpExtendable > 5 && jumpExtendable < 12) {
		vsp += -1.1;	
	}
	
	vsp += grv;
}	