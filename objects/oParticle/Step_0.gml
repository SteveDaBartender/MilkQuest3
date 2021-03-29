/// @description Insert description here
// You can write your code in this editor
x += xv * random_range(0.8,1.2);
y += yv + grav;
image_angle += xv;
yv = yv*0.9;
image_alpha -= fade*.01;
if (image_alpha <= 0){
	instance_destroy(self)	
}