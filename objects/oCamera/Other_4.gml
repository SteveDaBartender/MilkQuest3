//This sets the music for the room.
//audio_stop_all();
/*
if (room = rTowerEntrance) {
	layer_shader("TilesGrass",fxTowerWind);
	layer_script_begin("TilesGrass",tower_update_grass);
	shader_set_uniform_f(shader_get_uniform(fxTowerWind, "Time"),global.globalTimer/1000);
}
*/

//not much point in a switch statement with only two cases.
switch (room){
	case rChristmasHub:
		audio_play_sound(sCHub, 0, true);
		global.currentSong = sCHub;
	break;
	case rLevelSelect:
		audio_play_sound(sLevelSelect, 0, true);
	break;
}