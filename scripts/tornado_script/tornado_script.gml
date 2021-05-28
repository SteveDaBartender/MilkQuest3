// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function tornado_script(){
	roll = true;
	hsp += move * walksp;
	hsp *= 0.80
	if ((place_meeting(x,y+vsp,oCollide) || position_meeting(x,y+vsp,o1Way)) || image_index > 8) {
		state = states.normal;
		punch = 1;
		roll = false;
	}
	vsp *= 0.97;
	vsp -= 0.049;
	//vsp += grv/5;
}