if live_call() return live_result;

//set colors
draw_set_alpha(0.6);
draw_set_color(c_black);
	
//back "button"
draw_roundrect(16,10,128,50,false);
//settings
draw_roundrect(16,70,272,228,false);

//credits
draw_set_font(fSettings);
draw_roundrect(16,240,272,538,false);	
//music
draw_roundrect(304,240,528,538,false);	

//Save Data
draw_roundrect(560,240,784,538,false);	

//the new normal
draw_set_alpha(1);	
draw_set_color(c_white);
draw_text_transformed(30,17,"Return",0.6,0.6,0);
//credtis text
draw_text_transformed(30,250,"Credits",1,1,0);
draw_text_transformed(30,290,"Programming",0.5,0.5,0);
draw_text_transformed(30,310,"Steve the Bartender",0.33,0.33,0);
draw_text_transformed(30,325,"Music",0.55,0.5,0);
draw_text_transformed(30,345,"Caramel",0.33,0.33,0);
draw_text_transformed(30,360,"Varadox (\"Factory\" Melody)",0.33,0.33,0);
draw_text_transformed(30,375,"Planning & Design",0.5,0.5,0);
draw_text_transformed(30,395,"Steve the Bartender",0.33,0.33,0);
draw_text_transformed(30,410,"Caramel",0.33,0.33,0);
draw_text_transformed(30,420,"Play Testing",0.5,0.5,0);
draw_text_transformed(30,440,"Caramel",0.33,0.33,0);
draw_text_transformed(30,455,"Special Thanks",0.5,0.5,0);
//draw_text_transformed(30,475,"rou.sr (Discord Rich Presence)",0.33,0.33,0);
draw_text_transformed(30,475,"GMLive",0.33,0.33,0);
draw_text_transformed(30,590,"rt-shell",0.33,0.33,0);
draw_text_transformed(30,520,"v" + string(GM_version),0.33,0.33,0);
draw_text_transformed(90,520,"milkquestgame@gmail.com",0.33,0.33,0);
//volume meters
draw_text_transformed(30,80,"Volume",1,1,0);
draw_text_transformed(30,120,"Music",0.5,0.5,0);
draw_text_transformed(30,160,"Sound Effects",0.5,0.5,0);
if (gameVer = browser_not_a_browser) {
	draw_text_transformed(30,203,"Fullscreen",0.5,0.5,0);
	draw_roundrect(240,205,260,225,true)
	var colors = make_color_rgb(121,161,190)
	if (window_get_fullscreen()) draw_roundrect_color(260,205,240,225,colors,colors,false)
	draw_set_alpha(0.4);
	draw_roundrect(240.5,224.5,259.5,205.5,true)
	draw_roundrect(239.5,225.5,260.5,204.5,true)
	draw_set_alpha(1);
}
draw_set_alpha(0.4);
draw_set_color(c_black)
draw_roundrect(32,140,256,150,false); //bg
draw_roundrect(32,180,256,190,false); //bg
draw_set_color(c_white)
draw_set_alpha(0.9);
draw_roundrect_color(32,140,32 + (228*global.volMus),150,c_white,c_gray,false); //actual bar
draw_roundrect_color(32,180,32 + (228*global.volSFX),190,c_white,c_gray,false); //actual
draw_set_alpha(1);

//spinny record
draw_text_transformed(314,250,"Sound Test",1,1,0);
draw_sprite_ext(sRecordSettings,0,417,392,0.9,0.9,image_angle,c_white,1);
var width = (string_width(string(songList[songId,1]))*0.33)+48
if (songId = 2 || songId = 5) width = 12312839816238791
var thesin = sin(global.globalTimer/100)*3
draw_set_halign(fa_center);
var alpha = sin(global.globalTimer/60)+1.2
draw_sprite_ext(sSettingsArrow,0,416+width/2+thesin,507,0.5,0.5,0,c_white,alpha)
draw_sprite_ext(sSettingsArrow,0,416-width/2-thesin,507,-0.5,0.5,0,c_white,alpha)
draw_text_transformed(416,500,string(songList[songId,1]),0.5,0.5,0);
draw_set_halign(fa_left);

//spinny record
draw_text_transformed(580,250,"Save Data",1,1,0);
draw_set_color(c_grey);
draw_text_transformed(580,300,"Import Save",0.5,0.5,0);
draw_text_transformed(580,320,"(Coming very soon!)",0.33,0.33,0);
draw_text_transformed(580,340,"Export Save",0.5,0.5,0);
draw_text_transformed(580,360,"(Also coming very soon!)",0.33,0.33,0);
draw_set_color(c_white);
draw_text_transformed(580,380,"Get Game Code",0.5,0.5,0);
draw_text_transformed(580,400,"Copies your code to clipboard.\nUse it in future Milk Quest games.",0.33,0.33,0);
if (gameVer == browser_firefox) draw_text_transformed_color(580,430,"(May not work on Firefox!)",0.33,0.33,0,c_red,c_red,c_red,c_red,1); //gameVer == browser_firefox
draw_text_transformed(580,480,"Wipe Save",0.5,0.5,0);
draw_text_transformed(580,500,"(Press Z and X at the same time \nto confirm. No Undoing!)",0.33,0.33,0);
//selection box
draw_set_alpha(0.5)
var off = 0
repeat 20{
	off += 0.1
	draw_roundrect(selX1+off,selY1+off,selX2-off,selY2-off,true)
	draw_set_alpha(1-off/2)
}
draw_set_alpha(1);
draw_roundrect(selX1,selY1,selX2,selY2,true)

//debug vals
//draw_text_transformed(5,5,string(cursorPos),0.33,0.33,0);