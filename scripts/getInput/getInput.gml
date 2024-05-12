function pollInput(num) {
	var gamepadNum = 0;
	return keyboard_check_pressed(global.controlStruct.controlsKeyboard[num]) || gamepad_button_check_pressed(gamepadNum,global.controlStruct.controlsController[num]);
}
function pollInputHeld(num) {
	var gamepadNum = 0;
	return keyboard_check(global.controlStruct.controlsKeyboard[num]) || gamepad_button_check(gamepadNum,global.controlStruct.controlsController[num]);
}
function getInput(){
	var gamepadNum = 0;
	key_left = pollInputHeld(0)
	key_right = pollInputHeld(1)
	key_down = pollInput(5)
	key_down_hold = pollInputHeld(5)
	key_space = pollInputHeld(4)
	key_space_press = pollInput(4)
	key_up = pollInputHeld(2)
	key_up_press = pollInput(2)
	key_ddown = pollInputHeld(3)
	key_ddown_press = pollInput(3)
	key_start =  pollInput(7)
	if (global.sv_cheats) {
		key_debug = keyboard_check_pressed(vk_f3) || gamepad_button_check_pressed(gamepadNum,gp_select);
	} else key_debug = 0;
}