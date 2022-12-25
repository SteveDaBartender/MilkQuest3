/// @description create particles while walking.
///@param rm
///@param object

//ugly rn, will look better once i get around to tagging room IDS

//simply checks what room is input and then creates a particle based on that.
function walkParticle(argument0, argument1) {
	var particleSprite = sGrassParticle;
	if (irandom_range(0,50) = 30) {
		//again, another switch with like 2 elements ...
		switch(argument0){
			case rHub:	
				particleSprite = sGrassParticle;
				break;
			default:
				particleSprite = sBrickParticle;
				break;
		}
		particle(particleSprite,argument1.x,argument1.y,0.1,1,argument1.hsp * random_range(0.1,0.5) ,random_range(-3,-7));
	}
}
