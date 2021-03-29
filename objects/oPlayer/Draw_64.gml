/// @description Insert description here
// You can write your code in this editor 
clockcolour1 = c_white
clockcolour2 = c_white
clockscale = 0.7;
if (string_length(round(seconds)) = 1) carryZero = "0";
else carryZero = "";
if (room != rFishing || !layer_exists("MQ2BG")) {
	draw_text_ext_transformed_colour(790,99, string(displaymins) + ":" + carryZero + string(displaysecs), 5, 500, clockscale, clockscale, 0, clockcolour1, clockcolour1, clockcolour2, clockcolour2, 1);
}