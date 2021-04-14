/// @description Insert description here
// You can write your code in this editor
var mrandom = irandom_range(0,100);
if (round(xv) == 0) {
	switch (mrandom) {
		case 4:
			xv = -0.8;
			break;
		case 1:
			xv = 0.8;
			break;
	}
}

xv *= 0.985;
x = (2*x+xv)/2;

//tbh this could 100% be done through GMS built in layer properties
//i was just really fucking dumb when i wrote it
if (type = 0) {
	grassx += 40;
	layer_x("Grass",grassx);
	layer_x("Water",grassx/10);
	if (layer_exists("Grass2"))
	{
		layer_x("Grass2",grassx/15);
	}
	if (layer_exists("TitleMountain"))
	{
		layer_x("TitleMountain",grassx/30);
	}
} else if (type = 1) sprite_index = sKidSkateboard;
