// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function reset_falling_platforms(){
	if (instance_exists(oFallingPlat)){
		oFallingPlat.respawn = true;
	}
}