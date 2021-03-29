/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y+8,global.character)) {
	switch global.character {
		case oFezhead:
			if (global.unlockConehead) {
				change_character(oConehead);
				image_index = 1;
				global.character.y += 16;
			} else if (global.unlockKid) {
				image_index = 2;
				change_character(oKidhead);
			} else {
				audio_play_sound(sBreak, 1, false);
				global.character.y -= 100;
			}
			break;
		case oConehead:
			if (global.unlockKid) {
				image_index = 2;
				change_character(oKidhead);
			} else {
				image_index = 0;
				change_character(oFezhead);
			}
			break;
		case oKidhead:
			change_character(oFezhead);
			//image_index++;
			image_index = 0;
			break;
	}	
	global.character.vsp = 3;
	global.character.y += 15;
}