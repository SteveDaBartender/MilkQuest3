function standard_collision() {
    //Let's try this again.
    //I heavily referenced (stole) this article to make this: https://zackbellgames.com/2014/10/28/understanding-collision-basics/ thanks bro ;)
	//if live_call() return live_result;

    //Vertical Collision Check
    repeat(abs(vsp)) {
        if (!place_meeting(x,y+sign(vsp),oCollide) && !(vsp > 0 && (position_meeting(x-11,y-1,o1Way) ||position_meeting(x+11,y-1,o1Way)))) {
            y += sign(vsp);
            slopeacl = 0;
			//slopeDashFrames = 0
        } else {
			//if (dropdash && oInput.key_x_hold && vsp > 0 && jumpExtendable > 10) {
			//	enable_roll()	
			//}
			vsp = 0;
            while (place_meeting(x,y-1,o1Way) && position_meeting(x,y-1,o1Way)) {
                y-=1;    
            }
			//floatTime = 0
            jumpExtendable = 0;
            break;
        }
    }
   // var realHsp = hsp/4.5;
    //Horizontal Check
    repeat(abs(hsp)) {

        //going up a slope
        var yUp = 0
        for (var i = 1; i < 6; i += 1) {
            if (place_meeting(x + sign(hsp),y, oCollide) && !place_meeting(x + sign(hsp), y-i, oCollide)) {
                yUp = i;
				if (!roll) {
					slopeacl = (-0.2*i) * image_xscale
				} else if (i>2) slopeacl = (-0.25*i) * image_xscale
				jumpExtendable = 0;
				if (i>2) hsp += (-0.2*i) * image_xscale
                break;
            }
			yUp = 0
			slopeacl = 0
        }
        y -= yUp
		

        //going down a slope
        var yDown = 0
        for (var i = 1; i < 6; i += 1) {
            if (!place_meeting(x + sign(hsp),y, oCollide) && !place_meeting(x + sign(hsp), y+i, oCollide) && place_meeting(x + sign(hsp), y+i+1, oCollide)) {
                yDown = i;
				slopeacl = (0.25*i) * image_xscale
				if (crouch) slopeacl *= 2
				//jumpExtendable = 0;
                break;
            }
			yDown = 0
			//show_debug_message("over")
        }
		if (vsp<0) yDown = 0
        y += yDown
        
        //actual hsp shit
        if (!place_meeting(x+sign(hsp),y,oCollide)) {
            x += sign(hsp);
        } else {
            hsp = 0;
            break;
        }
    }

    //add friction to acceleration. (and slope acl)
    if (roll) {
        slopeacl *= 0.5;
    } else slopeacl *= 0.94;
    acl *=0.95;
    //calculate horizontal movement
    hsp += acl;
    hsp += slopeacl;

}
