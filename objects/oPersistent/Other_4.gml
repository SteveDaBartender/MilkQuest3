/// @description Insert description here
// You can write your code in this editor
switch (npcFollower) {
	case 1:
		if instance_exists(global.character) var npc = instance_create_layer(global.character.x,global.character.y,"Object",oFezhead);
			npc.npc = true;
			break;
	case 2:
		if instance_exists(global.character) var npc = instance_create_layer(global.character.x,global.character.y,"Object",oConehead);
			npc.npc = true;
			break;
	case 3:
		if instance_exists(global.character) var npc = instance_create_layer(global.character.x,global.character.y,"Object",oKidhead);
			npc.npc = true;
			break;
}

