/// @description Checks if object is on screen.
///@param object
function on_screen_check(argument0) {
	var cam = oCamera.cam;
	var x1 = camera_get_view_x(cam);
	var y1 = camera_get_view_y(cam);
	var x2 = x1 + camera_get_view_width(cam);
	var y2 = y1 + camera_get_view_height(cam);
	return (point_in_rectangle(argument0.x,argument0.y,x1-128,y1-128,x2+128,y2+128))



}
