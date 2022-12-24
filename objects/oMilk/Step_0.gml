if ((pt || global.milkGrabMode = true) && !collected){
	global.milk++;
	audio_play_sound(sMilk,1,false);
	collected = true;
	angle = 90;
	if (sign(global.character.hsp) = -1)  angle = 180;
	x = x + lengthdir_x(20,angle);
	y = y + lengthdir_y(20,angle);
} 
if (collected) {
	//set the angle so that it will gradtually turn towards hud
	angle -= angle_difference(angle,point_direction(x,y, milkHudX + camera_get_view_x(cam), milkHudY + camera_get_view_y(cam))) / 10;	
	if (angle > 360) angle = 0;
	//image_angle = angle;
	
	//make me small again 
	if (image_yscale < 0.15) {
		image_yscale -= 0.005;
		image_xscale -= 0.005;
	}
	//increase speed
	moveSpeed = clamp(moveSpeed+0.33,-13,13)
	//move it
	x = x + lengthdir_x(moveSpeed,angle);
	y = y + lengthdir_y(moveSpeed,angle);
	//OH MY GOD WHAT IS THAT WAHT IS THAT WHAT IS THAT
	//IT HURTS MY EYES AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
if (collision_rectangle(milkHudX + camera_get_view_x(cam), milkHudY + camera_get_view_y(cam), milkHudX + camera_get_view_x(cam) + 50, milkHudY + camera_get_view_y(cam) +100,oMilk,false,false)) {
		instance_destroy(self)	
	}
}
