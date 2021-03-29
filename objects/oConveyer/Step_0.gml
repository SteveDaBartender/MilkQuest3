//if player is above add on velocity to player velocity
//if the player is either conehead or rolling, redice the effect of converyer
if (place_meeting(x,y-2,global.character)) {
	if(global.character.roll) {
		global.character.hsp += vel/1.95;	
	} else if (global.character = oConehead) global.character.hsp += vel/2.2;	
	else global.character.hsp += vel;	
}

/*if (place_meeting(x,y,global.character)) {
	global.character.y -= 1;
}*/