function player_wide_function() {
	

	
	//change the direction the character faces depending on input
	if ( move != 0) image_xscale = move;
	
	// add !state = states.fishing &&
	//destroy character if below map
	if (y > room_height && !npc) {
		if (global.character = oConeheadMQ2 || global.character = oFezheadMQ2) {
			room_restart();
		} else {
			hp = 0;
			damage_character();
		}
		reset_falling_platforms();
	}

	if (y > room_height) {
		//
		if (self = oConeheadMQ2 || self = oFezheadMQ2) {
			change_room(room,0,0,false,global.character);
		} else instance_destroy(self);
	}
	//stops player from going beyond room boundries
	if (y < 0) y = 0;
	if (x < 0) x = 0;
	if (x > room_width) x = room_width;
	
	//increases animation timer if player is not moving.
	if (hsp = 0 && vsp = 0) {
		idleTimer++;	
	} else idleTimer = 0;

	if (place_meeting(x,y+5,oWall)) {
		smashing = false;	
	}

	//spring collision
	if (place_meeting(x,y, oSpring)) {
		vsp = -22;
		global.character.roll = false;
		audio_play_sound(sSpring, 0, false);
	}
	
	//bumper check :)
	if (place_meeting(x+hsp,y+vsp,oBumper)) {
	
		acl = -4*(hsp/3);
		vsp = -15*sign(vsp);
		audio_play_sound(sSpring, 0, false);
		roll = false;
	}
	//gets players unstuck from the Crushers bringing them into the ground. 
	if (place_meeting(x,y,oCollide) && place_meeting(x,y+2,oCrusher)){
		while (place_meeting(x,y,oCollide)) {
			y-=1;	
		}
	}
	
	while (place_meeting(x,y,oCollide) && place_meeting(x,y+2,oMovingPlatform) && !place_meeting(x,y,oMovingPlatform)) {
		var lol = instance_place(x,y+2,oMovingPlatform);
		hsp-= lol.x - lol.ox;	
	}
	
	//deactivate offscreen instances of enemies
	if (global.globalTimer%120==0) {
		instance_deactivate_object(oEnemy);
		instance_deactivate_object(oMilk);
		instance_deactivate_object(oMovingPlatform);
	}
	//activate all deactivated instances
	if (global.globalTimer%10==0) {
		instance_activate_region(x-540,y-280,x+540,y+280,true);
	}

	var milk = instance_place(x,y,oMilk)
	if (milk != noone) {
		milk.pt = true;
	}
	lastVsp = vsp;
	lastHsp = hsp;
	//moves characters if WASD is pressed in debug mode.
	
	if (global.debug && !npc) {
		if (keyboard_check(ord("A")) || gamepad_button_check(0,gp_padl)) x -= 20; 
		if keyboard_check(ord("D")) || gamepad_button_check(0,gp_padr) x += 20; 
		if keyboard_check(ord("W")) || gamepad_button_check(0,gp_padu) y -= 20; 
		if keyboard_check(ord("S")) || gamepad_button_check(0,gp_padd) y += 20;
		if keyboard_check(ord("S")) || gamepad_button_check(0,gp_padd) || keyboard_check(ord("W")) || gamepad_button_check(0,gp_padu) || keyboard_check(ord("A")) || gamepad_button_check(0,gp_padl) || keyboard_check(ord("D")) || gamepad_button_check(0,gp_padr) vsp = -1 * grv;
	}
	
	//changes transparency on invincibility
	if (invincibleTimer > 0) {
		image_alpha = (120 - invincibleTimer) *0.01;//invincibleTimer/1000;
		invincibleTimer -= 1;
	} else image_alpha = 1
	
	if (round(abs(hsp)) != 0 && keyboard_check(vk_shift) && place_meeting(x,y+3 ,oCollide)) {
		if (!audio_is_playing(sFunnyRun)) audio_play_sound(sFunnyRun,1,false);	
	} else audio_stop_sound(sFunnyRun);
	
	//change color if HP is 1
	if (hp = 1) {
		image_blend = make_colour_hsv(255, 125-abs(sin(global.globalTimer/75))*240, 255);
		audio_sound_pitch(global.currentSong,0.983);
	} else {
		audio_sound_pitch(global.currentSong,1);
		image_blend = c_white;
	}
	if (global.character.key_debug && !npc) {
		if (!global.debug) global.debug = true;
		else global.debug = false;	
	}
	
	if (npc) {
			var cam = oCamera.cam;
		var x1 = camera_get_view_x(cam);
		var y1 = camera_get_view_y(cam);
		var x2 = x1 + camera_get_view_width(cam);
		var y2 = y1 + camera_get_view_height(cam);
		if(!point_in_rectangle(x,y,x1-328,y1-328,x2+328,y2+328)) {
			x = global.character.x;
			y = global.character.y;
			invincibleTimer = 135;
		} 	
		
	}
	
	
	if (place_meeting(x,y,oCannon)) image_alpha = 0;
	//if (place_meeting(global.character.x,global.character.y-30,oCollide) && place_meeting(global.character.x,global.character.y+3,oCollide)) state = states.squish;
	
	
	/*
	if (global.debug) {
		if (keyboard_check(ord("1"))) global.character.state = states.normal;
		if (keyboard_check(ord("2"))) global.character.state = states.down;
		if (keyboard_check(ord("3"))) global.character.state = states.driving;
		if (keyboard_check(ord("4"))) global.character.state = states.fishing;
		if (keyboard_check(ord("5"))) global.character.state = states.hooked;
		if (keyboard_check(ord("6"))) global.character.state = states.kick;
		if (keyboard_check(ord("7"))) global.character.state = states.punch;
		if (keyboard_check(ord("8"))) global.character.state = states.stomp;
		if (keyboard_check(ord("9"))) global.character.state = states.tornado;
		if (keyboard_check(ord("0"))) global.character.state = states.bubblegum;
	}
	*/
}
