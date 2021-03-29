// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function dSaveTemp(){
	switch global.character {
		case oFezhead:
			icon[0] = sFezIcon1;
			text[0] = "This is where I can save and load my game... I don't know how to use it though."
			icon[1] = sFezIcon2;
			text[1] = "What does 'save' even mean?"
			break;
		case oConehead:
			icon[0] = sCone;
			text[0] = "this is fezhead's 'magical' save gear..."
			icon[1] = sCone;
			text[1] = "i dunno what it's used for, it's been broken ever since he bought it for 10 cents at a flea market."
			break;
		case oKidhead:
			icon[0] = sKid;
			text[0] = "Aw yeah! This is one of those dimensional control devices! How did Fezguy get one of these?"
			icon[1] = sKid;
			text[1] = "I always wanted one of these, but it seems this one is missing the batteries."
			break;
	}
}