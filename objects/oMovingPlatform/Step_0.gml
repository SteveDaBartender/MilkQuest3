/// @description Insert description here
// You can write your code in this editor
if (!locked) {
	theta += theta_speed;
	if (theta >= 360) theta -= 360;
	ox = x;
	if (moveX) x = cx + lengthdir_x(r, theta);
	if (moveY) y = cy + lengthdir_y(r, theta);
}


x = round(x);
	var cycle = 0;
//moves player out of platform
while (place_meeting(x,y-1,global.character) && global.character.vsp >= 0){
	show_debug_message("vsp check 1");
	cycle++;
	global.character.y -= sign(global.character.vsp+0.1);
	if (cycle > 250 || place_meeting(global.character.x,global.character.y+1,oWall)) {
		break;
	}
	show_debug_message("vsp check 1 end");
}
//moves player up
if (place_meeting(x,y-9,global.character) && global.character.vsp >= 0 && !place_meeting(x,y-1,global.character)){
	show_debug_message("vsp check 2 ");
	global.character.y=y-1;
	show_debug_message("vsp check 2 end");
}
//moves player horizontally
if (place_meeting(x,y-1,global.character) && moveX){
	show_debug_message("hsp check 1");
	global.character.x += x - ox;
	show_debug_message("hsp check 1 end");
}

if (place_meeting(x,y-5,global.character)) locked = false;
