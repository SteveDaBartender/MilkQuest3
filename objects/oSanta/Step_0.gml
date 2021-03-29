/// @description Insert description here
// You can write your code in this editor
if (global.body) {
	script = dSantaBody;
} else {
	script = dSantaFirst;
}
if (place_meeting(x,y,global.character) && global.character.key_up_press && complete) {
	call_textbox(script);	
	complete = false;
}
