// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_gui(){
	draw_set_font(fHUD);
	//adds the current velocity to a list, then calculate the average velocity (for use in the speed bar)

	
	ds_list_add(averageHsp, hsp);
	var speedBarVar = 0;
	var step = 0;
	for (i = 0; i < ds_list_size(averageHsp); i += 1) {
		speedBarVar += abs(ds_list_find_value(averageHsp, step));
		step++;
	}
	speedBarVar = speedBarVar / ds_list_size(averageHsp);
	
	if (!global.debug) {
		//draw character's head
		switch (global.character) {
			case oFezhead:
				draw_sprite(sFezLives, hp-1, 55, 5);
				break;
			case oKidhead:
				draw_sprite(sKidLives, hp-1, 75, 5);
				break;
			case oConehead:
				draw_sprite(sConeLives, hp-1, 75, -55);
				break;
		}
		//draw the health dots and the BG on the HUD
		draw_rectangle_color(24,107,55,121,c_black,c_black,c_grey,c_grey,0);
		if (hp >0) draw_rectangle_color(24,107,35,121,c_red,c_red,c_red,c_red,0);
		if (hp >1) draw_rectangle_color(34,107,45,121,c_orange,c_orange,c_orange,c_orange,0);
		if (hp >2) draw_rectangle_color(44,107,55,121,c_green,c_green,c_green,c_green,0);
		
		//draw speedbar
		draw_rectangle_color(110,107,200,121,c_black,c_black,c_grey,c_grey,0);
		draw_rectangle_color(110,107,110 + clamp((abs(speedBarVar)/15) * 100,0,100),121,c_green,c_green,c_green,c_green,0);
		
		/* draw milk inside glass
		var milkHeight = 180 * (global.milk/150)
		draw_rectangle_color(650,205,700,205-milkHeight,c_white,c_white,c_white,c_white,0.9);
		
		this will be added in the future, i need to learn how to draw primatives n shit
		it also requires the total milks of a level (which i dont have :*( )
		*/
		
		//draw UI sprites
		draw_sprite(sSpeedmeter,0,5,105);
		draw_sprite(sMilkGUI,0,650,25);
		draw_sprite(sTimer,0,735,55);
		
		//shows collected big milks. grayed out as of now.
		draw_sprite_ext(s1Milk,0,750,9,1,1,0,c_black,1);
		draw_sprite_ext(s1Milk,0,800,9,1,1,0,c_black,1);
		draw_sprite_ext(s1Milk,0,850,9,1,1,0,c_black,1);
		//draws text above milk glass 
		draw_set_halign(fa_center);
		draw_text_transformed_color(685,67,string(global.milk),0.73,0.73,0,c_black,c_black,c_black,c_black,1);
		draw_text_transformed(685,65,string(global.milk),0.7,0.7,0);
		draw_set_halign(fa_left);
		
		//draws clock's hand
		var secondHand = (global.levelTimer mod 60) * -6;
		draw_set_color(c_black);
		draw_line_width(758, 123, 758 - (17 * dcos(secondHand - 90)), 123 + (17 * dsin(secondHand - 90)), 3);
		draw_set_color(c_white);
		
		//draw air meter
		if (drownTimer > 0) draw_text_transformed(700,180,"Air:" + string(2600 - drownTimer), 0.7,0.7, 0);
	}
	//delete last entry in the velocity to keep the list in check
	ds_list_delete(averageHsp, 0);
	
	
	
	
	//input display drawer (will likely be disabled in the final)
	var inputHeight = 535;
	getInput();
	if (key_up) draw_sprite_ext(sInputArrow,0,8,inputHeight,1,1,0,c_white,1);
	if (key_left) draw_sprite_ext(sInputArrow,0,16,inputHeight,1,1,90,c_white,1);
	if (key_right) draw_sprite_ext(sInputArrow,0,24,inputHeight,1,1,270,c_white,1);
	if (key_ddown) draw_sprite_ext(sInputArrow,0,32,inputHeight,1,1,180,c_white,1);
	if (key_space) draw_sprite_ext(sInputZ,0,40,inputHeight,1,1,0,c_white,1);
	if (key_down_hold) draw_sprite_ext(sInputX,0,48,inputHeight,1,1,0,c_white,1);
}