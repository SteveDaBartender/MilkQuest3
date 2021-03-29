// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function stomp_script(){
	move = 0;
	if (roll = 0) vsp = 7;
	roll = 1;
	vsp += 1;
	if (place_meeting(x,y,oWater)) vsp += 1.2;
	if (vsp < 0 || place_meeting(x,y+vsp,oCollide) || position_meeting(x-32,y+1,o1Way) || position_meeting(x+32,y+1,o1Way)) {
		vsp *= -0.3;
		state = states.normal;
		roll = 0;
		instance_create_layer(x+32,y-32,self.layer,oSpiderDust);
		second = instance_create_layer(x-32,y-32,self.layer,oSpiderDust);
		second.image_xscale = -1;
		audio_play_sound(sBreak,1,0);
		for (i = 0; i < 15; i += 1) {
			particle(sParticleSmoke,x,y,3,irandom_range(2,3),irandom_range(-1,1),irandom_range(-7,-10));
		}
	}
	hsp = 0;
}