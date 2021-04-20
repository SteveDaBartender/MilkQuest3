
if (yMin < y) {
	vsp = upSpeed;	
}
if (yMax > y) {
	vsp = downSpeed;	
} 
timer++;

y += vsp;

instance_place_list(x,y-5,oPlayer,list, true);
var listPos = 0;

while (listPos < ds_list_size(list) && !ds_list_empty(list)) {
	var object = ds_list_find_value(list, listPos);
	while (place_meeting(x,y,object)){
		object.y-=1;
	}//If player is right above Crusher, allign character's Y with crusher.
	if (place_meeting(x,y-9,object) && !place_meeting(x,y-1,object)){
		object.y=y-1;
	}
	listPos++;
}

ds_list_clear(list);

//Moves player up to top if inside of Crusher.
