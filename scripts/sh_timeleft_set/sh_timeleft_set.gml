function sh_timeleft_set (args) {
	if (args[1] != "") {
	oPlayer.timeleft = round(clamp(args[1],0,9999))
	return "Set internal time to " + string(oPlayer.timeleft) + ".";
	} else return "Current seconds passed is " + string(oPlayer.timeleft)
}
