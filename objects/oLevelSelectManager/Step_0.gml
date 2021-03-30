global.spawnFollower = teammate;
global.milk = 0;
global.debug = false;
global.gameLock = false;
global.currentSong = sLevelSelect;
getInput();
//go to a level based on the input
if (key_space_press) {
	switch (cursorPos) {
		case 0:
			change_room(rHub, 0, 0, true, char);
			break;
		case 1:
			if char = oFezhead change_room(rFezTutorial, 0, 0, true, char);
			if char = oConehead change_room(rConeTutorial, 0, 0, true, char);
			if char = oKidhead change_room(rKidTutorial, 0, 0, true, char);
			break;
		case 2:
			change_room(rValley, 0, 0, true, char);
			break;
		case 4:
			change_room(rFezCarnival, 0, 0, true, char);
			break;
		case 5:
			change_room(rFactoryEntrance, 0, 0, true, char);
			break;
		case 8:
			change_room(rTowerEntrance, 0, 0, true, char);
			break;
		case 18:
			change_room(rTower2Autoscroll, 0, 0, true, char);
			break;
		case 15:
			change_room(rChristmasLevel1, 0, 0, true, char);
			break;
		case 21:
			change_room(rBonSuperBall, 0, 0, true, char);
			break;
		case 26:
			change_room(rSweetCapSurf, 0, 0, true, char);
			break;
		case 29:
			change_room(rFishing, 0, 0, true, oFezhead);
			break;
		default:
			audio_play_sound(sBreak, 1, false);
			break;
	}
}

//at some point, make these a switch statement 
if (key_down) {
	switch (char) {
		case oFezhead:
			char = oConehead;
			break;
		case oConehead:
			char = oKidhead;
			break;
		case oKidhead:
			char = oFezhead;
			break;
	}
}

//moves the cursor up and down, 'cool' is the cooldown
if (key_up && cool > 5) {
	cursorPos = clamp(cursorPos-1,0,31);
	cool = 0;
}
if (key_ddown && cool > 5) {
	cursorPos = clamp(cursorPos+1,0,31);
	cool = 0;
}
//increment the cooldown
cool++;

//changes teammate, or the character that follows you around
//may use this, may not.
if (key_down) {
	switch (teammate) {
		case "Fezhead":
			teammate = "Conehead";
			break;
		case "Conehead":
			teammate = "Kidhead";
			break;
		case "Kidhead":
			teammate = "None";
			break;
		case "None":
			teammate = "Fezhead";
			break;
	}
}