/// @description Insert description here
// You can write your code in this editor
//draws the special code of the dmeo
//it begins with -, then has the user's OS name encrypted in base64, then a -, followed by the length of characters in their OS name, then !, and finally a number based on the game's progress.
var system_name = environment_get_variable("USERNAME");
draw_text_color(130,155,string(base64_encode(system_name)) + "-" + string(string_length(system_name))+"!"+ string(global.body*6) + string(global.arm*3) + string(global.leg*2) + string(global.head*9), c_green, c_green, c_green, c_green, 1);
draw_sprite(sToppyStand, 0 , 480, 447);
draw_sprite(sToppyLegs, global.leg , 480, 429);
draw_sprite(sToppyBody, global.body , 486, 394);
draw_sprite(sToppyArms, global.arm , 500, 394);
draw_sprite(sToppyHead, global.head , 480, 343);