if (seperateWarps = true) {
	switch global.character {
		case oFezhead:
			destination = fezDestination;
			break;
		case oKidhead:
			destination = kidDestination;
			break;
		case oConehead:
			destination = coneDestination;
			break;
	}
}
getInput();
if (global.transitionType = 0 && !press && place_meeting(x,y,global.character)) || (press && key_up && place_meeting(x,y,global.character)) {
	if (xTo != 0) {
		global.spawnX = xTo;
		global.spawnY = yTo;
	}
	global.transitionTime = 100;
	global.transitionType = 1;
}
if (global.transitionType = 1 && global.transitionTime <= 0) {
	change_room(destination, xTo, yTo, stop, 0);
	global.transitionTime = 100;
	global.transitionType = 2;
}