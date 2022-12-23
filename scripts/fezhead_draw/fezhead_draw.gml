function fezhead_draw(){
	// ANIMATION //
	switch state {
		case states.hooked:
			sprite_index = sFezHang;
			break;
		case states.squish:
			sprite_index = sFezSquish;
			break;
		case states.burn:
			sprite_index = sFezBurn;
			break;
		case states.driving:
			sprite_index = sFezDrive;
			break;
		case states.tornado:
			sprite_index = sFezKick;
			break;
		case states.bubblegum:
			sprite_index = sFezBubblegum;
			image_index = round(abs(hsp)/4.5);
			if (place_meeting(x,y+2,oCollide)) sprite_index = sFezBubblegumIdle;
			break;
		case states.fishing:
			sprite_index = sFezFish;
			break;
		case states.down:
			if (!place_meeting(x,y+12,oCollide)) sprite_index = sFezFallC;
			else sprite_index = sFezDown;
			break;
		case states.normal:
		if (!cutsceneLock) {
			if (roll){
				sprite_index =sFezRoll;
			} else if (!place_meeting(x,y+1,oCollide) && !position_meeting(x,y+1,o1Way))
			{
				if (place_meeting(x,y+16,oCollide) || place_meeting(x,y+16,o1Way) && sprite_index != sFezGroundtoJump && sprite_index != sFezJump) {
					sprite_index = sFezGroundtoJump;
					image_index = 0;
				}
				if (sprite_index = sFezGroundtoJump && image_index >= 3) {
					sprite_index = sFezJump
				}
				if (vsp < 3 && sprite_index != sFezGroundtoJump) {
					sprite_index = sFezJump
				} else if (sprite_index != sFezGroundtoJump) sprite_index = sFezFall;
			}
			else
			{
				if (round(hsp) = 0){
					if (sprite_index = sFezRoll) sprite_index = sFez;
					if (sprite_index == sFezWalk) {
						sprite_index = sFezWalkRun;
						image_index = 4;	
					}
					else if (sprite_index == sFezWalkRun) {
						image_index--;
						if (image_index <= 0) sprite_index = sFez;
					}
					//idle animation stuff, quite complicated.
					 else if (image_index > image_number - 1) {
						if (idleTimer > 500) {
							var randAnim = irandom_range(1,30);
							if (randAnim = 10) {
								sprite_index = sFezIdle1;
								idleTimer = 200;
							} else sprite_index = sFez;
						} else sprite_index =sFez
					}
				} else {
					if (sprite_index != sFezWalk && sprite_index != sFezWalkRun) {
						sprite_index = sFezWalkRun;	
						image_index = 0;
					}
					if (sprite_index == sFezWalkRun && image_index >= 4) sprite_index = sFezWalk;
					walkParticle(room,global.character);
				}
			}
		}
			break;
	
	}


	if (sprite_index = sFezWalk){
		image_speed = hsp/5;
	} else image_speed = 1;
	if (sprite_index = sFezBubblegum) image_speed = 0;
}

draw_self()