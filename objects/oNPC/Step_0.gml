/// @description Insert description here
// You can write your code in this editor
switch type {
	case 0:	
		if (place_meeting(x,y,global.character) && global.character.key_up_press && complete) {
			call_textbox(script);	
			complete = false;
		}
		sprite_index = spriteIdle;
		break;
}

if (distance_to_object(global.character) > 50) complete = true;