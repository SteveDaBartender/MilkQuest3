//This sets the music for the room.
//audio_stop_all();
/*
if (room = rTowerEntrance) {
	layer_shader("TilesGrass",fxTowerWind);
	layer_script_begin("TilesGrass",tower_update_grass);
	shader_set_uniform_f(shader_get_uniform(fxTowerWind, "Time"),global.globalTimer/1000);
}
*/

switch (room){
	case rFezTutorial:
		audio_play_sound(sCaveFall, 0, false);
		global.character.roll = false;
		global.currentSong = sLevel1;
	break;
	case rSidewayValleyMQ2:
		audio_stop_all()
		if (global.character != oConeheadMQ2) {
			audio_play_sound(sSidewayValleyMQ2Song, 0, true);
			global.currentSong = sSidewayValleyMQ2Song;
		} else {
			audio_play_sound(sSidewayValleyMQ2SongConehead, 0, true);
			global.currentSong = sSidewayValleyMQ2SongConehead;
		}
		lock = true;
	break;

	case rFutureSpaceMQ2:
		audio_stop_all()
		if (global.character != oConeheadMQ2) {
			audio_play_sound(sFutureSpaceMQ2Song, 0, true);
			global.currentSong = sFutureSpaceMQ2Song;
		} else {
			audio_play_sound(sFutureSpaceMQ2SongConehead, 0, true);
			global.currentSong = sFutureSpaceMQ2SongConehead;
		}
		lock = true;
	break;
	case rSurreal1:
		audio_play_sound(sound, 0, true);
		global.currentSong = sound;
	break;
	case rSurreal2:
		audio_play_sound(sound8, 0, true);
		global.currentSong = sound8;
	break;
	case rTitleSreenMQ2:
		audio_play_sound(sTitleScreenMQ2, 0, false);
		global.currentSong = sTitleScreenMQ2;
		lock = true;
	break;
	case rSweetCapSurf:
		audio_play_sound(sBubblegum, 0, true);
		global.character.state = states.bubblegum;
		global.currentSong = sBubblegum;
	break;
	case rLevelSelect:
		audio_play_sound(sLevelSelect, 0, true);
	break;
	case rFezCarnival:
		oWall.bob = true;
		o1Way.bob = true;
		audio_play_sound(sCarnival, 0, true);
	break;
	case rKidTutorial:
		audio_play_sound(sLevel1, 0, true);
	break;	
	case rHub:
		oWall.bob = true;
		o1Way.bob = true;
		if (global.currentSong != sHub) audio_play_sound(sHub, 0, true);
		global.currentSong = sHub;
	break;	
	case rBonSuperBall:
		audio_play_sound(sSuperBall, 0, true);
	break;
	case rChristmasLevel1:
		audio_play_sound(sChristmas, 0, true);
		global.currentSong = sChristmas;
	break;
	case rChristmasHub:
		audio_play_sound(sCHub, 0, true);
		global.currentSong = sCHub;
	break;
	case rHouse:
		oWall.bob = true;
		o1Way.bob = true;
		audio_play_sound(sHouse, 0, true);
	break;
	case rTowerEntrance:
		oWall.bob = true;
		o1Way.bob = true;
		audio_play_sound(sSky, 0, true);
		global.currentSong = sSky;
	break;
	case rTower2Autoscroll:
		oWall.bob = true;
		o1Way.bob = true;
		audio_play_sound(sTower2, 0, true);
		global.currentSong = sTower2;
	break;
	case rFactoryEntrance:
		global.currentSong = sFactory;
		audio_play_sound(sFactory, 0, true);
	break;
	case rFishing:
		oWall.bob = true;
		audio_play_sound(sFishing, 0, true);
		global.currentSong = sFishing;
	break;
	case rValley:
		oWall.bob = true;
		o1Way.bob = true;
		audio_play_sound(sValley, 0, true);
		global.currentSong = sValley;
	break;
	case rCuriousCarnivalMQ2:
		audio_stop_all()
		if (global.character = oConeheadMQ2) {
			audio_play_sound(sCuriousCarnivalMQ2SongConehead, 0, true);
			global.currentSong = sCuriousCarnivalMQ2SongConehead;
		} else {
			audio_play_sound(sCuriousCarnivalMQ2Song, 0, true);
			global.currentSong = sCuriousCarnivalMQ2Song;
		}
	break;
}