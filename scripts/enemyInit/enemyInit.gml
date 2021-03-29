// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemyInit(){
	enum kt {  //what type of damage (or non) a enemy is getting. used to encour special cases for enemy deaths (i.e. bouncing when jumping)
		none,
		roll,
		kick,
		punch,
		jump,
		pound,
		dust
    }
	//variables determining what an enemy can die to.
	rollKill = true;
	kickKill = true;
	punchKill = true;
	jumpKill = true;
	poundKill = true;
	dustKill = true;
	hp = 1;
	killType = kt.none;
	
	hitTimer = 25;
}