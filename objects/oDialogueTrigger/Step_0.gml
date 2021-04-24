/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y,global.character) && global.character.key_up_press && complete) {
	call_textbox(script);	
	complete = false;
}

if (distance_to_object(global.character) > 50) complete = true;