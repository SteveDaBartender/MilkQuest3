if (!global.gameLock) {
if (place_meeting(x,y,oCollide)) instance_destroy(self); //if touching wall, destory

//if touching the character, change their acceleration
//and speed based on the snowball's angle
if (place_meeting(x,y,global.character)) { 
	global.character.hsp = lengthdir_x(15,direction);
	global.character.acl = lengthdir_x(2,direction);
	if (global.character == oConehead) global.character.acl /= 2
	instance_destroy(self);
}
//changes the default direction to one of the player
if (direction = 90) direction = point_direction(x,y,goalX,goalY);

//move the snowball based on angle
x+=lengthdir_x(10,direction);
y+=lengthdir_y(10,direction);

//this below was some shitty code i tired to make the snowball move wackily but it doesnt work lmao

//speed=0.1;    
//xv = speed;
//x = max_distance*xv;
//if xv >= pi {xv = pi};
//yv = sin(x/35);
//y += yv * 10;
/*
//goalY - y
count += 0.1;
var t = 30;
xv = (goalX - x)/t;
yv = sin(count)*15 + lengthdir_y(10,direction) * 4;
x += xv;
y += yv;
if (count > 2) count = 2; 
*/
}