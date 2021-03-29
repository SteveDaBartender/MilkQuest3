timer++;
//if the timer is over the delay, make a box
if (timer >= delay) {
	if (!place_meeting(x,y,oBoxGravity)) instance_create_layer(x,y,"Object",oBoxGravity);
	timer = 0;
}
//unused right now
if (offscreen && on_screen_check(self)){
	if (!place_meeting(x,y,oBoxGravity)) instance_create_layer(x,y,"Object",oBoxGravity);
}