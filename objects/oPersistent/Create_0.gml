global.debug = false;
global.sv_cheats = 1;
global.godmode = 0;
global.finished = false;
global.head = false;
global.leg = false;
global.arm = false;
global.body = false;
global.besttime = 999999;
global.intro = 0;
	
//used for transitions
transitionTime = 0;
transitionType = 0;
//sets follower character
npcFollower = 0;
getInput();

//can be 0-2 for which save slot will be used. (maybe i will add more in the future.)
saveSlot = 0;

//internal ID used to figure out what version of the saving algorithm is used.
//will rpobably be used to reset savefiles between updates.
saveVersion = 2;

//creates a list of big milks gathered.
bigMilksCollected = ds_list_create();
repeat 50 {
	ds_list_add(bigMilksCollected,0);
}


global.volMus = 0.5;
global.volSFX = 0.5;

