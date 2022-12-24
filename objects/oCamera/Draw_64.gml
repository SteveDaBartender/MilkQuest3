char = global.character;
if (global.debug){
	ds_list_add(averageFps, fps_real);
	var hihomer = 0;
	var realFpsAvg = 0;
	var lenny = ds_list_size(averageFps);
	repeat(lenny) {
		realFpsAvg += ds_list_find_value(averageFps,hihomer);
		hihomer++;
	}
	ds_list_delete(averageFps,0);
	realFpsAvg /= lenny;
	
	draw_set_colour(c_white);
	draw_set_font(fDebug);
	draw_text(0,0 ,"Invincibility Frames:" + string(char.invincibleTimer));
	draw_text(0,20 ,"Health:" + string(char.hp));
	draw_text(0,40 ,"X Pos:" + string(char.x));
	draw_text(0,60 ,"Y Pos:" + string(char.y));
	draw_text(0,80 ,"Roll: " + string(char.roll));
	draw_text(0,100 ,"Horizontal Velocity:" + string(char.hsp));
	draw_text(0,120 ,"Vertical Velocity:" + string(char.vsp));
	draw_text(0,140 ,"Idle Timer:" + string(char.idleTimer));
	draw_text(0,220 ,"Jump Extendable:" + string(char.jumpExtendable));
	draw_text(0,200 ,"State:" + string(char.state));
	draw_text(0,240 ,"Acceleration:" + string(char.acl));
	draw_text(0,260 ,"Global Timer" +string(global.globalTimer));
	draw_text(0,280 ,"" +string(object_get_name(randomObj)));
	draw_text(0,300 ,"TransitionType:" +string(global.transitionType));
	draw_text(0,320 ,"TransitionTimer" +string(global.transitionTime));
	draw_text(0,160 ,"Anim. Frame:" + string(round(char.image_index)));
	draw_text(0,340, string(room_next(room)));
	draw_text(880,0 ,string(fps) + "Capped FPS");
	draw_text(800,20 ,string(realFpsAvg) + " Total FPS");
	draw_text(0,360,"Time Left: " + string(oPlayer.timeleft));
	draw_text(0,380,"Best Time: " + string(global.besttime));
	draw_text(0,400,"Intro: " + string(global.intro));
	draw_text(0,420,"Body: " + string(global.body));
	draw_text(0,440,"Head: " + string(global.head));
	draw_text(0,460,"Arms: " + string(global.arm));
	draw_text(0,480,"Legs: " + string(global.leg));
	draw_text(0,500,"Completion: " + string(global.finished));
	//draw_sprite_ext(mask_index,0,x,y,1,1,0,c_aqua,0.5);
	
}

if (layer_exists("MQ2BG")) {
	draw_rectangle_color(0,0,210,540,c_black,c_black,c_black,c_black,false);
	draw_rectangle_color(750,0,960,540,c_black,c_black,c_black,c_black,false);
}
