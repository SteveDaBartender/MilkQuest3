baseVel = 1.3;
vel = 1.3;
//if the conveyer is scaled to the left, make the velocity match it.
if (image_xscale < 0) {
	vel = baseVel * -1;
} else vel = baseVel;