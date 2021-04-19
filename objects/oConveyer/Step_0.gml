//if player is above add on velocity to player velocity
//if the player is either conehead or rolling, redice the effect of converyer
instance_place_list(x,y-1,oPlayer,list, true);
var listPos = 0;

while (listPos < ds_list_size(list) && !ds_list_empty(list)) {
	var object = ds_list_find_value(list, listPos);
	show_debug_message(string(list));
	if(object.roll) {
		object.hsp += vel/1.95;	
	} else if (object = oConehead) object.hsp += vel/2.2;	
	else object.hsp += vel;	
	listPos++;
}

ds_list_clear(list);
/*if (place_meeting(x,y,oPlayer)) {
	oPlayer.y -= 1;
}*/