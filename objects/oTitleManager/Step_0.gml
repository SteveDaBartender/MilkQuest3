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
				audio_play_sound(sStartSound,0,false);
				global.character = oFezhead;
				global.spawnConehead = false;
				global.xSpawn = 0;
				global.ySpawn = 0;
				load_game_data();
				oFade.state = 1;
				lock = true
				global.currentSong = sCHub;
				if (global.intro == 1) {
					oFade.destination = rChristmasHub;
				} else oFade.destination = rHub
			break;
		case 1:
			oFade.state = 1;
			lock = true
			oFade.destination = rNewTutorial;
			audio_stop_all();
			audio_play_sound(sStartSound,0,false);
			global.character = oFezhead;
			global.spawnConehead = false;
			global.xSpawn = 0;
			global.ySpawn = 0;
			audio_stop_all();
		break;
		case 2:
				oFade.state = 1;
				lock = true
				oFade.destination = rSettings;
				audio_play_sound(sMenuOpen,0,false);
		break;
		case 3:
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
	cursorPos = clamp(cursorPos-1,0,3);
	cool = 0;
}
if (key_ddown && cool > 5) {
	cursorPos = clamp(cursorPos+1,0,3);
	cool = 0;
}
if ( oldCursorPos != cursorPos) {
	audio_stop_sound(sMenuMove);
	audio_play_sound(sMenuMove,1,false);
}
//increment the cooldown
cool++;