if live_call() return live_result;



var xOffset = 0;
if (isChild) xOffset += 240 + camera_get_view_x(oCamera.cam)
draw_set_halign(fa_left)

function draw_controller_button(buttonID,x,y) {
	var text = "";
	switch (buttonID) {
		case gp_select: draw_sprite_ext(sButtonSprites,15,x,y,2,2,0,c_white,1);break;
		case gp_start: draw_sprite_ext(sButtonSprites,14,x,y,2,2,0,c_white,1);break;
		case gp_stickl: draw_sprite_ext(sButtonSprites,16,x,y,2,2,0,c_white,1);break;
		case gp_stickr: draw_sprite_ext(sButtonSprites,17,x,y,2,2,0,c_white,1);break;
		case gp_shoulderl: draw_sprite_ext(sButtonSprites,12,x,y,2,2,0,c_white,1);break;
		case gp_shoulderr: draw_sprite_ext(sButtonSprites,13,x,y,2,2,0,c_white,1);break;
		case gp_shoulderlb: draw_sprite_ext(sButtonSprites,10,x,y,2,2,0,c_white,1);break;
		case gp_shoulderrb: draw_sprite_ext(sButtonSprites,11,x,y,2,2,0,c_white,1);break;
		
		case gp_face1: draw_sprite_ext(sButtonSprites,3,x,y,2,2,0,c_white,1);break;
		case gp_face2: draw_sprite_ext(sButtonSprites,4,x,y,2,2,0,c_white,1);break;
		case gp_face3: draw_sprite_ext(sButtonSprites,2,x,y,2,2,0,c_white,1);break;
		case gp_face4: draw_sprite_ext(sButtonSprites,6,x,y,2,2,0,c_white,1);break;
		
		case gp_padl: draw_sprite_ext(sButtonSprites,9,x,y,2,2,0,c_white,1);break;
		case gp_padr: draw_sprite_ext(sButtonSprites,7,x,y,2,2,0,c_white,1);break;
		case gp_padu: draw_sprite_ext(sButtonSprites,6,x,y,2,2,0,c_white,1);break;
		case gp_padd: draw_sprite_ext(sButtonSprites,8,x,y,2,2,0,c_white,1);break;
	}
	draw_text_transformed(x,y,text,0.5,0.5,0)
}
function getKeyNameKeyboard(keyNumber) {
	var value = global.controlStruct.controlsKeyboard[keyNumber]
	/*
	switch (value) {
		case vk_left: value = "Left";break;
		case vk_right: value = "Right";break;
		case vk_up: value = "Up";break;
		case vk_down: value = "Down";break;
		case vk_enter: value = "Enter";break;
		case vk_space: value = "Space";break;
		case vk_tab: value = "Tab";break;
		case vk_home: value = "Home";break;
		case vk_end: value = "End";break;
		case vk_insert: value = "Insert";break;
		case vk_backspace: value = "Backspace";break;
		case vk_alt: value = "Alt";break;
		case vk_shift: value = "Shift";break;
		case vk_lshift: value = "Left Shift";break;
		case vk_rshift: value = "Right Shift";break;
		case vk_delete: value = "Delete";break;
		case vk_lcontrol: value = "L. Control";break;
		case vk_rcontrol: value = "R. Control";break;
		case 192: value = "`";break;
		case 20: value = "Caps Lock";break;
		default: value = chr(value);break;
	}
	*/
	value = virtualKeyCodes[round(value)]
	if keyboard_check(vk_insert) && keyboard_check(vk_delete) value += " "+ string(global.controlStruct.controlsKeyboard[keyNumber]);
	return value;
}
//background
draw_set_alpha(0.5)
if (!isChild) draw_rectangle_color(0,0,2000,2000,c_black,c_black,c_black,c_black,false);
draw_set_alpha(1)
//background boxes
draw_set_alpha(0.6);
draw_set_color(c_black);
//back "button"
draw_roundrect(30,25,570,530,false);
draw_roundrect(590,400,930,530,false);
draw_set_alpha(1);
draw_set_color(c_white);
//draw_sprite_stretched(sMenuOptionsBox,0,xOffset+40,yOffset+30,315,330)

