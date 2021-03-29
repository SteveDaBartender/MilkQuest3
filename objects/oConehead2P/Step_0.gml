follow = global.character;
//gives a value of -1, 0 or 1 depending on how far away the player is.
var move = 0;
if (place_meeting(x,y+1,oWall)) 
{
	if (follow.x > x + 60) move = 1 else
	if (follow.x < x - 60) move = -1 else move = 0;
} else
{
	if (follow.x > x + 10) move = 1 else
	if (follow.x < x - 10) move = -1 else move = 0;
}
//sets the movement speed.
hsp += move * walksp;
hsp *= 0.905;
if (place_meeting(x,y+1,oWall)) && ((follow.vsp < 0) || (follow.y < y - 50))
{
	vsp =-17;
}
//horizontal collison check
if (place_meeting(x+hsp,y,oWall))
{
	while (!place_meeting(x+sign(hsp),y,oWall))
	{
		x += sign(hsp);
	}
	hsp = 0;
}
//move the character based on hsp
x += hsp;

//set gravity
vsp += grv;
//vetical collison check
if (place_meeting(x,y+vsp,oWall))
{
	while (!place_meeting(x,y+sign(vsp),oWall))
	{
		y += sign(vsp);
	}
	vsp = 0;
}
//move the character based on hsp
y += vsp;
//animation bois

if (!place_meeting(x,y+1,oWall))
{
	sprite_index = sConeBoom;
	image_angle += 7;
}
else
{
	if (round(hsp) == 0)
	{
		sprite_index = sCone;
	} else sprite_index = sCone;
	image_angle = 0;
}
//change the direction the character faces depending on input
if (hsp > 1) image_xscale = 1;
if (hsp < -1) image_xscale = -1;