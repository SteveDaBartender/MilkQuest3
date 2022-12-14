function sh_player_hp (args) {
	global.character.hp = round(clamp(args[1],0,9999))
	return "Health set to " + string(global.character.hp) + ".";
}