// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemyKillScript(){
	var player = instance_nearest(x,y,oPlayer);
	var above =  place_meeting(x,y+player.vsp,player)
	killType = kt.none
	if (place_meeting(x,y,oSpiderDust) && dustKill) killType = kt.dust;
	else if (player.state = states.punch && above && punchKill) killType = kt.punch;
	else if (/*player = oFezhead*/ player.roll && above && rollKill) || (player.state = states.driving && above && round(player.hsp) > 5) killType = kt.roll;
	else if (player.state = states.tornado && above && kickKill) killType = kt.kick;
	else if (player.state = states.stomp && above && poundKill) killType = kt.pound;
	else if (player.vsp > 0 && player.state = states.normal && above && jumpKill) killType = kt.jump;
}