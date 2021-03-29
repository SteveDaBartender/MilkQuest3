/// @description goto destination 
room_goto(destination);
//stop the music if need be
if (stop) {
audio_stop_all();
}
//special cases for specific buttons
switch (id) {
	case inst_43C2991F:
		global.character = oFezhead;
		global.spawnConehead = false;
		global.xSpawn = 0;
		global.ySpawn = 0;
		load_game_data();
		global.currentSong = sCHub;
		break;
	case inst_TitleScreenButton:
		global.character = oFezhead;
		global.spawnConehead = false;
		global.xSpawn = 0;
		global.ySpawn = 0;
		global.currentSong = sLevelSelect;
		audio_stop_all()
		break;
	case inst_MQ2Button:
		global.character = oFezheadMQ2;
		global.spawnConehead = false;
		audio_stop_all()
		break;
	case inst_DOINGYOMOM:
		global.currentSong = sCHub;
		global.character = oFezhead;
		clear_game_data();
		break;
	case inst_50E8D13C:
		global.character = oKidhead;
		global.spawnConehead = false;
		global.milk = 0;
		break;
	case inst_EF633E5:
		global.character = oHotdog;
		global.spawnConehead = false;
		global.milk = 0;
		break;
	case inst_39CA0E6D:
		global.character = oFezhead;
		global.milk = 0;
		global.spawnConehead = false;
		break;
}