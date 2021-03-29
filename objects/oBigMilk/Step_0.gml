if (place_meeting(x,y,global.character)){
	global.milk += 5;
	audio_sound_gain(global.currentSong, 0, 0,);
	audio_play_sound(sMilkFanfare,1,false);
	audio_sound_gain(sMilkFanfare, 1, 0,);
	audio_sound_gain(global.currentSong, 1, 5000,);
	instance_destroy(self);
	global.character.hp = 3;
}