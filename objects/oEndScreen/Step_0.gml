/// @description Insert description here
// You can write your code in this editor
if live_call() return live_result;
getInput()
global.globalTimer++;
var timer = global.globalTimer - startTime
show_debug_message(timer)
if key_space_press && timer > 500 {
	oFade.state = 1;
	audio_sound_gain(sCHub,0,500);
	oFade.destination = rTitle;
}
