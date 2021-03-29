/// @description create a particle lol
///@param sprite
///@param x
///@param y
///@param fade
///@param gravity
///@param xv
///@param yv
function particle(argument0, argument1, argument2, argument3, argument4, argument5, argument6) {
		var this = instance_create_layer(argument1, argument2,"Object",oParticle);
		this.sprite_index = argument0;
		this.fade = argument3;
		this.grav = argument4
		if (argument5 != 0) {
			this.xv = argument5;
		}
			this.yv = argument6;


}
