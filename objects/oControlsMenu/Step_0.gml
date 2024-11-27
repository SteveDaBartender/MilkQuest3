if live_call() return live_result;
if (keyboard_check_pressed(vk_f3)) {
	debugInfo = true;
}

 cool++;
 var oldCursorPos = cursorPos

if (searchingForInput) {
	if (keyboard_key != 0 && cool > 5) {
		searchingForInput = false;
		show_debug_message(keyboard_key)
		global.controlStruct.controlsKeyboard[cursorPos-1] = keyboard_key;
		cool = 0
		audio_play_sound(sMenuOpen,1,false);
	}
	var gpNum = 0;
	for (var i=0; i < array_length(supportedButtons);i++) {
		if gamepad_button_check_pressed(gpNum,supportedButtons[i]) {
		searchingForInput = false;
		cool = 0;
		global.controlStruct.controlsController[cursorPos-1] = supportedButtons[i];
		audio_play_sound(sMenuOpen,1,false);
		}
	}
} else {
	if ((keyboard_check(vk_up) || oPersistent.key_up) && cool > 8) {
		cursorPos = clamp(cursorPos-1,1,10);
		cool = 0;
	}
	if ((keyboard_check(vk_down) || oPersistent.key_ddown) && cool > 8) {
		cursorPos = clamp(cursorPos+1,1,10);
		cool = 0;
	}
	if (isChild) {
		cursorPos = clamp(cursorPos,1,10);
	}
	if ( oldCursorPos != cursorPos) {
		//audio_stop_sound(sMenuMove);
		//audio_play_sound(sMenuMove,1,false);
	}
	if (keyboard_check_pressed(ord("X"))) {
		if (cursorPos > 0 && cursorPos <12) {
			global.controlStruct.controlsKeyboard[cursorPos-1] = keyData[cursorPos-1].defaultValue;
		}
	}
	if cool > 5 && (gamepad_button_check_pressed(0,gp_face2)) {
		if (cursorPos > 0 && cursorPos <12) {
			global.controlStruct.controlsController[cursorPos-1] = keyData[cursorPos-1].defaultValueC;
		}
	}
	if cool > 5 && (gamepad_button_check_pressed(0,gp_face1) || keyboard_check_pressed(ord("Z"))) {
		switch cursorPos {
			case 10:
				oFade.state = 1;
				oFade.destination = rSettings;
				lock = true;
				save_game_data()
				break;
			case 8:
				global.controlStruct.stickEnable = !global.controlStruct.stickEnable;
				break;
			//why did i do it like that?
			case 9:
				break;
			default:
				searchingForInput = cursorPos;
				cool = 0;
				break;
		}
	}
	//makes no sense!
	if (cursorPos == 9) {
		var thresholdAdjust = 0;;
		thresholdAdjust =  (oPersistent.key_left - oPersistent.key_right ) * -0.01;
		global.controlStruct.stickThreshold = clamp(global.controlStruct.stickThreshold + thresholdAdjust,0,1);
	}
}
