// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function tower_update_grass(){
	shader_set_uniform_f(shader_get_uniform(fxTowerWind, "Time"),global.globalTimer/1000);
	draw_tilemap(layer_tilemap_get_id("TilesGrass"),x,y);
}