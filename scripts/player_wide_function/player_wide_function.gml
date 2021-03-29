function player_wide_function() {
	
	//room_speed = 50; if you wanna play in 50hz like a loser
	if(keyboard_check_pressed(ord("R"))) {
	hp = 0;
	damage_character();
	}
	
	//change the direction the character faces depending on input
	if ( move != 0) image_xscale = move;
	
	// add !state = states.fishing &&
	//destroy character if below map
	if (y > room_height) {
		if (global.character = oConeheadMQ2 || global.character = oFezheadMQ2) {
			room_restart();
		} else {
			instance_destroy(self);
			instance_create_layer(oPlayer.x,oPlayer.y,"Object",global.character);
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

	//spring collision
	if (place_meeting(x,y, oSpring)) {
		vsp = -20;
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
		x-= lol.x - lol.ox;	
	}
	
	lastVsp = vsp;
	lastHsp = hsp;
	//moves characters if WASD is pressed in debug mode.
	
	if (global.debug) {
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
	
	if (keyboard_check(vk_f12)) state = states.bubblegum;
	
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
	if (global.character.key_debug) {
		if (!global.debug) global.debug = true;
		else global.debug = false;	
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
