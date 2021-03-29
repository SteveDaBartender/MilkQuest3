instance_destroy(oMilk);
global.xSpawn = 0;
global.ySpawn = 0;
global.levelTimer = 0;
global.character = self;
global.spawnConehead = false;
char = oFezhead;
teammate = "None";
camera = instance_create_layer(x,y,"Object",oCamera);

invalidColor = c_grey;
validColor = c_white;

cursorPos = 0;
cool = 0;

lvlOffsetR1 = 45;
lvlOffsetR2 = 245;
lvlOffsetR3 = 305;

entranceNum = "Not Implemented";