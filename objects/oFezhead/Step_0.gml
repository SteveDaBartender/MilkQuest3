//gathers the keyboard info
if (npc = false) {
getInput();
} else getNpcInput();
//gives a value of -1, 0 or 1 depending on keys
//sets the movement speed.

if (!global.gameLock) {
	
	
	//rolling isn't considered a state like the rest of the character's moves
	//it's spaghetti but it works so idk
if (!roll) {
move = key_right - key_left;
} else {
	hsp *= 0.99;
	if (!place_meeting(x,y-11,oCollide) && ((place_meeting(x,y+2,o1Way) || place_meeting(x,y+2,oCollide))) && (abs(hsp)< 9) && (!place_meeting(x+48,y,oEnemy) || !place_meeting(x-48,y,oEnemy))) {
		roll = false;
	}
}
//initiate rolling
if (key_down && !place_meeting(x+move,y,oWall) && !roll && state = states.normal && (place_meeting(x,y+1,oCollide)||position_meeting(x,y+1,o1Way))) {
	if (room = rFishing) { 
		state = states.fishing;
		key_down = false; } else
	{
		roll = true;
		hsp = 13*image_xscale;
		audio_play_sound(sRoll,1,false);}
}



switch state {
	case states.hooked:
		hooked_script();
		break;
	case states.down:
		down_script();
		break;
	case states.normal:
		fezhead_jump();
		break;
	case states.driving:
		driving_script();
		break;
	case states.fishing:
		fishing_script();
		break;
	case states.bubblegum:
		bubblegum_script();
		break;
	case states.tornado:
		tornado_script();
		break;
	case states.punch:
		punch_script();
		break;
	case states.stomp:
		stomp_script();
		break;
	case states.burn:
		burn_script();
		break;
	case states.squish:
		squish_script();
		break;
}
standard_collision();
player_wide_function();
}
fezhead_draw();