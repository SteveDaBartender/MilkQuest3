/// @description Insert description here
// You can write your code in this editor
if (paused) {
	draw_set_color(c_black);
	draw_set_alpha(clamp(pauseTimer/20,0,.7))
	draw_rectangle(0,0,1000,1000,false)
	draw_set_color(c_white);
	draw_set_alpha(1);
	
	draw_sprite(sPauseBG,0,300,160)
	
	draw_set_font(fSettings)
	draw_text_ext(355,195,"Return to Game",0,2000)
	//draw_text_ext(350,250,"Restart",0,2000)
	draw_text_ext(355,265,"Main Menu",0,2000)
	
	draw_sprite(sFezSelecter,-1,320,200+(cursorPos*70))
}