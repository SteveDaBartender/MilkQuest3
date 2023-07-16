getInput();

pauseTimer++;

rooms = [
	rNewTutorial,
	rNewTutorial2,
	rChristmasHub,
	rChristmasLevel1
]
//pause/unpause if in allowed rooms and a certrain time has passed
if (array_contains(rooms,room)) {
	if (key_start && pauseTimer > 30 && !obj_shell.isOpen && !instance_exists(oTextbox)) {
		paused = !paused;
		pauseTimer = 0;
		if (paused) {
			global.gameLock = true;
			show_debug_message("Deactivated all obj")
			if (os_browser = browser_not_a_browser) instance_deactivate_all(true);
			instance_activate_object(obj_shell)
			//instance_activate_object(global.character)
			audio_play_sound(sMenuOpen,0,false);
			audio_group_set_gain(Music,global.volMus/2,50);
		}
		else {
			global.gameLock = false;
			instance_activate_all();
			audio_group_set_gain(Music,global.volMus,50);
			audio_play_sound(sMenuClose,0,false);
		}
	}
	
} else {
	paused = false;
	//global.gameLock = false;
}

if (paused) {
	global.gameLock = true;
	var oldCursorPos = cursorPos;
	//moves the cursor up and down, 'cool' is the cooldown
	if (key_up && cool > 10) {
		cursorPos = clamp(cursorPos-1,0,1);
		cool = 0;
	}
	if (key_ddown && cool > 10) {
		cursorPos = clamp(cursorPos+1,0,1);
		cool = 0;
	}
	if ( oldCursorPos != cursorPos) {
		audio_stop_sound(sMenuMove);
		audio_play_sound(sMenuMove,1,false);
	}
	//increment the cooldown
	cool++;
	
	if (key_space_press) {
		switch (cursorPos) {
			case 0:
				paused = false;
				global.gameLock = false;
				instance_activate_all();
				audio_group_set_gain(Music,global.volMus,50);
				audio_play_sound(sMenuClose,0,false);
				break;
			//case 1:
		//		room_restart();
		//		break;
			case 1:
				if (!instance_exists(oFade)) instance_create_layer(x,y,layer,oFade);
				audio_stop_all()
				instance_activate_all();
				oFade.state = 1;
				cursorPos = 0;
				oFade.destination = rTitle;
				break;
		}
	}
}