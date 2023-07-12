global.gameLock = true;
getInput();
if (fade) {
	if (y < oCamera.y + 200) {
		y += yv;
		yv += 1;
	} else instance_destroy();
} else
if((key_space_press && charCount >= string_length(text[page])) || (key_start)) {
	//if the next page is less than the total text, increase it, otherwise end.
	if(page+1 < array_length_1d(text)){
		page += 1;
		charCount = 0;
	} else {
		y = oCamera.y + 45;
		yv = -3;
		fade = true;
		global.gameLock = false;
	}
}
if (key_down && charCount < string_length(text[page])) {
	charCount = 999	
}
