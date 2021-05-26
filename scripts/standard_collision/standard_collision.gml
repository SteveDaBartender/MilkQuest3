function standard_collision() {

	
	
	
  	x = round(x);
	
		//if there's no block three blocks up then move up
	if (place_meeting(x+hsp, y , oSlope) && !position_meeting(x+move,y,oWall)) {
		var slope = instance_place(x+hsp,y,oSlope)
		while (place_meeting(x+hsp,y,oCollide) && slope.funny > 0 && place_meeting(x+hsp,y,oSlope)) y -= 1;	
	}
	
		//if there's no block three blocks up then move up
		
	if (!place_meeting(x+move,y,oSlope ) && !position_meeting(x+move,y,oWall)   && place_meeting(x+move,y+10,oSlope)) {
			var slope = instance_place(x+move,y+10,oSlope)
			while (!place_meeting(x+hsp,y,oCollide) && slope.funny > 0 && place_meeting(x+move,y+9,oSlope)) y += 1;
			//if (slope.funny < 0) hsp *= -1;
			y -= 1;
	}
	
	//if (place_meeting(x,y,oSlope && )) hsp *= -1;
	/*
		//slope check
	if (place_meeting(x+hsp,y+vsp,oSlope)) {
		var inst = instance_place(x+hsp,y+vsp, oSlope);
		while (place_meeting(x,y,oSlope))
		{
			y -= image_yscale;
		}
		vsp = 0;
		if (abs(inst.angle) < 46){
			hsp -= sign(hsp)*abs(inst.slope);
		}
	} */
	
	
		//vetical collison check
	if (place_meeting(x,y+round(vsp),oCollide))
	{
		while (!place_meeting(x,y+sign(vsp),oCollide) && round(vsp) != 0)
		{
			y += sign(vsp);
		}
		vsp = 0;
		jumpExtendable = false;
		if (place_meeting(x,y,oCollide)) y -= sign(lastVsp);
	}
	
	//hiii!!!!!!! fumo!!!!!
	
	//poopy :)

	//horizontal collision check
	if (place_meeting(x+hsp,y,oCollide))
	{

		while (!place_meeting(x+sign(hsp),y,oCollide))
		{
			x += sign(hsp);
		}
		acl = 0;
		if (!place_meeting(x+hsp,y,oSlope) && !(global.character = oFezhead && roll && !place_meeting(x+hsp, y, oWall) && !place_meeting(x+hsp, y, oConveyer))) {
			hsp = 0;
		}
		if (place_meeting(x,y,oCollide)) x -= sign(lastHsp);
	}




	/*lock player to slope underneath them if not jumping
	if (vsp>1 && place_meeting(x,y-7,oSlope)) {
		if (!position_meeting(x + sign(hsp)*35,y+10,oSlope)) {
			while (!place_meeting(x,y+1,oSlope))
			{
				y += image_yscale;
			}
		} else {hsp = 0};
		vsp = 0;
	}
	*/
	/*1 way playform check (this is seperate because of how different it is from the main vertical check.)
	if (place_meeting(x,y+vsp,o1Way) && vsp>0)
	{
		while (place_meeting(x,y+1,o1Way))
		{
			y -= 1;
		}
		y += 1;
		vsp = 0;
	} */

	//add friction to acceleration.
	if (global.character != oConehead) acl *= 0.94;
	else acl *= 0.85;
	//calculate horizontal movement
	hsp += acl;
	x += hsp;

	
	//vertical movement calculation on 1 way platforms
	var off = 1;
	//if (global.character = oConehead) off = 33;
	for (i = 0; i < abs(vsp); i += 1) {
		 if !((position_meeting(x+16,y+off,o1Way) || position_meeting(x-16,y+off,o1Way)) && vsp > 0) {
			y += sign(vsp);
		 } else {
			 while (!((position_meeting(x+16,y+off,o1Way) || position_meeting(x-16,y+off,o1Way))))
				{
					y -=1;
				}
			jumpExtendable = false;
			vsp = 0;
		 }
	}
	if (drownTimer > 1500) {
		audio_sound_gain(global.currentSong, 0, 0,);
		if (!audio_is_playing(sDrowning)) audio_play_sound(sDrowning,1,false);
	} else {
		audio_sound_gain(global.currentSong, 1, 300);
		audio_stop_sound(sDrowning);
	}
	if (drownTimer > 2600) {
		damage_character();
	}
	if (place_meeting(x,y,oWater) && state != states.bubblegum) {
		if (!roll) hsp *= 0.89;
		drownTimer++;
		vsp *= 0.97;
		if (global.character = oConehead && position_meeting(x,y+23,oWater)) {
			vsp += -1;
			if (key_space_press){
				vsp =-5;
				jumpExtendable = 1;
				audio_play_sound(sJump, 0, false);
			}
		}
	} else drownTimer -= 20;
	if (drownTimer < 0) drownTimer = 0;
}
