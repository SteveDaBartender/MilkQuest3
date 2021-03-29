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
if (!press && place_meeting(x,y,global.character)) || (press && key_up && place_meeting(x,y,global.character)) {
	if (xTo != 0) {
		global.spawnX = xTo;
		global.spawnY = yTo;
	}
	change_room(destination, xTo, yTo, stop, 0);
}
