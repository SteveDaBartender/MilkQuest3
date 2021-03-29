// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function driving_script(){
	oCamera.drag = 7;
	oCamera.change = 15 * hsp;
	if (place_meeting(x,y+16,oWater)) {
		hsp += move * walksp *0.1;
	} else hsp += move * walksp *0.15;
	
	hsp *= 0.98

	if (round(hsp) > 5) punch = true;
	else punch = false;

	if ((place_meeting(x,y+16,oCollide) || position_meeting(x,y+1,o1Way)) && key_space_press && !place_meeting(x,y-13,oCollide))
	{
		vsp =-10;
		roll = false;
		jumpExtendable = 1;
		audio_play_sound(sJump, 0, false);
		
	}

	if (jumpExtendable >= 1) jumpExtendable +=1;

	//depending on the jump counter, your jump height will increase.
	if (key_space && jumpExtendable > 5 && jumpExtendable < 12) {
		vsp += -1.3;	
	}
	
	vsp += grv;
}