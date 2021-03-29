theta += theta_speed;
if (theta >= 360) theta -= 360;
ox = x;
x = cx + lengthdir_x(r, theta);
y = cy + lengthdir_y(r, theta);

x = round(x);

while (place_meeting(x,y,global.character)){
	global.character.y-=1;
}
if (place_meeting(x,y-9,global.character) && !place_meeting(x,y-1,global.character)){
	global.character.y=y-1;
}
if (place_meeting(x,y-1,global.character)){
	global.character.x += x - ox;
}
