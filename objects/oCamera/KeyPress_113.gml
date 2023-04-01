if (global.showCollide) {
	global.showCollide = 0;
} else {
	global.showCollide = 1;
}
if (instance_exists(oSpikes)) oSpikes.visible = global.showCollide
if (instance_exists(oWall)) oWall.visible = global.showCollide
if (instance_exists(oSlope)) oSlope.visible = global.showCollide
if (instance_exists(o1Way)) o1Way.visible = global.showCollide