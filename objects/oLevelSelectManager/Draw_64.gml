var system_name = environment_get_variable("USERNAME");


draw_set_font(fLevelSelect);
draw_set_color(validColor);
draw_text(lvlOffsetR1,5,"00 - Mountainside Peaks");
draw_text(lvlOffsetR1,25,"01 - Tutorial Caves");
draw_text(lvlOffsetR1,45,"02 - Verdant Valley");
draw_set_color(invalidColor);
draw_text(lvlOffsetR1,65,"03 - ???"); //farm
draw_set_color(validColor);
draw_text(lvlOffsetR1,85,"04 - Curious Carnival");
draw_text(lvlOffsetR1,105,"05 - HESHA Factory");
draw_set_color(invalidColor);
draw_text(lvlOffsetR1,125,"06 - ???"); //city
draw_text(lvlOffsetR1,145,"07 - ???"); //sweet caps
draw_set_color(validColor);
draw_text(lvlOffsetR1,165,"08 - Ruined Tower");
draw_set_color(invalidColor);
draw_text(lvlOffsetR1,185,"09 - ???"); //reef
draw_text(lvlOffsetR1,205,"10 - ???"); //last
draw_text(lvlOffsetR1,225,"11 - ???");
draw_text(lvlOffsetR1,245,"12 - Verdant Valley Part 2");
draw_text(lvlOffsetR1,265,"13 - ???");
draw_text(lvlOffsetR1,285,"14 - Curious Carnival Part 2");
draw_set_color(validColor);
draw_text(lvlOffsetR1,305,"15 - HESHA Factory Part 2 (Christmas Level)");
draw_set_color(invalidColor);
draw_text(lvlOffsetR2,5,"16 - ???");
draw_text(lvlOffsetR2,25,"17 - ???");
draw_set_color(validColor);
draw_text(lvlOffsetR2,45,"18 - Ruined Tower Part 2");
draw_set_color(invalidColor);
draw_text(lvlOffsetR2,65,"19 - ???");
draw_text(lvlOffsetR2,85,"20 - ???");
draw_set_color(validColor);
draw_text(lvlOffsetR2,105,"21 - The Boxlands");
draw_set_color(invalidColor);
draw_text(lvlOffsetR2,125,"22 - ???");
draw_text(lvlOffsetR2,145,"23 - ???");
draw_text(lvlOffsetR2,165,"24 - ???");
draw_text(lvlOffsetR2,185,"25 - ???");
draw_set_color(validColor);
draw_text(lvlOffsetR2,205,"26 - Bubblegum Surfing");
draw_set_color(invalidColor);
draw_text(lvlOffsetR2,225,"27 - ???"); //baced
draw_text(lvlOffsetR2,245,"28 - ???"); //train
draw_set_color(validColor);
draw_text(lvlOffsetR2,265,"29 - HESHA Wastewater"); //wastewater
draw_text(lvlOffsetR2,285,"30 - ???"); //normal pond


switch (char) {
	case oFezhead:
		draw_text(lvlOffsetR1,385, "Character: Fezhead");
		break;
	case oKidhead:
		draw_text(lvlOffsetR1,385, "Character: Kid");
		break;
	case oConehead:
		draw_text(lvlOffsetR1,385, "Character: Conehead");
		break;
	default: 
		draw_text(lvlOffsetR1,385, "Character: Unknown");
		break;
}
draw_text(lvlOffsetR1,405, "Entrance Number:" + string(entranceNum));
draw_text(lvlOffsetR1,425, "Key ID:" + string(keyboard_key));
draw_text(lvlOffsetR1,445, "Cursor ID:" + string(cursorPos));

draw_text(460,5,"Milk Quest 3 'Half & Half' - Super Cool Testing Level Select");
draw_text(460,25,"Build Date:  " + date_date_string(GM_build_date) + "  " +date_time_string(GM_build_date));
draw_text(800,25,"Version: " + string(GM_version));
draw_text(460,45,"Contact: milkquestgame@gmail.com");

draw_text(480,380,"Level Select Commands");
draw_text(480,400,"X: Change Starting Character");
draw_text(480,420,"Left/Right: Set Entrance ID");
draw_text(480,440,"Up/Down: Move Cursor");
draw_text(480,460,"Z: Select A Stage");
draw_text(480,460,"Typing Stage ID and pressing Z also works.");

draw_text(700,380,"Debug Commands (In-Game)");
draw_text(700,400,"F1: Return to Level Select");
draw_text(700,420,"F2: Show Collision");
draw_text(700,440,"F3: Debug Information");
draw_text(700,460,"F4: Fullscreen Toggle");
draw_text(700,480,"Numpad 7-9: Change Character");
draw_text(700,500,"WASD w/ F3: Noclip Move");
draw_text(700,520,"Esc:	Quit Game.");

if (cursorPos <= 15) {
	draw_sprite(sFezSelecter, cursorPos ,lvlOffsetR1-40,(cursorPos*20)-10)	
}
if (cursorPos > 15 && cursorPos <= 32) {
	draw_sprite(sFezSelecter, cursorPos ,lvlOffsetR2-40,((cursorPos - 16)*20-10))	
}

/*
draw_text(lvlOffsetR1,420,"Credits");
draw_text(lvlOffsetR1,440,"Code, Artwork, Design: Steve the Bartender");
draw_text(lvlOffsetR1,460,"Music & Design: Quackers T. Encheese");
draw_text(lvlOffsetR1,480,"Factory & Sky Tracks: dragon98999");
draw_text(lvlOffsetR1,500,"Musical Assistance: Turretbot");
draw_text(lvlOffsetR1,520,"Special Thanks: sup3p, FANTIC, James Cleland, Birb, Axelcuty, Doodle");
*/

/*
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
}*/
