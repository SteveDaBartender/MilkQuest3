//if touch player hurt him ::) its really that simple
//also touching spikes increases the hit timer to ~2x
if (oWall.bob) draw_rectangle_colour(bbox_left,bbox_top,bbox_right,bbox_bottom,c_red,c_red,c_red,c_red,false);

if (place_meeting(x,y,global.character)){
	damage_character()
}