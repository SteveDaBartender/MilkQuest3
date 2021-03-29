//sliding up animation on the first dailogue.
if (page == 0 && y > oCamera.y + 100) {
	yv *= 0.9;
	y += yv
} else if (!fade) {
x = oCamera.x - 200;
y = oCamera.y + 100;
}
//draw the text box

draw_sprite(sTextGrad,0, x+200, y + 100);
draw_sprite(sTextbox,0, x+200, y);
draw_sprite(icon[page],0, x-40, y+12);
//draw the text

//adds one to the amount of characters drawn
charCount += textSpeed;
draw_set_font(fDebug);
//sets the string to be printed from the text array, and the length from charCount
textFinal = string_copy(text[page], 1, charCount);
draw_text_ext(x + offset,y+20,textFinal, stringHeight, boxWidth - 200);
//play sound if the character count is not beyond the string length, and char is even..
if (charCount - 1 < string_length(textFinal) && charCount % 2 == 0) {
	audio_play_sound(sFezTalk, 3, false);
}
