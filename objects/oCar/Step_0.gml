/// @description Insert description here
// You can write your code in this editor
getInput()
if (place_meeting(x,y-8,oPlayer) && key_up_press) {
	global.character.state = states.driving;
	instance_destroy(self);	
}