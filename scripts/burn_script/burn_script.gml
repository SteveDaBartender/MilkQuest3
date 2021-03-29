// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function burn_script(){
	roll = false;
	hsp += move * walksp;
	hsp *= 0.80
	vsp += grv;
	if (place_meeting(x,y+1,oCollide) || (position_meeting(x,y+5,o1Way) && vsp > 0)) {
		state = states.normal;
		y -= 3;
	}
}