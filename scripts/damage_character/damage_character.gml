function damage_character() {
	var funny = false;
	var player = global.character;
	if (player.invincibleTimer == 0) {
		player.invincibleTimer = 100;
		//if (place_meeting(x,y,oSpikes)) player.invincibleTimer = 200;
		audio_play_sound(sHurt, 1, false);
		player.hp -= 1;
		funny = true;
	}
	//if the player's healh is 0 or below, respawn them
	if (player.hp <= 0) {
		instance_destroy(player);
		instance_create_layer(oPlayer.x,oPlayer.y,"Object",player);
		audio_play_sound(sDiedToDeath,1,false);
		reset_falling_platforms()
		if (instance_exists(oAutoscrollerManager)) {
			oAutoscrollerManager.y = global.spawnY + 350;
			oCannon.active = false;	
		}
	}
	//return "true" if the player didn't die (this is stored as a variable as if it wasnt it caused the
	//plaer to not die sometimes
	if (funny) return true;
}
