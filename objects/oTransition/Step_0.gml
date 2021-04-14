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
if (oPersistent.transitionType = 0 && !press && place_meeting(x,y,global.character)) || (press && key_up && place_meeting(x,y,global.character)) {
	if (xTo != 0) {
		global.spawnX = xTo;
		global.spawnY = yTo;
	}
	oPersistent.transitionTime = 100;
	oPersistent.transitionType = 1;
} else if (oPersistent.transitionType = 1 && oPersistent.transitionTime <= 0) {
	change_room(destination, xTo, yTo, stop, 0);
	oPersistent.transitionTime = 100;
	oPersistent.transitionType = 2;
}