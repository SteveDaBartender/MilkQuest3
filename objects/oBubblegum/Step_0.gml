/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y-8,oFezhead) && global.character.jumpExtendable > 1) {
	global.character.state = states.bubblegum;
	instance_destroy(self);	
}