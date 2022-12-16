//oh god super ugly drawing text oh god
var selectorSprite = sKidSelecter;

draw_set_font(fLevelSelect);
draw_set_color(validColor);
draw_text(lvlOffsetR1,5,"00 - Title Screen");
draw_text(lvlOffsetR1,25,"01 - Christmas Hub");
draw_text(lvlOffsetR1,45,"02 - HESHA Basement");
draw_text(lvlOffsetR1,65,"03 - Tutorial");

switch (char) {
	case oFezhead:
		selectorSprite = sFezSelecter
		draw_text(lvlOffsetR1,385, "Character: Fezhead");
		break;
	case oKidhead:
		selectorSprite = sKidSelecter
		draw_text(lvlOffsetR1,385, "Character: Kid");
		break;
	case oConehead:
		selectorSprite = sConeSelecter
		draw_text(lvlOffsetR1,385, "Character: Conehead");
		break;
	default: 
		draw_text(lvlOffsetR1,385, "Character: Unknown");
		break;
}


switch (teammate) {
	case "Fezhead":
		draw_text(lvlOffsetR1,365, "Partner: Fezhead");
		break;
	case "Kidhead":
		draw_text(lvlOffsetR1,365, "Partner: Kid");
		break;
	case "Conehead":
		draw_text(lvlOffsetR1,365, "Partner: Conehead");
		break;
	default: 
		draw_text(lvlOffsetR1,365, "Partner: None");
		break;
}

draw_text(lvlOffsetR1,405, "Entrance Number:" + string(entranceNum));
draw_text(lvlOffsetR1,425, "Key ID:" + string(keyboard_key));
draw_text(lvlOffsetR1,445, "Cursor ID:" + string(cursorPos));

draw_text(460,5,"Milk Quest: Milk And Cookies - Entirely Useless Level Select");
draw_text(460,25,"Build Date:  " + date_date_string(GM_build_date) + "  " +date_time_string(GM_build_date));
draw_text(800,25,"Version: " + string(GM_version));
draw_text(460,45,"Contact: milkquestgame@gmail.com");

draw_text(480,380,"Level Select Commands");
draw_text(480,400,"X: Change Starting Character");
draw_text(480,420,"Left/Right: Set Entrance ID");
draw_text(480,440,"Up/Down: Move Cursor");
draw_text(480,460,"Z: Select A Stage");
//draw_text(480,480,"Typing Stage ID and pressing\nZ also works.");   it doesnt yet lol

draw_text(700,380,"Debug Commands (In-Game)");
draw_text(700,400,"F1: Return to Level Select");
draw_text(700,420,"F2: Show Collision");
draw_text(700,440,"F3: Debug Information");
draw_text(700,460,"F4: Fullscreen Toggle");
draw_text(700,480,"Numpad 7-9: Change Character");
draw_text(700,500,"WASD w/ F3: Noclip Move");
draw_text(700,520,"Esc:	Quit Game.");

if (cursorPos <= 15) {
	draw_sprite(selectorSprite, cursorPos ,lvlOffsetR1-40,(cursorPos*20)-10)	
}
if (cursorPos > 15 && cursorPos <= 32) {
	draw_sprite(selectorSprite, cursorPos ,lvlOffsetR2-40,((cursorPos - 16)*20-10))	
}

//credits will be moved to their own section soon.


draw_text(lvlOffsetR1,420,"Credits");
draw_text(lvlOffsetR1,440,"Code, Artwork, Design: Steve the Bartender");
draw_text(lvlOffsetR1,460,"Music & Design: Caramel");
draw_text(lvlOffsetR1,520,"Special Thanks: sup3p, FANTIC, James Cleland, Birb, Axelcuty, Doodle");


