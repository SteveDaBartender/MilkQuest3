/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(sCannon,0,x,y,1,1,angle - 90,c_white,1);
draw_sprite(sCannonHold,0,x,y);
var drawx = x;
var drawy = y;
var distance = 10;
var radius = 5;
if (active) {
	repeat(6){
		distance += 2;
		radius -= 0.5;
		drawy += lengthdir_y(distance + 15,angle);
		drawx += lengthdir_x(distance + 15,angle);
		draw_circle_color(drawx,drawy,radius,c_white,c_white,false);
	}
}