///@param saveslot
function load_game_data(argument0){
	ini_open("mqmcsave"+".ini");
	
	var _defaultSave = "{\"controlsKeyboard\":[37.0,39.0,38.0,40.0,90.0,88.0,67.0,13.0,65.0,83.0,16.0],\"stickAnalog\":true,\"controlsController\":[32783.0,32784.0,32781.0,32782.0,32769.0,32771.0,32776.0,32778.0,32773.0,32774.0,32775.0],\"tapItem\":true,\"tapCrouch\":true,\"stickEnable\":true,\"stickThreshold\":0.59999999999999998};";
	global.intro = ini_read_real("savedata","intro",0)
	global.head = ini_read_real("savedata","head",0)
	global.arm = ini_read_real("savedata","arms",0)
	global.leg = ini_read_real("savedata","legs",0)
	global.body = ini_read_real("savedata","body",0)
	global.finished = ini_read_real("savedata","complete",0)
	if (os_browser = browser_not_a_browser) {
		var _string = string_replace_all(ini_read_string("persistent","controls",_defaultSave),"~","\"")
		global.controlStruct = json_parse(_string);
	}
	global.volSFX = ini_read_real("persistent","sfxvolume",0.5)
	global.volMus = ini_read_real("persistent","musicvolume",0.5)
	global.besttime = ini_read_real("persistent","besttime",215999)

	show_debug_message("loaded game!");
	ini_close();
}