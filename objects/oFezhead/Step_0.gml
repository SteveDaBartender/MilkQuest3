//gathers the keyboard info
if (npc = false) {
getInput();
} else getNpcInput();
//gives a value of -1, 0 or 1 depending on keys
//sets the movement speed.

if (!global.gameLock) {
	
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
//set gravity
standard_collision();

// ANIMATION //
switch state {
	case states.hooked:
		sprite_index = sFezHang;
		break;
	case states.squish:
		sprite_index = sFezSquish;
		break;
	case states.burn:
		sprite_index = sFezBurn;
		break;
	case states.driving:
		sprite_index = sFezDrive;
		break;
	case states.tornado:
		sprite_index = sFezKick;
		break;
	case states.bubblegum:
		sprite_index = sFezBubblegum;
		image_index = round(abs(hsp)/4.5);
		if (place_meeting(x,y+2,oCollide)) sprite_index = sFezBubblegumIdle;
		break;
	case states.fishing:
		sprite_index = sFezFish;
		break;
	case states.down:
		if (!place_meeting(x,y+12,oCollide)) sprite_index = sFezFallC;
		else sprite_index = sFezDown;
		break;
	case states.normal:
		if (roll){
			sprite_index =sFezRoll;
		} else if (!place_meeting(x,y+1,oCollide) && !position_meeting(x,y+1,o1Way))
		{
			if (vsp < 3) {
				sprite_index = sFezJump
			} else sprite_index = sFezFall;
		}
		else
		{
			if (round(hsp) = 0){
				if (sprite_index = sFezRoll) sprite_index = sFez;
				//idle animation stuff, quite complicated.
				if (image_index > image_number - 1) {
					if (idleTimer > 500) {
						var randAnim = irandom_range(1,30);
						if (randAnim = 10) {
							sprite_index = sFezIdle1;
							idleTimer = 200;
						} else sprite_index = sFez;
					} else sprite_index =sFez
				}
				if (sprite_index == sFezWalk) sprite_index = sFez;
			} else {
				sprite_index = sFezWalk;
				walkParticle(room,global.character);
			}
		}
		break;
	
}


if (sprite_index = sFezWalk){
	image_speed = hsp/5;
} else image_speed = 1;
if (sprite_index = sFezBubblegum) image_speed = 0;
player_wide_function();
}