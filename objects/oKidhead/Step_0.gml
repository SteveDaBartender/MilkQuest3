//gathers the keyboard info
if (npc = false) {
getInput();
} else getNpcInput();


if (!global.gameLock) {
	
//calculate horz. movement
move = key_right - key_left;

switch state {
	case states.hooked:
		hooked_script();
		break;
	case states.driving:
		driving_script();
		break;
	case states.down:
		down_script();
		break;
	case states.normal:
		kid_jump();
		break;
	case states.punch:
		punch_script();
		break;
	case states.bubblegum:
		bubblegum_script();
		break;
	case states.burn:
		burn_script();
		break;
}

//collision check
standard_collision();

//if ground is below, set roll to false
if (place_meeting(x, y+1, oCollide) || place_meeting(x, y+3, o1Way)) {
	roll = false;
	if (place_meeting(x, y+1, oCollide)) jumpExtendable = 1;
}


//Change Animations based upon state
switch state {
	case states.driving:
		sprite_index = sKidSkateboard;
		break;
	case states.normal:
		if (!place_meeting(x,y+1,oCollide) and !place_meeting(x,y+1,o1Way))
		{
			if (vsp < -2 && roll) sprite_index = sKidFly2 else sprite_index = sKidFly;
		}
		else
		{
			if (round(hsp) == 0)
			{
				sprite_index = sKid;
			} else {
				sprite_index = sKidRun;
				if (irandom_range(0,30) = 1) {
					instance_create_layer(x,y+15,"Object",oParticle);
				}
			}
		}
		break;
	case states.punch:
		sprite_index = sKidPunch;
		break;
	case states.hooked:
		sprite_index = sKidHang;
		break;
}
if (move != 0) image_xscale = move;

player_wide_function();

}