/// @description joe mama
step++;
randomObj = global.globalTimer;
global.globalTimer++;
//alternate level select for demos
if (keyboard_check(ord("P")) && keyboard_check(ord("O"))) {
	change_room(rLevelSelect, 0, 0, true, 0);	
}
if (keyboard_key = 188 && room_exists(room_next(room))) {
	room_goto_next();
	audio_stop_all();
	global.character = oFezhead;
}
if (keyboard_key = 190 && room_exists(room_previous(room))) {
	room_goto_previous();
	audio_stop_all();
	global.character = oFezhead;
}

//buncha different resolutions the game can run in
switch global.resolution {
	case res.standard:
		view_wport[0]=960;
		view_hport[0]=540;	
		break;
	case res.composite:
		view_hport[0]=480;
		view_wport[0]=640;
		drag = 5;
		break;
	case res.p240:
		view_hport[0]=240;
		view_wport[0]=320;
		drag = 2.5;
		break;
	case res.p360:
		view_hport[0]=360;
		view_wport[0]=640;
		drag = 3.5;
		break;
	case res.p1080:
		view_hport[0]=1080;
		view_wport[0]=1920;
		drag = 3.5;
		break;
	case res.p4k:
		view_wport[0]=3840;
		view_hport[0]=2160;
		drag = 3.5;
		break;
}

//analog TV mode
if (analog) {
	gpu_set_texfilter(true);
	
} else gpu_set_texfilter(false);

if (window_get_fullscreen() && maxFulscreenRes && false) {
	view_hport[0] = display_get_height();
	view_wport[0] = display_get_width();
}

surface_resize(application_surface,view_wport[0],view_hport[0])
camera_set_view_size(cam, view_wport[0], view_hport[0]);
view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;

//check if object exists, if yes, track it.
if (instance_exists(follow))
{
	xTo = follow.x + change;
	yTo = follow.y - 60;
}

//move the camera object
x += (xTo - x) / drag;
y += (yTo - y) / drag;

if (instance_exists(oCameraLock)){
	if (y > oCameraLock.y && !lock) {
		lock = true;
	}
	if (lock && y -128 < oCameraLock.y) {
		y = oCameraLock.y + 128;
	}
}

//stops camera from going off the room
x = clamp(x,view_w_half,room_width-view_w_half);
y = clamp(y,view_h_half,room_height-view_h_half);

//set the camera to the object
camera_set_view_pos(cam,x-view_w_half,y-view_h_half);

if (layer_exists("L2"))
{
	layer_x("L2",x/1.5);
	layer_y("L2",y-75);
}
if (layer_exists("L3"))
{
	layer_x("L3",x/1.8);
	layer_y("L3",y-425);
	image_yscale = -1;
}
if (layer_exists("Hills"))
{
	layer_x("Hills",x/3);
}
if (layer_exists("L1"))
{
	layer_x("L1",x/1.8);
	layer_y("L1",y-50);
}
if (layer_exists("L4"))
{
	layer_x("L4",x/2);
	layer_y("L4",y-50);
}


//water in the valley level
if (layer_exists("lValleyWater"))
{
	layer_x("lValleyWater",x/15);
	layer_y("lValleyWater",room_height - y/10 - 1850);
}
//Grass in the valley level
if (layer_exists("lValleyGrass"))
{
	layer_x("lValleyGrass",x/12);
	layer_y("lValleyGrass",room_height - y/10-350);
}
//mountain 1 in the valley level
if (layer_exists("lValleyMnt1"))
{
	layer_x("lValleyMnt1",x/8);
	layer_y("lValleyMnt1",room_height - y/10-800);
}
//mountain 2 in the valley level
if (layer_exists("lValleyMnt2"))
{
	layer_x("lValleyMnt2",x/5);
	layer_y("lValleyMnt2",room_height - y/10-1000);
}

//water in the hub background
if (layer_exists("lHubWater"))
{
	layer_x("lHubWater",x/5 +  step/4);
	layer_y("lHubWater",y+100);
}
if (layer_exists("CL1"))
{
	layer_x("CL1",x/1.6);
	layer_y("CL1",y-200);
}
if (layer_exists("CL2"))
{
	layer_x("CL2",x/1.75);
	layer_y("CL2",y-200);
}
if (layer_exists("CBGFUNNY"))
{
	layer_x("CBGFUNNY",x/2.75);
	layer_y("CBGFUNNY",y/2.75);
}


//ALL MQ2 backgrounds
if (layer_exists("MQ2BG"))
{
	layer_x("MQ2BG",x + 400);
	layer_y("MQ2BG",y + 400);
}

if (layer_exists("TowerBG"))
{
	layer_x("TowerBG",x+480);
	layer_y("TowerBG",y+270);
}

