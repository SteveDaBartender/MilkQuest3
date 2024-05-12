global.debug = false;
global.sv_cheats = false;
global.godmode = 0;
global.finished = false;
global.head = false;
global.leg = false;
global.arm = false;
global.body = false;
global.besttime = 999999;
global.intro = 0;
global.controlStruct = {
	controlsKeyboard : [vk_left,vk_right,vk_up,vk_down,ord("Z"),ord("X"),ord("C"),vk_enter,ord("A"),ord("S"),vk_shift],
	controlsController : [gp_padl,gp_padr,gp_padu,gp_padd,gp_face1,gp_face3,gp_shoulderrb,gp_start,gp_shoulderl,gp_shoulderr,gp_shoulderlb],
	stickEnable : true,
	stickAnalog : true,
	stickThreshold : 0.6,
	tapItem : true,
	tapCrouch : true
}
//used for transitions
transitionTime = 0;
transitionType = 0;
//sets follower character
npcFollower = 0;
gamepadNum = 0;
getInput();

//can be 0-2 for which save slot will be used. (maybe i will add more in the future.)
saveSlot = 0;

//internal ID used to figure out what version of the saving algorithm is used.
//will rpobably be used to reset savefiles between updates.
saveVersion = 3;

//creates a list of big milks gathered.
bigMilksCollected = ds_list_create();
repeat 50 {
	ds_list_add(bigMilksCollected,0);
}


global.volMus = 0.5;
global.volSFX = 0.5;
load_game_data();
audio_group_set_gain(Music,global.volMus,0);
audio_group_set_gain(SFX,global.volSFX,0);
