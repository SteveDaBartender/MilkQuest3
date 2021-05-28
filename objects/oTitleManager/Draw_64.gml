/// @description Insert description here
// You can write your code in this editor
var descX = 10;
var descY = 500;
switch (cursorPos) {
	case 0:
		draw_text_ext_transformed(descX,descY-10,"Begin your adventure to acquire your Milk back from your evil look-a-like! (NOT IMPLEMENTED)",30,700,1,1,0);
		break;
	case 1:
		draw_text_ext_transformed(descX,descY,"Select any level in the game to play!",30,700,1,1,0);
		break;
	case 2:
		draw_text_ext_transformed(descX,descY,"Compete for the best time in all the stages! (NOT IMPLEMENTED)",30,700,1,1,0);
		break;
	case 3:
		draw_text_ext_transformed(descX,descY,"Look at progress, achievements, and the like! (NOT IMPLEMENTED) ",30,700,1,1,0);
		break;
	case 4:
		draw_text_ext_transformed(descX,descY,"Tweak the game to your liking! (NOT IMPLEMENTED)",30,700,1,1,0);
		break;
	case 5:
		draw_text_ext_transformed(descX,descY,"See the people who helped made this game! (NOT IMPLEMENTED)",30,700,1,1,0);
		break;
	case 6:
		draw_text_ext_transformed(descX,descY,"Take a visit to the past with an updated version of Milk Quest 2!",30,700,1,1,0);
		break;
	case 7:
		draw_text_ext_transformed(descX,descY,"Milk Quest? I Milk Quit.",30,700,1,1,0);
		break;
}


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

draw_text_transformed(5,10,"Build Version: " +string(GM_version),0.5,0.5,0);



if (cursorPos != 7){
	draw_sprite(sFezSelecter, global.globalTimer/50 , rowXPos - 40 ,rowYPos - 13 + 30 * cursorPos);	
} else draw_sprite(sFezSelecter, global.globalTimer/50 , rowXPos - 40 ,rowYPos - 13 + 32 * 8);	