draw_set_font(fLevelSelect);
y = 0;
draw_text(5,y+5,"Keyboard Left: " + string(keyboard_check(vk_left)));
draw_text(5,y+20,"Keyboard Right: " + string(keyboard_check(vk_right)));
draw_text(5,y+35,"Keyboard Up: " + string(keyboard_check(vk_up)));
draw_text(5,y+50,"Keyboard Down: " + string(keyboard_check(vk_down)));
draw_text(5,y+65,"Keyboard Jump: " + string(keyboard_check(ord("Z"))));
draw_text(5,y+80,"Keyboard Special: " + string(keyboard_check(ord("X"))));

y = 95;

draw_text(5,y+5,"Gamepad " + string(gamepadTestNum) + "Left: " + string(gamepad_button_check(0,gp_padl)));
draw_text(5,y+20,"Gamepad " + string(gamepadTestNum) + "Right: " + string(gamepad_button_check(0,gp_padr)));
draw_text(5,y+35,"Gamepad " + string(gamepadTestNum) + "Up: " + string(gamepad_button_check(0,gp_padu)));
draw_text(5,y+50,"Gamepad " + string(gamepadTestNum) + "Down: " + string(gamepad_button_check(0,gp_padd)));
draw_text(5,y+65,"Gamepad " + string(gamepadTestNum) + "Jump: " + string(gamepad_button_check(0,gp_face1)));
draw_text(5,y+80,"Gamepad " + string(gamepadTestNum) + "Special: " + string(gamepad_button_check(0,gp_face3)));

	key_down = keyboard_check_pressed(ord("X")) || gamepad_button_check_pressed(0,gp_face3);
	key_down_hold = keyboard_check(ord("X")) || gamepad_button_check(0,gp_face3);
	key_space = keyboard_check(ord("Z")) || gamepad_button_check(0,gp_face1);
	key_space_press = keyboard_check_pressed(ord("Z"))  || gamepad_button_check_pressed(0,gp_face1);
	key_up = keyboard_check(vk_up) || gamepad_button_check(0,gp_padu);
	key_ddown = keyboard_check(vk_down) || gamepad_button_check(0,gp_padd);
	key_debug = keyboard_check_pressed(vk_f3) || gamepad_button_check_pressed(0,gp_select);


