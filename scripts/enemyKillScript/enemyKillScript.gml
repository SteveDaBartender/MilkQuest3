// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemyKillScript(){
	var above =  place_meeting(x,y+global.character.vsp,global.character)
	killType = kt.none
	if (place_meeting(x,y,oSpiderDust) && dustKill) killType = kt.dust;
	else if (global.character.state = states.punch && above && punchKill) killType = kt.punch;
	else if (global.character = oFezhead && global.character.roll && above && rollKill) killType = kt.roll;
	else if (global.character.state = states.kick && above && kickKill) killType = kt.kick;
	else if (global.character.state = states.stomp && above && poundKill) killType = kt.pound;
	else if (global.character.vsp > 0 && global.character.state = states.normal && above && jumpKill) killType = kt.jump;
}