/// @description Insert description here
// You can write your code in this editor
if (!audio_is_playing(sMilkFanfare) && collected) {
	
	global.toppyDialogue = "body"

	if (oPlayer.timeleft < 300 && !global.leg) {
		global.leg = true;
		global.toppyDialogue = "leg"
	}
	if (global.milk <= 5 && !global.head) {
		global.head = true;
		global.toppyDialogue = "head"
	} 
	if (global.milk > 140 && !global.arm) {
		global.arm = true;
		if (global.body) global.toppyDialogue = "arm"	
	}
	if (global.finished || (global.body && global.toppyDialogue = "body"))  global.toppyDialogue = "none";
	global.body = true;
	if (global.leg && global.arm && global.head && global.body && !global.finished) {
			global.finished = true;
			global.toppyDialogue = "final"
	}
	show_debug_message("LEAVING.")
	global.spawnX = 0
	global.spawnY = 0
	save_game_data();
	global.milk = 0;
	global.intro = true;
	global.character.controlLock = false;
	//global.character = oFezhead
	oFade.state = 1
	oFade.destination = rChristmasHub
	global.gameLock = true;
	instance_destroy(self);
}

if (place_meeting(x,y,global.character)) {
	audio_stop_all()
	audio_play_sound(sMilkFanfare,0,false)
	y += 10000;
	show_debug_message("YOU ARE WIN.")
	collected = true;
	global.character.controlLock = true;
}