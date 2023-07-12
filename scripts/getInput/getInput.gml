
function getInput(){
	var gamepadNum = 0;
	key_left = keyboard_check(vk_left) || gamepad_button_check(gamepadNum,gp_padl);
	key_right = keyboard_check(vk_right) || gamepad_button_check(gamepadNum,gp_padr);
	key_down = keyboard_check_pressed(ord("X")) || gamepad_button_check_pressed(gamepadNum,gp_face3);
	key_down_hold = keyboard_check(ord("X")) || gamepad_button_check(gamepadNum,gp_face3);
	key_space = keyboard_check(ord("Z")) || gamepad_button_check(gamepadNum,gp_face1);
	key_space_press = keyboard_check_pressed(ord("Z"))  || gamepad_button_check_pressed(gamepadNum,gp_face1);
	key_up = keyboard_check(vk_up) || gamepad_button_check(gamepadNum,gp_padu);
	key_up_press = keyboard_check_pressed(vk_up) || gamepad_button_check_pressed(gamepadNum,gp_padu);
	key_ddown = keyboard_check(vk_down) || gamepad_button_check(gamepadNum,gp_padd);
	key_ddown_press = keyboard_check_pressed(vk_down) || gamepad_button_check_pressed(gamepadNum,gp_padd);
	key_start =  keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(gamepadNum,gp_start);
	if (global.sv_cheats) {
		key_debug = keyboard_check_pressed(vk_f3) || gamepad_button_check_pressed(gamepadNum,gp_select);
	}
}