//inits enemy variables
enemyInit();

//sets damage vulnerabilities
rollKill = true;
punchKill = true;
jumpKill = true;
poundKill = true;
dustKill = true;
kickKill = true;
hp = 1;
killType = false;

//allows for the rare 'drip ant'
if (irandom_range(1,1000) = 1000) sprite_index = sAntDrip;