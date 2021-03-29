/// @description create particles while walking.
///@param rm
///@param object
function walkParticle(argument0, argument1) {
	var particleSprite = sGrassParticle;
	if (irandom_range(0,50) = 30) {
		switch(argument0){
/*			case rFezTutorial:
				particleSprite = sGrassParticle;
				break;
			case rFezTutorial2:	
				particleSprite = sGrassParticle;
				break;
			case rConeTutorial:	
				particleSprite = sGrassParticle;
				break;
			case rKidTutorial:	
				particleSprite = sGrassParticle;
				break; */
			case rFactoryEntrance:	
				particleSprite = sBrickParticle;
				break;
			case rFactoryFez1:	
				particleSprite = sBrickParticle;
				break;
			case rChristmasHub:	
				particleSprite = sBrickParticle;
				break;
			case rChristmasLevel1:	
				particleSprite = sBrickParticle;
				break;
			default:
				particleSprite = sGrassParticle;
				break;
		}
		particle(particleSprite,argument1.x,argument1.y,0.1,1,argument1.hsp * random_range(0.1,0.5) ,random_range(-3,-7));
	}
}
