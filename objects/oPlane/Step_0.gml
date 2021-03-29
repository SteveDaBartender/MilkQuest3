character = global.character; 
if (object_exists(character)){
	hsp = (character.x - x) / 4;
}


hsp *= 0.5;
x += hsp;