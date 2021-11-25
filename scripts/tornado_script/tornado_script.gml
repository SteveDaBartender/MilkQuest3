// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function tornado_script(){
	roll = true;
	hsp += move * walksp;
	hsp *= 0.80
	tornadoTimer++;
	if ((place_meeting(x,y+vsp,oCollide) || position_meeting(x,y+vsp,o1Way)) || tornadoTimer >= 20) {
		state = states.normal;
		punch = 1;
		roll = false;
		show_debug_message("Torndao Kick Length: " + string(tornadoTimer));
	}
	vsp *= 0.97;
	vsp -= 0.049;
	//vsp += grv/5;
}