// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fishing_script(){
	hsp = 0;
	if (key_down) {
		oCamera.follow = global.character
		state = states.normal;
		instance_destroy(oFishHook);
	}
	if (key_space_press && !instance_exists(oFishHook)) {
		myHook = instance_create_layer(x,y-64,"Object",oFishHook)
		myHook.hsp = image_xscale *15;
		myHook.vsp = -15;
		oCamera.follow = oFishHook;
	} else if (key_space && instance_exists(oFishHook)) {
		myHook.hsp += image_xscale * -0.07;
		//myHook.vsp +=  -0.1;
	}	
	if (instance_exists(oFishHook)) {
		if (keyboard_check_pressed(vk_left)) {
			myHook.hsp += -0.6;
			myHook.vsp -= 0.5;	
		}
		if (keyboard_check_pressed(vk_right)) {
			myHook.hsp += 0.4;
				myHook.vsp -= 0.5;	
		}
	}
	move = image_xscale;
}