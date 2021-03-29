/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y,global.character)) {
	if (room = rSidewayValleyMQ2) global.cutsceneID = 2;
	if (room = rCuriousCarnivalMQ2) global.cutsceneID = 3;
	if (room = rFutureSpaceMQ2) global.cutsceneID = 4;
	change_room(rCutsceneMQ2,0,0,false,global.character);	
}