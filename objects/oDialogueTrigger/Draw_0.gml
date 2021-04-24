/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y,global.character) && complete) {
	draw_sprite(sSpeechBubble,0,x+32,y-25-sin(global.globalTimer/50)*10); 
}