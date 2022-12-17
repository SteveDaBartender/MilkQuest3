//this is really broken right now because of thow transitions are incorperated
//and to be honest I DONT KNOW WHY!
//fix later plz :(

if (seperateWarps && avaliable) {
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
//show_debug_message(string(id) + "  " + string(destination));
getInput();
if (avaliable && !press && place_meeting(x,y,oPlayer)) || (press && key_up && place_meeting(x,y,global.character)) {
	oFade.state = 1
	oFade.destination = destination
	global.gameLock = true;
	avaliable = 0;
	if (stop) audio_stop_all()
	if (xTo != 0) {
		global.spawnX = xTo;
		global.spawnY = yTo;
	}
} else if (oPersistent.transitionType = 1 && oPersistent.transitionTime <= 0) {
	//change_room(destination, xTo, yTo, stop, global.character);
	show_debug_message("Transitioning to "+ string(destination) + " : " + string(id));
	//instance_destroy(self);
}