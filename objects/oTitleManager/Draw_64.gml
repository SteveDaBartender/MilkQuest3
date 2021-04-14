/// @description Insert description here
// You can write your code in this editor
var rowYPos = 200;
draw_set_color(invalidColor);
draw_text_transformed(rowXPos,rowYPos,"Start Game",1,1,0);
draw_set_color(validColor);
draw_text_transformed(rowXPos,rowYPos+30,"Level Select",1,1,0);
draw_set_color(invalidColor);
draw_text_transformed(rowXPos,rowYPos+60,"Time Trials",1,1,0);
draw_text_transformed(rowXPos,rowYPos+90,"Extras",1,1,0);
draw_text_transformed(rowXPos,rowYPos+120,"Settings",1,1,0);
draw_text_transformed(rowXPos,rowYPos+150,"Credits",1,1,0);
draw_set_color(validColor);
draw_text_transformed(rowXPos,rowYPos+180,"Milk Quest 2",1,1,0);
draw_text_transformed(rowXPos,rowYPos+250,"Exit",1,1,0);

draw_text_transformed(5,516,"Build Version: " +string(GM_version),0.5,0.5,0);

if (cursorPos != 7){
	draw_sprite(sFezSelecter, global.globalTimer/50 , rowXPos - 40 ,rowYPos - 13 + 30 * cursorPos);	
} else draw_sprite(sFezSelecter, global.globalTimer/50 , rowXPos - 40 ,rowYPos - 13 + 32 * 8);	