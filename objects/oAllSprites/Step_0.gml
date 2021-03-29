/// @description Insert description here
// You can write your code in this editor
if (timer > 2) {
	image_index++;
	if (image_index + 2 > sprite_get_number(sprite_index)) {
		sprite_index++;
		image_index = 0;
	}
	if (sprite_index > 150) sprite_index = 1;
	timer = 0;
}
timer++;