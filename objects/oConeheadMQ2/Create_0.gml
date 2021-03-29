player_init();
walksp = 0.6;
grv = 0.75;
 if (room = rFutureSpaceMQ2) {
	vsp = -20;
	hsp = 10;
	acl = 5;
	layer_background_sprite(layer_background_get_id(layer_get_id("MQ2BG")),sFutureSpaceBgMQ2Cone);  
 }
  if (room = rCuriousCarnivalMQ2) {
	layer_background_sprite(layer_background_get_id(layer_get_id("MQ2BG")),sCarnivalBgMQ2Cone); 
  }