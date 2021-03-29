//get the id of the button
destination = rTitle;
stop = false;
switch (id) {
//from here the graphic and room is set
	case inst_43C2991F:
		destination = rFezTutorial;
		stop = true;
		sprite_index = sButtonStart;
		break;
	case inst_DOINGYOMOM:
		destination = rChristmasHub;
		stop = false;
		sprite_index = sButtonClear;
		break;
	case inst_MQ2Button:
		sprite_index = sMilkQuest2Button;
		break;
	case inst_TitleScreenButton:
		sprite_index = sButtonStart;
		break;
/*	case inst_39CA0E6D:
		destination = rFezCarnival;
		stop = true;
		sprite_index = sButtonStart;
		break;
	case inst_50E8D13C:
		destination = rKidTutorial;
		stop = true;
		sprite_index = sButtonStartCone;
		image_alpha = 1;
		break;
	case inst_EF633E5:
		destination = rHotdog;
		stop = true;
		image_alpha = 1;
		sprite_index = sButtonTemp;
		break;
*/
}