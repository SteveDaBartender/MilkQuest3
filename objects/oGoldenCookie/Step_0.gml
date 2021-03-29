/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y,global.character)) {
	global.body = true;
	global.toppyDialogue = "body"

	if (oPlayer.timeleft < 300) {
		global.leg = true;
		global.toppyDialogue = "leg"
	}
	if (global.milk <= 10) {
		global.head = true;
		global.toppyDialogue = "head"
	} 
	if (global.milk > 147) {
		global.arm = true;
		global.toppyDialogue = "arm"	
	}
	if (global.finished)  global.toppyDialogue = "none";
	if (global.leg && global.arm && global.head && global.body && !global.finished) {
			global.finished = true;
			global.toppyDialogue = "final"
	}

	save_game_data();
	global.milk = 0;
	change_room(rChristmasHub,x,y,true,oFezhead);
}