//
if (global.character.hsp != 0) lock = false;

//make camera focus on self
oCamera.follow = self;

//if player is too far up make their vertical movement null
if (global.character.y < oCamera.y - 400) {
	global.character.y -= global.character.vsp;
	audio_play_sound(sAntKill,0,false);
}
//kill character when they fall below screen
if (global.character.y > y + 350) {
	global.character.hp = 0;
	damage_character();
}
//move object
if (!lock) y -= yScrollSpeed;
x = global.character.x;


//these leftovers are mine
//global.character.y < y - 300 && !