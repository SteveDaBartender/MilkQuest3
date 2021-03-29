/// @description Insert description here
// You can write your code in this editor
if (instance_exists(global.character)) {
	if (place_meeting(x,y,global.character) && !complete) {
		call_textbox(dSaveTemp);
		complete = true;
	}
}