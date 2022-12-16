/// @description joe mama
step++;
randomObj = global.globalTimer;
global.globalTimer++;


/*
if (true) { 
	scr_CRT_appy_to_surface(application_surface, view_camera[0]);
}	else draw_surface(application_surface, 0,0);

display_set_gui_size(window_get_width(), window_get_height());
display_set_gui_maximise();
*/
//alternate level select for demos
if (keyboard_check(ord("P")) && keyboard_check(ord("O"))) {
	change_room(rLevelSelect, 0, 0, true, 0);	
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

if (room = rChristmasHub && !instance_exists(oTextbox)) {
	yTo = 0;	
	drag = 50;
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

//Too Bad!

audio_group_set_gain(Music,global.volMus,0)
audio_group_set_gain(SFX,global.volSFX,0)

if (layer_exists("CBGFUNNY"))
{
	layer_x("CBGFUNNY",x/2.75);
	layer_y("CBGFUNNY",y/2.75);
}

if (layer_exists("TilesScroll"))
{
	tilemap_y(layer_tilemap_get_id(layer_get_id("TilesScroll")),y - 7725);
}
