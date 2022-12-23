/// @description Insert description here
// You can write your code in this editor

//default enemy code here :)
enemyInit();
rollKill = true;
punchKill = false;
kickKill = false;
jumpKill = false;
poundKill = true;
dustKill = false;
hp = 2;
killType = kt.none;

//mode defines how the mecken moves it's line of sight
mode = "circle"
//how long before each snowball
snowballCooldown = 40;
//the starting point at which the eye's line will be drawn
eyeY = y + 30;
eyeX = x - 14;
//end of the mecken's vision
patrolX = x;
patrolY = y;
//how far the mechen can see
r = 5000;
//posiiton in eye movement
theta = 0;
//how fast it can move the line of sight
theta_speed = 2;
//max theta
vmax = 360;
//??? 
timer = 0;
//decides if the line should be drawn
line = true;