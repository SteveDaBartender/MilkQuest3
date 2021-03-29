hsp = 0; // horizontal movement
vsp = 0; // vertical movement
grv = 0.6; // gravity
walksp = 2; //walk speed
roll = false;
lock = false;
cloneCheat = false;
collision = [oWall,oBox];
if (global.spawnConehead = true) {
	instance_create_layer(x,y-32,"Object",oConehead2P)
}


punch = false;
alpha = 0;