/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y,global.character)) {
	global.toppyDialogue = "body"

	if (oPlayer.timeleft < 300 && !global.leg) {
		global.leg = true;
		global.toppyDialogue = "leg"
	}
	if (global.milk <= 10 && !global.head) {
		global.head = true;
		global.toppyDialogue = "head"
	} 
	if (global.milk > 140 && !global.arm) {
		global.arm = true;
		if (global.body) global.toppyDialogue = "arm"	
	}
	global.body = true;
	if (global.finished || global.body)  global.toppyDialogue = "none";
	if (global.leg && global.arm && global.head && global.body && !global.finished) {
			global.finished = true;
			global.toppyDialogue = "final"
	}
	global.spawnX = 0
	global.spawnY = 0
	save_game_data();
	global.milk = 0;
	change_room(rChristmasHub,x,y,true,oFezhead);
}