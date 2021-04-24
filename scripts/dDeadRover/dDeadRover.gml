// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function dDeadRover(){
	myTextbox = noone;
	switch (global.character) {
		case oFezhead:
			icon[0] = sFezIcon1;
			text[0] = "Apparently, there's just a green sphere down here? How odd."
			icon[1] = sFezIcon2;
			text[1] = "Normally, I wouldn't care, but the face-on-a-rock principle is really getting to me."
			break;
		case oKidhead:
			icon[0] = sKidIcon1;
			text[0] = "AHA! I've found an ancient artifact! Finally, I'll be the most famous treasure hunter!"
			icon[1] = sKidIcon1;
			text[1] = "It looks like a cricle with eyes! Maybe it used to be a cool toy."
			icon[2] = sKidIcon1;
			text[2] = "I don't he's gonna budge, though. I can barley push the thing..."
			break;
		case oConehead:
			icon[0] = sConeIcon1;
			text[0] = "who decided to throw their kickball into this random pit, then cover it up with a hidden plank of wood"
			icon[1] = sConeIcon1;
			text[1] = "and why did they draw a face on it? and why does it have a steel frame? how long has it been down here?"
			icon[2] = sConeIcon1;
			text[2] = "man, people around here are weird. you'd never see this kinda thing in the city."
			break;
		
	}
}