/// @param script
function call_textbox(argument0) {
	if (!instance_exists(oTextbox)) {
		myTextbox = instance_create_layer(x,y, "Text", oTextbox);
		myTextbox.script = argument0;
		audio_play_sound(sBreak,1,false);
	}  else  if (myTextbox != noone) {
		instance_destroy(myTextbox);
		myTextbox = noone;
	}


}
