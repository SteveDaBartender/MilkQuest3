/// @description Insert description here
// You can write your code in this editor
if (respawn) {
	x = oldX;
	y = oldY;
	lock = true;
	vsp = 0;
	respawn = false;
}

if (place_meeting(x,y-10,global.character)) {
	lock = false;	
}
if (!lock && (room = rSidewayValleyMQ2 || room = rFutureSpaceMQ2)) {
	if (place_meeting(x,y-1,global.character)) {
	 y += 3;	
	}
} else if (!lock) {
	vsp = clamp(vsp + 0.1,0,4)
	y += vsp;	
}

var cycle = 0;
while (place_meeting(x,y-2,global.character) && global.character.vsp >= 0 && !place_meeting(x,y,oWall)){
	show_debug_message("vsp check 1");
	cycle++;
	global.character.y -= sign(global.character.vsp+0.1);
	if (cycle > 250 || place_meeting(global.character.x,global.character.y+1,oWall)) {
		break;
	}
	show_debug_message("vsp check 1 end");
}
//moves player up
if (place_meeting(x,y-9,global.character) && global.character.vsp >= 0 && !place_meeting(x,y,oWall) && !place_meeting(x,y-1,global.character)){
	show_debug_message("vsp check 2 ");
	global.character.y=y-1;
	show_debug_message("vsp check 2 end");
}