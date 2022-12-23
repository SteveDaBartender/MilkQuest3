if live_call() return live_result;

if (keyboard_check_pressed(ord("R"))) room_restart();

switch (step) {
	case 0:
		global.character.x = 600;
		global.character.controlLock = true;
		timer++
		if (timer >= 120) {
			timer = 0
			step++;
		}
		break;
	case 1:
		global.character.x = x;		
		timer++
		if (timer >= 2) {
			timer = 0
			step++;
		}
		break;
	case 2:
		global.character.move = 1;
		global.character.hsp = 6;
		global.character.image_speed = 2
		if (global.character.x >= 1335) {
			timer = 0
			step++;
		}
		break;
	case 3:
		global.character.cutsceneLock = true;
		global.character.sprite_index = sFezBack
		timer++;
		if (timer >= 60) {
			timer = 0
			step++;
		}
		break;
	case 4:
		global.character.sprite_index = sFezLetter
		mailboxState = 2;
		timer++;
		if (timer >= 60) {
			timer = 0
			step++;
			global.character.cutsceneLock = false;
		}
		break;
	case 5:
		global.character.move = 1;
		global.character.hsp = 6;
		global.character.image_speed = 2
		if (global.character.x >= 1535) {
			timer = 0
			step++;
			global.character.state = states.driving
			carState = false;
			global.character.hsp = -1.1
			
		}
		break;
	case 6:
		timer++
		global.character.image_xscale = -1;
		if (timer > 60) {
			global.character.hsp += -0.2;
			global.character.cutsceneLock = false;
		}
		if (global.character.x <= 100) {
			step++
			timer = 0
			global.character.x = 4000
			x = 4000
			global.character.hsp = -7
			y -= 70
		}
		break;
	case 7:
		if (global.character.x <= 3752) {
			step++;		
		}
		break;
	case 8:
		carState = true;
		carX = global.character.x 
		x = 3750
		global.character.state = states.normal;
		global.character.cutsceneLock = false;
		step++;
		global.character.controlLock = false;
		break;
	case 9:
		x = global.character.x+100
		x = clamp(x,3200,5000)
		break;
}