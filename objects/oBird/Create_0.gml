/// @description Insert description here
// You can write your code in this editor
flying = false;
vsp = 100;
image_blend =  make_colour_hsv(random(255), 128, 256);
if (irandom_range(-1,1)) image_xscale = 1;
else image_xscale = -1;
x = random_range(64,room_width-64)
y= random_range(64,room_height-64)
while (place_meeting(x,y,oWall)) {
	x = random_range(64,room_width-64)
	y= random_range(64,room_height-64)
}

flyingX = random_range(-4,-8)
flyingY = random_range(-0.14,-0.22)