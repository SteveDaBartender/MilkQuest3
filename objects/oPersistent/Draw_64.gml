var trans1Scaler = transitionTime/10
var bgColor = c_black;
switch transitionType {
	case 1: //milk swoop in
		if (transitionTime > 0) {
			//draw_sprite_ext(sMilkTransition,0,480,270,trans1Scaler,trans1Scaler,0,c_white,1);
			transitionTime -= 3;
		}
	//	draw_rectangle(0,0,960,270-(10*trans1Scaler),false);
		break;
	case 2: //milk swoop out
		if (transitionTime > 0) {
			//draw_sprite_ext(sMilkTransition,0,480,270,(30-transitionTime/3),(30-transitionTime/3),0,c_white,1);
			transitionTime -= 1;
		} else transitionType = false;
		break;
	default:
		//do nothing lol
		break;
}
