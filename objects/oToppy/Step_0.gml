/// @description Insert description here
// You can write your code in this editor
if (global.body) {
	script = dToppyCheck;
} else {
	script = dToppyNorm;
}
if (place_meeting(x,y,global.character) && global.character.key_up_press && complete) {
	call_textbox(script);	
	complete = false;
}
if (global.toppyDialogue = "body") {
	call_textbox(dBeatScriptStandard);
	//complete = false;
	global.toppyDialogue = "none";
} else if (global.toppyDialogue = "arm") {
	call_textbox(dBeatScriptAllMilks);
	//complete = false;
	global.toppyDialogue = "none";
} else if (global.toppyDialogue = "leg") {
	call_textbox(dBeatScriptFast);
	//complete = false;
	global.toppyDialogue = "none";
} else if (global.toppyDialogue = "head") {
	call_textbox(dBeatScriptNoMilks);
	//complete = false;
	global.toppyDialogue = "none";
} else if (global.toppyDialogue = "final") {
	call_textbox(dBeatScriptFinished);
	//complete = false;
	global.toppyDialogue = "none";
}