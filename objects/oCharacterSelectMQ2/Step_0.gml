switch (animState) {
	case 0:
		image_index = 0;
		global.character = oFezheadMQ2
		break;
	case 1:
		image_index  += 0.5;
		if (image_index >= 11) animState = 3;
		break;
	case 2:
		image_index -= 0.5;
		if (image_index <= 0) animState = 0;
		break;
	case 3:
		image_index = 11;
		global.character = oConeheadMQ2
		break;
	
}