//this camera is coded AWFULLY!!! tons of spaghetti here.
//not gonna go through and recomment it because im gonna rewrite

global.transitionType = 0;
global.transitionTime = 0;

//if (false) instance_create_layer(x,y,layer,obj_CRT_controller);


//global.spawnX = false;
//global.spawnY = false;
	draw_set_font(fDebug);
view_enabled=true;
view_set_visible(0, true);
cam = view_camera[0];
follow = self;
if (variable_global_exists("character")) follow = global.character;
xTo = xstart;
yTo = ystart;
change = 0; //camera offset. used when on bubblegum.
//serts how fast/slow the camera drags out
drag = 10;
//various video modes. mostly made for fun. may not work very well..
enum res {
	standard,	
	composite,
	p240,
	p360,
	p1080,
	p4k,
	svga
}

step = 0;
lock = false;
//if true, the game's res will be set to the monitor res if fullscreened.
maxFulscreenRes = false;
//window_set_size(view_wport[0], view_hport[0]);
random_set_seed(global.globalTimer)
randomObj = irandom_range(0,74)

