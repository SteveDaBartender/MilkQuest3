function dChristmasIntro() {
	myTextbox = noone;
	icon[0] = sToppyIcon1;
	text[0] = "Ah, hello, Fezhead! And Merry Christmas to you!"
	icon[1] = sConeIcon1;
	text[1] = "christmas ended six days ago"
	icon[2] = sToppyIcon1;
	text[2] = "What? No it didn't."
	icon[3] = sToppyIcon1;
	text[3] = "Anyway, I have brought you here for a challenge with a milky surprise, since you three love it so much."
	icon[4] = sFezIcon1;
	text[4] = "\"Milky Surprise\" sounds off."
	icon[5] = sToppyIcon1;
	text[5] = "Shut up, Sigmund Freud."
	icon[6] = sToppyIcon1;
	text[6] = "The goal is simple: Reach the end with the golden biscuit. Once you do, you will be transported back here."
	icon[7] = sKidIcon1;
	text[7] = "That sounds like fun!"
	icon[8] = sToppyIcon1;
	text[8] = "It is indeed, I think... "
	icon[9] = sToppyIcon1;
	text[9] = "Oh! I forgot to mention! I left some of my Mecken security system down there. Their fatal abilities are disabled, though."
	icon[10] = sFezIcon1;
	text[10] = "Fatal what now?"
	icon[11] = sToppyIcon1;
	text[11] = "That's enough information you need, good luck in there!"
	global.intro = 1;
	global.character.image_speed = 1;
	save_game_data();
}
