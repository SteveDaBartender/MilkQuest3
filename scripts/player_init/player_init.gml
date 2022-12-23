function player_init() {
	npc = 0; //determines if charcter is contrlled by AI
	
	hsp = 0; // horizontal movement
	acl = 0; // acceleration (only added on from like bunmpers)
	vsp = 0; // vertical movement
	grv = 0.6; // gravity
	walksp = 2; //walk speed
	frict = 1; //firction, obviously!!! (is this even used)?
	roll = false; // 'roll' , or basically a attacking state for the player. 
	//This value is also used to see if a player can use either tornado kick or the double jump
	punch = false //if kid is punching.
	lock = false; //if this is true, no player code will run.
	hp = 3;//player health
	angle = 0;// ??? we dont use angles lmao why is this here
	invincibleTimer = 50; //timer that dictates player invincible frames
	key_space_press = 0;
	idleTimer = 0; //timer that dictates the player's idle animations.
	cpOverride = false; //this doesnt sound too good...
	key_ddown = false;
	key_up = false; //if up key is pressed (WHY IS THIS HERE?)
	key_debug = false; //if debug key is pressed
	smashing = false; //if character was just shot out of a cannon, used for smashing breakable walls.
	tornadoTimer = 0; //used to help end the tornado kick, as HTML5 causes it to never stop.
	slopeacl = 0;
	crouch = 0;

	jumpExtendable = false; //decides if you're able to hold Z to jump higher.
	lastVsp = 0; //used to aid tricky collision scenarios.
	lastHsp = 0; //also used to aid tricky collision scenarios.
	drownTimer = 0; //REPOST THIS IN 30 SECONDS OR YOU WILL NEVER BE ABLE TO PLAY COLTRANE CHANGES AGAIN!
	
	enum states {  //dictates the list of possible states for characters.
		normal, //run & jump like default
		hooked, //used for vines in tower (and hooks in last)
		down, //used for tutorial cutscenes
		driving, //hubworld transport vehicle
		fishing, //used in fishing ponds when x is pressed
		punch, //kid's punch
		//kick, will be removed soon, a duplicate of tornado
		stomp, //conehead's stomp
		bubblegum, //riding bubblegum
		tornado, //fez's tornado kick
		burn, //cryogenic milk burns in factory2
		squish //unused, might be used for crushers in the future
    }
	state = states.normal; //sets default state to 'normal'
	if (global.spawnConehead) { //spawns a 2P conehead. Needs updating.
		instance_create_layer(x,y-32,"Object",oConehead2P)
	}

	if (global.spawnX != false && room != rChristmasHub && !cpOverride) {
		x = global.spawnX;
		y = global.spawnY;
	}
	
	//create a list of average xvel for the HUD
	averageHsp = ds_list_create();
	 repeat (13) {
		ds_list_add(averageHsp, 0);	 
	 }
	 
	 controlLock = false;
	 getInput();
}
