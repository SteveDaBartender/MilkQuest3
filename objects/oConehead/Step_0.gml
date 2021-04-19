//gathers the keyboard info
if (!npc) {
getInput();
} else getNpcInput();
//gives a value of -1, 0 or 1 depending on keys
//sets the movement speed.

if (!global.gameLock) {
	
move = key_right - key_left;
if (abs(coneAcl) < 0.5) hsp += move * walksp;
hsp *= 0.93


//initiate rolling

switch state {
	case states.hooked:
		hooked_script();
		break;
	case states.down:
		down_script();
		break;
	case states.normal:
		conehead_jump();
		break;
	case states.stomp:
		stomp_script();
		break;
	case states.bubblegum:
		bubblegum_script();
		break;
	case states.burn:
		burn_script();
		break;
}

standard_collision();

coneAcl *= 0.94;
hsp += coneAcl;


if (!(state = states.stomp) && !place_meeting(x,y+16,oCollide) && !place_meeting(x,y+1,o1Way) && place_meeting(x+(move * 9),y,oCollide)) {
	if (vsp > 0) vsp *= grv;	
	if (place_meeting(x+7,y,oCollide)) {
		angle = 90;
		x-=1;
		hsp = 0;
	}
	else if (place_meeting(x-7,y,oCollide)) {
		angle = 270;
		x+=1;
		//while(place_meeting(x-move*2,y,oCollide)) {
		//	x += 1;	
		//}
		hsp = 0;
	}
	if (key_space_press) {
		audio_play_sound(sJump,1,false);
		vsp =- 8;
		coneAcl = image_xscale * -1.5;
		if (angle = 90) hsp += -1
		if (angle = 270) hsp += 1
		jumpExtendable = 1;
	}
	//state = states.normal;
} else angle = 0;

if (state = states.stomp) angle = 0;

// ANIMATION //
image_speed = 1;
switch state {
	case states.stomp:
		sprite_index = sConeBoom;
		break;
	case states.hooked:
		sprite_index = sConeHang;
		break;
	case states.down:
		sprite_index = sFezDown;
		break;
	case states.normal:
		if(place_meeting(x,y+3,o1Way) || place_meeting(x,y+3,oCollide)){
			if (round(hsp) != 0) {
				sprite_index = sConeRun;
			} else sprite_index = sCone;
		} else if (place_meeting(x+move,y,o1Way) || place_meeting(x+move,y,oCollide)) {
			//sprite_index = sCone
		} else sprite_index = sConeBoom;
		if (angle = 90 || angle = 270) sprite_index = sConeWallLeft;
		break;
}


if (sprite_index = sConeRun){
	image_speed = hsp/5;
} else image_speed = 1;
player_wide_function();
}  