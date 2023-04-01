// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemyKillScript(){
	var player = instance_nearest(x,y,oPlayer);
	var above =  place_meeting(x,y+player.vsp,player)
	killType = kt.none
	if (player.roll && above && rollKill) killType = kt.roll;
	else if (player.vsp > 0 && player.state = states.normal && above && jumpKill) killType = kt.jump;
	else if (player.state = states.punch && above && punchKill) killType = kt.punch;
	else if (player.state = states.tornado && above && kickKill) killType = kt.kick;
	else if (player.state = states.stomp && above && poundKill) killType = kt.pound;
	else if (place_meeting(x,y,oSpiderDust) && dustKill) killType = kt.dust;
}