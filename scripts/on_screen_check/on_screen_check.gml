/// @description Checks if object is on screen.
///@param object
function on_screen_check(argument0) {
	var cam = oCamera.cam;
	var x1 = camera_get_view_x(cam)-128;
	var y1 = camera_get_view_y(cam)-128;
	var x2 = x1 + 960 + 128;
	var y2 = y1 + 540 + 128;
	return (point_in_rectangle(argument0.x,argument0.y,x1,y1,x2,y2))



}
