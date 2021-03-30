/// @description Insert description here
// You can write your code in this editor

//make camera focus on self
oCamera.follow = self;

//if player is too far up make their vertical movement null
if (global.character.y < y - 300) global.character.y -= global.character.vsp;
//kill character when they fall below screen
if (global.character.y > y + 300) {
	global.character.hp = 0;
	damage_character();
}
//move object
y -= yScrollSpeed;
x = global.character.x;