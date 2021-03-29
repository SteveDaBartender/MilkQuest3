/// @description runs when hook :)
function hooked_script() {
	if (place_meeting(x,y-vsp,oHook) && !place_meeting(x,y-vsp,oCollide)){
		hsp = 0;
		roll = false;
		//y-=1;
		var hook = instance_place(x,y-vsp,oHook);
		vsp = hook.vsp;
		hsp = hook.hsp;
		x = hook.x;
		y = hook.y +42;
	} else hooked = false;
	if (key_space_press) {
		state = states.normal;
		vsp = -15;
		audio_stop_sound(sHookGrab)
		audio_play_sound(sJump,1,false);
	}


}
