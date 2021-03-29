timer++;
if (timer > 24 || place_meeting(x,y,oCollide)) instance_destroy(self);
x += image_xscale * 5;
if (timer > 20) image_alpha -= 0.2;