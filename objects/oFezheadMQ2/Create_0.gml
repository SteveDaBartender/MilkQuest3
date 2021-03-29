player_init();
walksp = 2;
grv = 0.59;
 if (room = rFutureSpaceMQ2) {
	vsp = -20;
	hsp = 10;
	acl = 5;
 }
 if (layer_exists("ConeheadTileset")) layer_tilemap_destroy(layer_tilemap_get_id(layer_get_id("ConeheadTileset")))
