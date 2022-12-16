
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