/// @description Insert description here
// You can write your code in this editor
var boxTopX = 480 - 112
var boxTopY = 270 -128 -32
var levelName = "Verdent Valley"
var gotMilk1 = false;
var gotMilk2 = false;
var gotMilk3 = false;
var fezTime = 9999;
var coneTime = 9999;
var kidTime = 9999;
var txtClr = c_black;

if (levelPopup && place_meeting(x,y,oPlayer)) {
	draw_sprite(sLevelPopup,0,boxTopX,boxTopY);
	draw_set_font(fDialogue);
	draw_text_transformed_color(boxTopX+70,boxTopY+6,levelName,0.6,0.6,0,txtClr,txtClr,txtClr,txtClr,1);
	if (gotMilk1) draw_sprite_ext(s1Milk,0,boxTopX+83,boxTopY+23,1,1,0,c_white,1);
	else draw_sprite_ext(s1Milk,0,boxTopX+83,boxTopY+23,1,1,0,c_black,1);
	if (gotMilk2) draw_sprite_ext(s1Milk,0,boxTopX+123,boxTopY+23,1,1,0,c_white,1);
	else draw_sprite_ext(s1Milk,0,boxTopX+123,boxTopY+23,1,1,0,c_black,1);
	if (gotMilk3) draw_sprite_ext(s1Milk,0,boxTopX+163,boxTopY+23,1,1,0,c_white,1);
	else draw_sprite_ext(s1Milk,0,boxTopX+163,boxTopY+23,1,1,0,c_black,1);
}