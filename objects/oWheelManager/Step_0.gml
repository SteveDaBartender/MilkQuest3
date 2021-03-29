var count = 0;
for (i = 0; i < carriageAmount; i += 1) {
	car = instance_create_layer(x,y,"Level",oWheelCarriage);
	count += 360 / carriageAmount;
	car.theta += count;
	car.r = radius;
}
instance_destroy(self);