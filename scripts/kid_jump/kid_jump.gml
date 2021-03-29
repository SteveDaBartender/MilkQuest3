// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function kid_jump(){
	
	hsp += move * walksp;
	hsp *= frict;
	
	if (place_meeting(x,y+1,oCollide)) && (key_space_press)
	{
		vsp =-8.5;
		jumpExtendable = 1;
		if (!place_meeting(x,y+1,oWall)) roll = false;
		audio_play_sound(sJump, 1, false);
	}
	if (place_meeting(x,y+1,o1Way)) && (key_space_press)
	{
		vsp =-8.5;
		jumpExtendable = 1;
		if (!place_meeting(x,y+1,o1Way)) roll = false;
		audio_play_sound(sJump, 1, false);
	}

	//starts the double jump 
	if (!roll && key_space_press && !place_meeting(x,y+1,oCollide) && !place_meeting(x,y+1,o1Way)) {
		vsp = -12;
		roll = true;
		audio_play_sound(sKidRise, 1, false);
	}
	if (jumpExtendable >= 1) jumpExtendable +=1;

	//depending on the jump counter, your jump height will increase.
	if (!roll && key_space && jumpExtendable > 5 && jumpExtendable < 12) {
		vsp += -1.1;	
	}
	
	if (key_space && roll) {
		if (vsp<5) {
			vsp += grv*0.6;
		} else {
			vsp = 5			
		}
	} else {
		vsp += grv;
	}
	if (roll) {
		frict = 0.66;	
	} else {
		frict = 0.8;
	}
	
	if (key_down && (place_meeting(x,y+1,oCollide) || place_meeting(x,y+1,o1Way))) {
		state = states.punch;	
		hsp = image_xscale * 8;
		image_index = 0;
	}
	
}