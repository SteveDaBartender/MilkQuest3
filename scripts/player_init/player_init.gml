function player_init() {
	hsp = 0; // horizontal movement
	acl = 0; // acceleration (only added on from like bunmpers)
	vsp = 0; // vertical movement
	grv = 0.6; // gravity
	walksp = 2; //walk speed
	frict = 1;
	roll = false; // 'roll' , or basically a attacking state for the player.
	punch = false //if the player is punching or using a hand bsed attack.
	lock = false; //if this is true, no player code will run.
	cheat = false; //enables cheats relative to the player.
	hp = 3;//player health
	angle = 0;// ??? we dont use angles lmao
	invincibleTimer = 50; //timer that dictates player invincible frames
	key_space_press = 0;
	idleTimer = 0; //timer that dictates the player's idle animations.
	cpOverride = false; //this doesnt sound too good...
	key_ddown = false;
	key_up = false; //if up key is pressed
	key_debug = false; //if debug key is pressed

	jumpExtendable = false; //decides if you're able to hold Z to jump higher.
	lastVsp = 0; //used to aid tricky collision scenarios.
	lastHsp = 0; //also used to aid tricky collision scenarios.
	drownTimer = 0; //REPOST THIS IN 30 SECONDS OR YOU WILL NEVER BE ABLE TO PLAY COLTRANE CHANGES AGAIN!
	enum states {  //dictates the list of possible states for characters.
		normal,
		hooked,
		down,
		driving,
		fishing,
		punch,
		kick,
		stomp,
		bubblegum,
		tornado,
		burn,
		squish
    }
	state = states.normal; //sets default state to 'normal'
	if (global.spawnConehead) { //spawns a 2P conehead. Needs updating.
		instance_create_layer(x,y-32,"Object",oConehead2P)
	}

	if (global.spawnX != false && !cpOverride) {
		x = global.spawnX;
		y = global.spawnY;
	}
	
	averageHsp = ds_list_create();
	 repeat (13) {
		ds_list_add(averageHsp, 0);	 
	 }
}
