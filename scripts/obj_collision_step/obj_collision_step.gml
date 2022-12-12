function obj_collision_step(){
	hsp *= frict;
	vsp += grv;
	lastVsp=vsp;
	lastHsp=hsp;
	obj_collision_check();
	y+=vsp;
	x+=hsp;
}