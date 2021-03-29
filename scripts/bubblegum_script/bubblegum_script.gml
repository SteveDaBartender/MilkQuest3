// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function bubblegum_script(){
	oCamera.drag = 7;
	oCamera.change = 15 * hsp;
	if (place_meeting(x,y+16,oWater)) {
		hsp += move * walksp *0.4;
	} else hsp += move * walksp *0.2;
	
	hsp *= 0.95
	if (place_meeting(x,y+2,oCollide) && !place_meeting(x,y,oWater)) hsp /= 1.03;
	//initiates jump if collidiable object is below (or rolling) , space is pressed and a block is not above you.
	if ((place_meeting(x,y+32,oWater) || place_meeting(x,y+16,oCollide)) && key_space_press && !place_meeting(x,y-13,oCollide))
	{
		vsp =-10;
		roll = false;
		jumpExtendable = 1;
		audio_play_sound(sJump, 0, false);
		
	}
	
	if (place_meeting(x,y+16,oWater) && key_down_hold) {
		vsp += 1.7;
	}
	
	//if jump extendable is enabled, continue increasing it.
	if (jumpExtendable >= 1) jumpExtendable +=1;

	//depending on the jump counter, your jump height will increase.
	if (key_space && jumpExtendable > 5 && jumpExtendable < 12) {
		vsp += -1.3;	
	}

	if (place_meeting(x,y-8,oWater)) {
		vsp /= 1.1;
		vsp -= 1.5;
		
	}
	vsp += grv;

}