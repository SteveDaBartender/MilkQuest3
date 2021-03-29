/// @description Insert description here
// You can write your code in this editor
oCamera.follow = self;

if (global.character.y < y - 300) global.character.y -= global.character.vsp;
if (global.character.y > y + 300) {
	global.character.hp = 0;
	damage_character();
}
y -= yScrollSpeed;
x = global.character.x;