//draw the text onto da screen
//draw_set_font(global.fontMenu)
gpu_set_texfilter(true)
if (!isChild) {
	//draw_sprite_stretched(sMenuOptionsBox,0,xOffset+370,yOffset+260,260,100)
	draw_text_transformed(xOffset+605,yOffset+410,"[Z]/(A): Change Key",.75,.75,0)
	draw_text_transformed(xOffset+605,yOffset+450,"[X]/(B): Reset Key",.75,.75,0)
	draw_text_transformed(xOffset+605,yOffset+490,"Hold F9: Reset All Keys",.75,.75,0)
}

draw_set_font(fSettings)

draw_text_transformed(xOffset+150,yOffset+30,"Keyboard",0.75,0.75,0)
draw_text_transformed(xOffset+420,yOffset+30,"Controller",0.75,0.75,0)
for (var i=0;i<7;i++;) {
	draw_text_transformed(xOffset+50,yOffset+70+(i*45),keyData[i].keyName,1,1,0)
	draw_text_transformed(xOffset+185,yOffset+71+(i*45),getKeyNameKeyboard(keyData[i].keyID),1,1,0)
	gpu_set_texfilter(false)
	draw_controller_button(global.controlStruct.controlsController[keyData[i].keyID],xOffset+460,yOffset+71+(i*45))
	gpu_set_texfilter(true)
}
draw_text_transformed(xOffset+50,yOffset+382,"Enable Stick",1,1,0)
draw_text_transformed(xOffset+50,yOffset+429,"Stick Threshold",1,1,0)
draw_text_transformed(xOffset+50,yOffset+469,"Return to Options",1,1,0)
gpu_set_texfilter(false)

if (cursorPos != 0 && !isChild) draw_sprite(sFezSelecter,0,xOffset+3,yOffset+20+(cursorPos*45))
//buttonz
/*
draw_option_button(global.controlStruct.tapCrouch,xOffset+260,yOffset+276)
draw_option_button(global.controlStruct.tapItem,xOffset+260,yOffset+294)
draw_option_button(global.controlStruct.stickEnable,xOffset+260,yOffset+312)
*/
//back
//if (!isChild) draw_sprite(sMenuBack,(cursorPos!=0),0,0)

if (searchingForInput) {
	draw_set_alpha(0.7)
	draw_rectangle_color(0,0,2000,2000,c_black,c_black,c_black,c_black,false);
	draw_set_alpha(1)
	draw_text_transformed(260,230,"Press a key!",2,2,0)
}
//threshod setting i stole from 1+2
draw_set_alpha(0.4);
draw_set_color(c_black)
draw_roundrect(xOffset+410,yOffset+444,xOffset+550,yOffset+464,false); //bg
draw_set_color(c_white)
draw_set_alpha(0.9);
draw_roundrect_color(xOffset+410,yOffset+444,xOffset+410 + (140*global.controlStruct.stickThreshold),yOffset+464,c_white,c_gray,false); //actual bar
draw_set_alpha(1);

//stick button
	draw_option_button(global.controlStruct.stickEnable,464,390)

var gamepadDebugNum = 0;
if (debugInfo) {
	draw_text_transformed(340,8,string(global.controlStruct.stickThreshold),0.25,0.25,0)
	draw_text_transformed(340,28,string(gamepad_axis_value(gamepadDebugNum,gp_axislh)),0.25,0.25,0)
	draw_text_transformed(340,48,string(gamepad_axis_value(gamepadDebugNum,gp_axislv)),0.25,0.25,0)
	
	draw_text_transformed(340,68,string(gamepad_axis_value(gamepadDebugNum,gp_axislh)>global.controlStruct.stickThreshold),0.25,0.25,0)
	draw_text_transformed(340,88,string(gamepad_axis_value(gamepadDebugNum,gp_axislv)>global.controlStruct.stickThreshold),0.25,0.25,0)
	draw_text_transformed(340,108,string(gamepad_axis_value(gamepadDebugNum,gp_axislh)<-global.controlStruct.stickThreshold),0.25,0.25,0)
	draw_text_transformed(340,128,string(gamepad_axis_value(gamepadDebugNum,gp_axislv)<-global.controlStruct.stickThreshold),0.25,0.25,0)

	draw_text(5,5,string(cursorPos))
	draw_text_ext(5,60,string(global.controlStruct),40,900)
}

draw_sprite(sControlMenuFezhead,0,600,80);