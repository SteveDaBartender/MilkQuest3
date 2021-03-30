/// @description Insert description here
// You can write your code in this editor

//set a cutscene based on the destination and go to cutscene room.
if (destination = rSidewayValleyMQ2) global.cutsceneID = 1
if (destination = rCuriousCarnivalMQ2) global.cutsceneID = 2
if (destination = rFutureSpaceMQ2) global.cutsceneID = 3
change_room(rCutsceneMQ2,0,0,true,global.character);