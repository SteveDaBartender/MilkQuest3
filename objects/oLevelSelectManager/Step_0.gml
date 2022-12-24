global.spawnFollower = teammate;
global.milk = 0;
global.debug = false;
global.gameLock = false;
global.currentSong = sLevelSelect;
getInput();
//go to a level based on the input
if (key_space_press) {
	if (teammate = "None") oPersistent.npcFollower = 0;
	if (teammate = "Fezhead") oPersistent.npcFollower = 1;
	if (teammate = "Conehead") oPersistent.npcFollower = 2;
	if (teammate = "Kidhead") oPersistent.npcFollower = 3;
	switch (cursorPos) {
		case 0:
			change_room(rTitle, 0, 0, true, char);
			break;
		case 1:
			change_room(rChristmasHub, 0, 0, true, char);
			break;
		case 2:
			change_room(rChristmasLevel1, 0, 0, true, char);
			break;
		case 3:
			change_room(rNewTutorial, 0, 0, true, char);
			break;
		case 4:
			change_room(rHub, 0, 0, true, char);
			break;
		case 5:
			change_room(rTest, 0, 0, true, char);
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
	cursorPos = clamp(cursorPos-1,0,5);
	cool = 0;
}
if (key_ddown && cool > 5) {
	cursorPos = clamp(cursorPos+1,0,5);
	cool = 0;
}
//increment the cooldown
cool++;

//changes teammate, or the character that follows you around
//may use this, may not.
if (keyboard_check_pressed(13)) {
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