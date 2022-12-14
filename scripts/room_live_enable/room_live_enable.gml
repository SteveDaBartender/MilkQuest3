
function room_live_update(){
	if live_call() return live_result;
	var charx = global.character.x;
	var chary = global.character.y;
	var towerX = 0
	audio_play_sound(sSuperSecretFullStorySoundEffectDONOTLEAK,0,false);
	room_goto_live(room);
	global.spawnX = charx
	global.spawnY = chary
	global.showCollide = true;
	if (instance_exists(oPlayer)) {
		oPlayer.x = charx;
		oPlayer.y = chary;
	}
	oCamera.x = global.spawnX;
	oCamera.y = global.spawnY;
	/*
	view_wport[0]=640;
	view_wport[0]=360;
	view_enabled=true;
	view_set_visible(0, true);
	show_debug_message(string(view_wport[0]));
	show_debug_message(string(view_hport[0]));
	//surface_resize(application_surface,view_wport[0]*3,view_hport[0]*3)
	*/
}