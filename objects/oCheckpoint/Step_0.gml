//activate if touching player and this checkpoint isnt active
if (place_meeting(x,y,global.character) && !active) {
	oCheckpoint.active = false; //set every other checkpoint to inactive
	with(oCheckpoint) { //this is here for HTML5
		self.active = false;
	}
	active = true; //makes this checkpoint active
	global.character.hp = 3; //set character's health to full
	global.spawnX = x
	global.spawnY = y-2; //sets character respawn to here
	if (image_alpha = 1) audio_play_sound(sCheckpointGrab, 1, false);
}

//animation :)
if (active) image_index = 1;
else image_index = 0;