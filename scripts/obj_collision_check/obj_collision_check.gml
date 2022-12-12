function obj_collision_check(){
	
			//if there's no block three blocks up then sign(hsp) up
	if (place_meeting(x+hsp, y , oSlope) && !position_meeting(x+sign(hsp),y-1,oWall)) {
		var slope = instance_place(x+hsp,y,oSlope)
		while (place_meeting(x+hsp,y,oCollide) && slope.funny > 0 && place_meeting(x+hsp,y,oSlope)) y -= 1;	
	}
	
		//if there's no block three blocks up then sign(hsp) up
		
	if (!place_meeting(x+sign(hsp),y,oSlope ) && !position_meeting(x+sign(hsp),y,oWall)   && place_meeting(x+sign(hsp),y+10,oSlope)) {
			var slope = instance_place(x+sign(hsp),y+10,oSlope)
			while (!place_meeting(x+hsp,y,oCollide)&& vsp > -1 && slope.funny > 0 && place_meeting(x+sign(hsp),y+9,oSlope)) y += 1;
			//if (slope.funny < 0) hsp *= -1;
			y -= 1;
	}
	
	if (place_meeting(x,y+vsp,oCollide)){ //vertical check
		y = round(y);
		while (!place_meeting(x,y+sign(vsp),oCollide) && place_meeting(x,y+vsp,oCollide))
		{
			y += sign(vsp);
		}
		vsp = 0;
		if (place_meeting(x,y,oCollide)) y -= sign(lastVsp);
	}
	
	if (place_meeting(x,y+vsp,o1Way)){ //1 way check
			y = round(y);
			while (!place_meeting(x,y+sign(vsp),o1Way) && place_meeting(x,y+vsp,o1Way))
			{
				y += sign(vsp);
			}
			vsp = 0;
			if (place_meeting(x,y,o1Way)) y -= sign(lastVsp);
		}
			
	if (place_meeting(x+hsp,y,oCollide)){ //horizontal check
			while (!place_meeting(x+sign(hsp),y,oCollide))
			{
				x += sign(hsp);
			}
			if (variable_instance_exists(self,acl)) acl = 0;
			hsp = 0;
		if (place_meeting(x,y,oCollide)) x -= sign(lastHsp);
	}
}