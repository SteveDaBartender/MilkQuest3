/// @description Insert description here
// You can write your code in this editor
var cond = true;
if (condition = true) {
	cond = true
} else if (condition = "readOnce" && global.intro = false) {
	cond = true;
} else cond = false;
if (place_meeting(x,y,global.character) && cond && !complete) {
	call_textbox(script);	
	audio_play_sound(sJump,1,false);
	complete = true;
	if (condition = "readOnce") global.intro = true;
}