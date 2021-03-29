/// @description Insert description here
// You can write your code in this editor

//this entire fuckin algorithm was found on r/gamemaker it draws a line that stops when it hits a wall
if (line) {//draw_line(eyeX,eyeY,patrolX,patrolY);
	var x1, y1, x2, y2;
	x1 = eyeX;
	y1 = eyeY; 
	x2 = patrolX;
	y2 = patrolY;
	if (image_xscale = 1) eyeX = x + 14;
	var qi = oCollide;
	var qp = false;
	var qn = true;
	var rr, rx, ry;
	rr = collision_line(x1, y1, x2, y2, qi, qp, qn);
	rx = x2;
	ry = y2;
	if (rr != noone) {
	    var p0 = 0;
	    var p1 = 1;
	    repeat (ceil(log2(point_distance(x1, y1, x2, y2))) + 1) {
	        var np = p0 + (p1 - p0) * 0.5;
	        var nx = x1 + (x2 - x1) * np;
	        var ny = y1 + (y2 - y1) * np;
	        var px = x1 + (x2 - x1) * p0;
	        var py = y1 + (y2 - y1) * p0;
	        var nr = collision_line(px, py, nx, ny, qi, qp, qn);
	        if (nr != noone) {
	            rr = nr;
	            rx = nx;
	            ry = ny;
	            p1 = np;
	        } else p0 = np;
	    }
	}
	draw_line_width(x1, y1, rx, ry,2);
}
//if health is low draw the mechen as red, otherwise make him white
if (hp = 2) draw_sprite_ext(sSnowMecken,0,x,y,image_xscale,1,0,c_white,1);
else draw_sprite_ext(sSnowMecken,0,x,y,image_xscale,1,0,c_red,1);


//draw_sprite(sBox,0,patrolX,patrolY);