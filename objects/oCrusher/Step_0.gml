
if (yMin < y) {
	vsp = upSpeed;	
}
if (yMax > y) {
	vsp = downSpeed;	
} 
timer++;

y += vsp;
//Moves player up to top if inside of Crusher.
while (place_meeting(x,y,global.character)){
	global.character.y-=1;
}//If player is right above Crusher, allign character's Y with crusher.
if (place_meeting(x,y-9,global.character) && !place_meeting(x,y-1,global.character)){
	global.character.y=y-1;
}