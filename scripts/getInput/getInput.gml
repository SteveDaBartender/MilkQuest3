global.stickPress=[0,0,0,0]
function pollInput(num) {
	var gamepadNum = 0;
	return keyboard_check_pressed(global.controlStruct.controlsKeyboard[num]) || gamepad_button_check_pressed(gamepadNum,global.controlStruct.controlsController[num]);
}
function pollInputHeld(num) {
	var gamepadNum = 0;
	return keyboard_check(global.controlStruct.controlsKeyboard[num]) || gamepad_button_check(gamepadNum,global.controlStruct.controlsController[num]);
}
function pollInputStick(num,dir) {
	if live_call(num,dir) return live_result;
	if (!global.controlStruct.stickEnable) return 0;
	var gamepadNum = 0;
	var threshold = global.controlStruct.stickThreshold;
	var value = gamepad_axis_value(gamepadNum, num);
	return (sign(dir) == sign(value) && abs(value) > threshold) 
}
function pollInputStickPress(num,dir) {
	if live_call(num,dir) return live_result;
	var test =  pollInputStick(num,dir)
}
function getInput(){
	if live_call() return live_result;
	var gamepadNum = 0;
	key_left = pollInputHeld(0) || pollInputStick(gp_axislh,-1)
	key_right = pollInputHeld(1) || pollInputStick(gp_axislh,1)
	key_down = pollInput(5)
	key_down_hold = pollInputHeld(5)
	key_space = pollInputHeld(4)
	key_space_press = pollInput(4)
	key_up = pollInputHeld(2) || pollInputStick(gp_axislv,-1)
	key_up_press = pollInput(2)  || pollInputStick(gp_axislv,-1)
	key_ddown = pollInputHeld(3) || pollInputStick(gp_axislv,1)
	key_ddown_press = pollInput(3)
	key_start =  pollInput(6)
	if (global.sv_cheats) {
		key_debug = keyboard_check_pressed(vk_f3) || gamepad_button_check_pressed(gamepadNum,gp_select);
	} else key_debug = 0;
}