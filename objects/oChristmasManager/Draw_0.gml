/// @description Insert description here
// You can write your code in this editor
var system_name = "MQMC"
draw_set_font(fDebug)
draw_text_color(130,155,"YOUR CODE: "+generate_mqmc_code(),c_green,c_green,c_green,c_green,1);
global.besttime = clamp(global.besttime,0,3599);
if (global.body) draw_text_color(130,175,"BEST TIME: "+time_from_frame(global.besttime*60),c_green,c_green,c_green,c_green,1);
draw_sprite(sToppyStand, 0 , 480, 447);
draw_sprite(sToppyLegs, global.leg , 480, 429);
draw_sprite(sToppyBody, global.body , 486, 394);
draw_sprite(sToppyArms, global.arm , 500, 394);
draw_sprite(sToppyHead, global.head , 480, 343);