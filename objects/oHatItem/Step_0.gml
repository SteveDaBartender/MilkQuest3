/// @description Insert description here
// You can write your code in this editor
if (got = 0) switch character {
	case 0:
		sprite_index = sFezHat;
		break;
	case 1:
		sprite_index = sKidHat;
		break;
	case 2:
		sprite_index = sConeHat;
		break;
}

if (place_meeting(x,y,global.character) && !got) {
	switch (character) {
		case 0:
			change_character(oFezhead);
			break;
		case 1:
			change_character(oKidhead);
			global.unlockKid = true;
			break;
		case 2:
			global.unlockConehead = true;
			change_character(oConehead);
			break;
		case 3:
			change_character(oRover);
			break;
	}
	got = 1;
}

if (got = 1) {
	sprite_index = sNull;
	image_alpha = 0;
}

if (!on_screen_check(self)) {
	got = 0;
	image_alpha = 1;

}