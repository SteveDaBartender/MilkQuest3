/// @description Insert description here
// You can write your code in this editor
draw_sprite(bg,0,210,-50);
if (char1anim = sConeheadCutsceneMQ2) {
	draw_sprite_ext(char1anim,char1Frame,400,280,-0.75,0.75,0,c_white,1);
} else draw_sprite(char1anim,char1Frame,310,235);
if (char2anim = sConeheadCutsceneMQ2) {
	draw_sprite_ext(char2anim,char2Frame,600,280,0.75,0.75,0,c_white,1);
} else draw_sprite_ext(char2anim,char2Frame,510,280,-1,1,0,c_white,1);
draw_rectangle_color(210,460,750,540,c_white,c_white,c_white,c_white,false);
draw_text_ext_color(220,470,ctxt,15,540,c_black,c_black,c_black,c_black,1);
draw_rectangle_color(0,0,210,540,c_black,c_black,c_black,c_black,false);
draw_rectangle_color(750,0,960,540,c_black,c_black,c_black,c_black,false);
draw_text(5,5,string(step));