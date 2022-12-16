/// @description Insert description here
// You can write your code in this editor
getInput();

if (!audio_is_playing(sTitleScreen) && audio_group_is_loaded(Music) && !lock) {
	audio_play_sound(sTitleScreen,0,true);
}

if (key_space_press) && !lock {
	switch (cursorPos) {
		case 0:
				audio_stop_all();
				global.character = oFezhead;
				global.spawnConehead = false;
				global.xSpawn = 0;
				global.ySpawn = 0;
				load_game_data();
				global.currentSong = sCHub;
				oFade.state = 1;
				lock = true
				oFade.destination = rChristmasHub;
			break;
		case 1:
			oFade.state = 1;
			lock = true
			oFade.destination = rNewTutorial;
			audio_stop_all();
			global.character = oFezhead;
			global.spawnConehead = false;
			global.xSpawn = 0;
			global.ySpawn = 0;
			audio_stop_all();
		break;
		case 2:
				oFade.state = 1;
				lock = true
				oFade.destination = rLevelSelect;
				audio_stop_all();
			audio_stop_all();
			break;
		case 3:
				oFade.state = 1;
				lock = true
				oFade.destination = rSettings;
		break;
		case 6:
				global.character = oFezheadMQ2;
			global.spawnConehead = false;
			audio_stop_all()
			room_goto(rTitleSreenMQ2);
		break;
		case 7:
			game_end();
		break;
		default:
			audio_play_sound(sBreak,1,false);
		break;
	}
}
var oldCursorPos = cursorPos;
//moves the cursor up and down, 'cool' is the cooldown
if (key_up && cool > 5) {
	cursorPos = clamp(cursorPos-1,0,7);
	cool = 0;
}
if (key_ddown && cool > 5) {
	cursorPos = clamp(cursorPos+1,0,7);
	cool = 0;
}
if ( oldCursorPos != cursorPos) {
	audio_stop_sound(sMenuMove);
	audio_play_sound(sMenuMove,1,false);
}
//increment the cooldown
cool++;