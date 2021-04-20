
function getNpcInput(){
	
	//this esentialy controls NPC ai, of course 
	var gamepadNum = 0;
	var walkLeft = 0;
	var walkRight = 0;
	var jump = 0;
	var jumpHold = 0;
	var ability = 0;
	if (global.character.x + 50 > x) walkRight = 1;
	else walkRight = 0;
	if (global.character.x - 50 < x) walkLeft = 1;
	else walkLeft = 0;
	if (global.character.y+25 < y && (place_meeting(x,y+1,oCollide) ||  position_meeting(x,y+1,o1Way))) jump = 1
	else jump = 0;
	if (global.character.y < y) jumpHold = 1
	else jumpHold = 0;
	
	if (irandom_range(0,100) = 0 ) {
		walkLeft = 0;
		walkRight = 0;
	}
	switch (oPersistent.npcFollower) {
		case 1:
			if (distance_to_object(global.character) > 100) {
				ability = true;
			}
			else ability = false;
			if (!place_meeting(x,y+125,oCollide) && !place_meeting(x,y+125,o1Way) && vsp > 3 && abs(global.character.hsp) > 5) {
				jump = true;
				if (hsp > 0) walkRight = true;
				if (hsp <0) walkLeft = true;
			}
			break;
		case 3:
			if (place_meeting(x+50,y,oEnemy)) {
				ability = true;
				walkRight = true;
			}
			if (place_meeting(x-50,y,oEnemy)) {
				ability = true;
				walkLeft = true;
			}
			if (!place_meeting(x,y+75,o1Way) && !place_meeting(x,y+75,oCollide) && vsp > 3 && global.character.y < y) jump = true;
			jumpHold = true;
			//if (!roll && global.character.x + 150 > x || global.character.x - 150 < x) jumpHold = false;
			break;
		
	}
	key_down_hold = false;
	key_up = false;
	key_up_press = false;
	key_ddown = keyboard_check(vk_down) || gamepad_button_check(gamepadNum,gp_padd);
	key_ddown_press = keyboard_check_pressed(vk_down) || gamepad_button_check_pressed(gamepadNum,gp_padd);
	
	if (walkRight) key_right = 1;
	else key_right = 0;
	if (walkLeft) key_left = 1;
	else key_left = 0;
	if (jump) {
		key_space = true;
		key_space_press = true;
	} else {
		key_space = false;
		key_space_press = false;
	}
	if (jumpHold) {
		key_space = true;
	} else {
		key_space = false;
	}
	if (ability) {
		key_down = true;
	} else {
		key_down = false;
	}
}