/// @description Insert description here
// You can write your code in this editor
var system_name = "MQMC"
draw_set_font(fDebug)
draw_text_color(130,155,"YOUR CODE: "+string(system_name) + string(global.body*6) + string(global.arm*3) + string(global.leg*2) + string(global.head*9)+"DNF", c_green, c_green, c_green, c_green, 1);
draw_sprite(sToppyStand, 0 , 480, 447);
draw_sprite(sToppyLegs, global.leg , 480, 429);
draw_sprite(sToppyBody, global.body , 486, 394);
draw_sprite(sToppyArms, global.arm , 500, 394);
draw_sprite(sToppyHead, global.head , 480, 343);